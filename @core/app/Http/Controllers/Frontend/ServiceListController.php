<?php

namespace App\Http\Controllers\Frontend;

use App\Helpers\ModuleMetaData;
use App\Http\Controllers\Controller;
use App\OnlineServiceFaq;
use App\SupportTicket;
use App\Tax;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Serviceinclude;
use App\Serviceadditional;
use App\Servicebenifit;
use App\Service;
use App\Country;
use App\Day;
use App\Order;
use App\OrderAdditional;
use App\Category;
use App\Helpers\FlashMsg;
use App\Subcategory;
use App\OrderInclude;
use App\Schedule;
use App\ServiceCity;
use App\ServiceArea;
use DB;
use Auth;
use App\Mail\OrderMail;
use App\Review;
use App\User;
use Illuminate\Support\Facades\Mail;
use App\Notifications\OrderNotification;
use App\ServiceCoupon;
use App\AdminCommission;
use Modules\AzulPaymentGateway\Http\Helpers\AzulPaymentHelper;
use Modules\Wallet\Entities\Wallet;
use Xgenious\Paymentgateway\Facades\XgPaymentGateway;
use Str;


class ServiceListController extends Controller
{

    private const CANCEL_ROUTE = 'frontend.order.payment.cancel.static';
    private const SUCCESS_ROUTE = 'frontend.order.payment.success';

    protected function cancel_page(){
        return redirect()->route('frontend.order.payment.cancel.static');
    }
    public function order_payment_cancel_static()
    {
        return view('frontend.payment.payment-cancel-static');
    }
    public function order_payment_success($id)
    {
        $order_details = Order::find(substr($id,30,-30));
        return view('frontend.payment.payment-success')->with(['order_details' => $order_details]);
    }


    public function serviceDetails($slug)
    {
        $service_details = Service::with('seller')->where('slug', $slug)->firstOrFail();
        $service_includes = ServiceInclude::where('service_id', $service_details->id)->get();
        $service_additionals = ServiceAdditional::where('service_id', $service_details->id)->get();
        $service_benifits = Servicebenifit::where('service_id', $service_details->id)->get();

        $another_service = Service::with('reviews')->where(['seller_id' => $service_details->seller_id, 'status' => 1, 'is_service_on' => 1])->inRandomOrder()->take(2)->get()->except($service_details->id);

        //if buyer buy a service only add review on that particular service
        if (Auth::guard('web')->check()) {
            $buyer_order_services = Order::select('service_id', 'buyer_id')->where('buyer_id', Auth::guard('web')->user()->id)->get();
        } else {
            $buyer_order_services = '';
        }

        $service_reviews = Review::where('service_id', $service_details->id)->get();
        $completed_order = Order::where('seller_id', $service_details->seller_id)->where('status', 2)->count();
        $cancelled_order = Order::where('seller_id', $service_details->seller_id)->where('status', 4)->count();
        $seller_since = User::select('created_at')->where('id', $service_details->seller_id)->where('user_status', 1)->first();

        $order_completion_rate = 0;
        if ($completed_order > 0 || $cancelled_order > 0) {
            $order_completion_rate = $completed_order / ($completed_order + $cancelled_order) * 100;
        }

        $seller_rating = Review::where('seller_id', $service_details->seller_id)->avg('rating');
        $seller_rating_percentage_value = $seller_rating * 20;

        $service_rating = Review::where('service_id', $service_details->id)->avg('rating');

        $service_view = Service::select('view')->where('id', $service_details->id)->first();
        $view_count = $service_view->view + 1;
        Service::where('id', $service_details->id)->update([
            'view' => $view_count,
        ]);

        $images = Service::select('image_gallery')->where('id', $service_details->id)->first();

        return view(
            'frontend.pages.services.service-details',
            compact(
                'service_details',
                'service_includes',
                'service_additionals',
                'service_benifits',
                'another_service',
                'buyer_order_services',
                'service_reviews',
                'completed_order',
                'seller_since',
                'order_completion_rate',
                'service_rating',
                'seller_rating_percentage_value',
                'images'
            )
        );
    }

    public function serviceBook($slug)
    {
        $service_details_for_book = Service::where(['slug' => $slug, 'status' => 1, 'is_service_on' => 1])->firstOrFail();
        $days_count = Day::select('total_day')->where('seller_id',$service_details_for_book->seller_id)->first();
        $days_count = optional($days_count)->total_day;

        $service_city_id = $service_details_for_book->service_city_id;
        $service_country_id = ServiceCity::select('country_id')->where('id',$service_city_id)->first();

        $country = null;
        if(!is_null($service_country_id)){
            $country = Country::select('id','country')->where('id',$service_country_id->country_id)->where('status', 1)->first();
        }

        $city = ServiceCity::select('id','service_city')->where('id',$service_city_id)->where('status', 1)->first();
        $areas = ServiceArea::select('id','service_area')->where('service_city_id',$service_city_id)->where('status', 1)->get();

        $service_includes = ServiceInclude::where('service_id', $service_details_for_book->id)->get();
        $service_additionals = ServiceAdditional::where('service_id', $service_details_for_book->id)->get();
        $service_benifits = Servicebenifit::where('service_id', $service_details_for_book->id)->get();
        $service_faqs = OnlineServiceFaq::select('title','description')->where('service_id', $service_details_for_book->id)->get();

        return view('frontend.pages.services.service-book', compact(
            'country',
            'city',
            'areas',
            'service_details_for_book',
            'service_includes',
            'service_additionals',
            'service_benifits',
            'service_faqs',
            'days_count'
        ));
    }

    //get area by city
    public function serviceBookGetCity(Request $request)
    {
        $cities = ServiceCity::where('country_id', $request->country_id)->where('status', 1)->get();
        return response()->json([
            'status' => 'success',
            'cities' => $cities,
        ]);
    }

    //get area by city
    public function serviceBookGetArea(Request $request)
    {
        $areas = ServiceArea::where('service_city_id', $request->city_id)->where('status', 1)->get();
        return response()->json([
            'status' => 'success',
            'areas' => $areas,
        ]);
    }

    //get schedule by seller
    public function scheduleByDay(Request $request)
    {
        if ($request->ajax()) {
            //todo
            $date_string = Carbon::parse($request->date_string)->format('D');
            $day = Day::select('id', 'day')
                ->where('day', $date_string)
                ->where('seller_id', $request->seller_id)
                ->first();

            if (!is_null($day)) {
                $schedules = [];
                $same_schedule_allow_or_not = Schedule::select('seller_id','allow_multiple_schedule')->where('seller_id', $request->seller_id)->first();

                if($same_schedule_allow_or_not->allow_multiple_schedule == 'no'){
                    // get schedules
                    $date_string_year_month_day = Carbon::parse($request->date_string)->format('D F d Y');
                    $order_date = Order::select('id','date','seller_id')
                        ->where('seller_id',$request->seller_id)
                        ->where('date',$date_string_year_month_day)
                        ->first();

                    if($order_date){
                        $schedules = Order::select('schedule')
                            ->where('date',$order_date->date)
                            ->get()->pluck("schedule")->toArray();

                        $schedules = Schedule::select('schedule')
                            ->where('seller_id', $request->seller_id)
                            ->whereNotIn("schedule", $schedules)
                            ->where('day_id', $day->id)
                            ->get();
                    }else{
                        $schedules = Schedule::select('schedule')
                            ->where('seller_id', $request->seller_id)
                            ->where('day_id', $day->id)
                            ->get();
                    }
                }else{
                    $schedules = Schedule::select('schedule')
                        ->where('seller_id', $request->seller_id)
                        ->where('day_id', $day->id)
                        ->get();
                }

                if(optional($schedules)->count() >= 1){
                    return response()->json([
                        'status' => 'success',
                        'schedules' => $schedules,
                        'day' => $day,
                    ]);
                }
                return response()->json([
                    'status' => 'no schedule',
                ]);
            }
            return response()->json([
                'status' => 'no schedule',
            ]);
        }
    }

    public function couponApply(Request $request)
    {
        if(empty($request->coupon_code)){
            return response()->json([
                'status' => 'emptycoupon',
                'msg' => __('Please Enter Your Coupon Code'),
            ]);
        }


        $coupon_code = ServiceCoupon::where('code',$request->coupon_code)->first();
        $current_date = date('Y-m-d');


        if(!empty($coupon_code)){

            if($coupon_code->seller_id != $request->seller_id){
                return response()->json([
                    'status' => 'notapplicable',
                    'msg' => __('Coupon is not Applicable for this Service'),
                ]);
            }

            if($coupon_code->code == $request->coupon_code && $coupon_code->expire_date > $current_date){

                if($coupon_code->discount_type == 'percentage'){
                    $coupon_amount = ($request->total_amount * $coupon_code->discount)/100;
                    return response()->json([
                        'status' => 'success',
                        'coupon_amount' => $coupon_amount,
                    ]);
                }else{
                    $coupon_amount = $coupon_code->discount;
                    return response()->json([
                        'status' => 'success',
                        'coupon_amount' => $coupon_amount,
                    ]);
                }
            }

            if($coupon_code->expire_date < $current_date ){
                return response()->json([
                    'status' => 'expired',
                    'msg' => __('Coupon is Expired'),
                ]);
            }

        }else{
            return response()->json([
                'status' => 'invalid',
                'msg' => __('Coupon is Invalid'),
            ]);
        }

    }

    public function createOrder(Request $request)
    {
        if($request->is_service_online_ != 1){
            $request->validate([
                'name' => 'required|max:191',
                'email' => 'required|max:191',
                'phone' => 'required|max:191',
                'address' => 'required|max:191',
                'choose_service_city' => 'required',
                'choose_service_area' => 'required',
                'choose_service_country' => 'required',
                'date' => 'required|max:191',
                'order_note' => 'nullable|max:191',
                'schedule' => 'required|max:191',
                'services' => 'required|array',
                'services.*.id' => 'required|exists:serviceincludes',
                'services.*.quantity' => 'required|numeric',
            ]);
        }
        $commission = AdminCommission::first();

        if($request->selected_payment_gateway=='cash_on_delivery' || $request->selected_payment_gateway == 'manual_payment'){
            $payment_status='pending';
        }else{
            $payment_status='';
        }


        if (empty($request->seller_id)){
            \Toastr::error(__('Seller Id missing, please try another another seller services'));
            return back();
        }
        if ($request->seller_id == Auth::guard('web')->id()){
            \Toastr::error(__('You can not book your own service'));
            return back();
        }

        if (Auth::guard('web')->check() && Auth::guard('web')->user()->type === 0){
            \Toastr::error(__('seller are not allowed to place service order'));
            return back();
        }

        if($request->selected_payment_gateway === 'manual_payment') {
            $this->validate($request,[
                'manual_payment_image' => 'required|mimes:jpg,jpeg,png,pdf'
            ]);
        }

        $order_create='';
        if($request->is_service_online_ != 1 && Auth::guard('web')->check() && Auth::guard('web')->user()->user_type == 1){
            Order::create([
                'service_id' => $request->service_id,
                'seller_id' => $request->seller_id,
                'buyer_id' => Auth::guard('web')->check() ? Auth::guard('web')->user()->id : NULL,
                'name' => $request->name,
                'email' => $request->email,
                'phone' => $request->phone,
                'post_code' => $request->post_code ?? 0000,
                'address' => $request->address,
                'city' => $request->choose_service_city,
                'area' => $request->choose_service_area,
                'country' => $request->choose_service_country,
                'date' => \Carbon\Carbon::parse($request->date)->format('D F d Y'),
                'schedule' => $request->schedule,
                'package_fee' => 0,
                'extra_service' => 0,
                'sub_total' => 0,
                'tax' => 0,
                'total' => 0,
                'commission_type' => $commission->commission_charge_type,
                'commission_charge' => $commission->commission_charge,
                'status' => 0,
                'order_note' => $request->order_note,
                'payment_gateway' => $request->selected_payment_gateway,
                'payment_status' => $payment_status,
            ]);
        }else{
            if(Auth::guard('web')->check() && Auth::guard('web')->user()->user_type == 1 ){
                $order_create = Order::create([
                    'service_id' => $request->service_id,
                    'seller_id' => $request->seller_id,
                    'buyer_id' => Auth::guard('web')->check() ? Auth::guard('web')->user()->id : NULL,
                    'name' => $request->name,
                    'email' => $request->email,
                    'phone' => $request->phone,
                    'post_code' => $request->post_code,
                    'address' => $request->address,
                    'city' => $request->choose_service_city,
                    'area' => $request->choose_service_area,
                    'country' => $request->choose_service_country,
                    'date' => '00.00.00',
                    'schedule' => '00.00.00',
                    'package_fee' => 0,
                    'extra_service' => 0,
                    'sub_total' => 0,
                    'tax' => 0,
                    'total' => 0,
                    'commission_type' => $commission->commission_charge_type,
                    'commission_charge' => $commission->commission_charge,
                    'status' => 0,
                    'is_order_online'=>$request->is_service_online_,
                    'order_note' => $request->order_note,
                    'payment_gateway' => $request->selected_payment_gateway,
                    'payment_status' => $payment_status,
                ]);
            }else{
                toastr_error(__('You must login as a buyer to create an order.'));
                return redirect()->back();
            }
        }

        $last_order_id = DB::getPdo()->lastInsertId();

        if($order_create !=''){
            SupportTicket::create([
                'title' => 'New Order',
                'subject' => 'Order Created By '.$request->name,
                'status' => 'open',
                'priority' => 'high',
                'buyer_id' => Auth::guard('web')->user()->id,
                'seller_id' => $request->seller_id,
                'service_id' => $request->service_id,
                'order_id' => $last_order_id ,
            ]);
        }

        $service_sold_count = Service::select('sold_count')->where('id',$request->service_id)->first();
        Service::where('id',$request->service_id)->update(['sold_count'=>$service_sold_count->sold_count+1]);

        $servs = [];
        $service_ids = [];
        $package_fee = 0;

        if (isset($request->services) && is_array($request->services)) {

            foreach ($request->services as $key => $service) {
                $service_ids[] = $service['id'];
            }

            $included_services = Serviceinclude::whereIn('id', $service_ids)->get();

            if($request->is_service_online_ != 1) {
                foreach ($request->services as $key => $requested_service) {
                    $service = $included_services->find($requested_service['id']);
                    $servs[] = [
                        'id' => $service->id,
                        'title' => $service->include_service_title,
                        'unit_price' => $service->include_service_price,
                        'quantity' => $requested_service['quantity'],
                    ];

                    $package_fee += $requested_service['quantity'] * $service->include_service_price;

                    OrderInclude::create([
                        'order_id' => $last_order_id,
                        'title' => $service->include_service_title,
                        'price' => $service->include_service_price,
                        'quantity' => $requested_service['quantity'],
                    ]);
                }
            }else{
                foreach ($request->services as $key => $requested_service) {
                    $service = $included_services->find($requested_service['id']);
                    $servs[] = [
                        'id' => $service->id,
                        'title' => $service->include_service_title,
                        'unit_price' => $service->include_service_price,
                        'quantity' => $requested_service['quantity'],
                    ];
                    OrderInclude::create([
                        'order_id' => $last_order_id,
                        'title' => $service->include_service_title,
                        'price' => 0,
                        'quantity' => 0,
                    ]);
                }

                $package_fee = $request->online_service_package_fee;
            }
        }


        $addis = [];
        $additional_ids = [];
        $extra_service = 0;

        if($request->additionals['0'] != NULL){
            if (isset($request->additionals) && is_array($request->additionals)) {
                foreach ($request->additionals as $key => $additional) {
                    $additional_ids[] = $additional['id'];
                }

                $additional_services = Serviceadditional::whereIn('id', $additional_ids)->get();

                foreach ($request->additionals as $key => $requested_additional) {
                    $service = $additional_services->find($requested_additional['id']);
                    $addis[] = [
                        'id' => $service->id,
                        'title' => $service->additional_service_title,
                        'unit_price' => $service->additional_service_price,
                        'quantity' => $requested_additional['quantity'],
                    ];

                    $extra_service += $requested_additional['quantity'] * $service->additional_service_price;

                    OrderAdditional::create([
                        'order_id' => $last_order_id,
                        'title' => $service->additional_service_title,
                        'price' => $service->additional_service_price,
                        'quantity' => $requested_additional['quantity'],
                    ]);
                }
            }
        }


        $sub_total = 0;
        $total = 0;
        $tax_amount =0;

        $tax = Service::select('tax')->where('id', $request->service_id)->first();
        $service_details_for_book = Service::select('id','service_city_id')->where('id',$request->service_id)->first();
        $service_country =  optional(optional($service_details_for_book->serviceCity)->countryy)->id;
        $country_tax =  Tax::select('id','tax')->where('country_id',$service_country)->first();
        $sub_total = $package_fee + $extra_service;
        if(!is_null($country_tax )){
            $tax_amount = ($sub_total * $country_tax->tax) / 100;
        }
        $total = $sub_total + $tax_amount;

        //calculate coupon amount
        $coupon_code = '';
        $coupon_type = '';
        $coupon_amount = 0;

        if(!empty($request->coupon_code)){
            $coupon_code = ServiceCoupon::where('code',$request->coupon_code)->first();
            $current_date = date('Y-m-d');
            if(!empty($coupon_code)){
                if($coupon_code->seller_id == $request->seller_id){
                    if($coupon_code->code == $request->coupon_code && $coupon_code->expire_date > $current_date){
                        if($coupon_code->discount_type == 'percentage'){
                            $coupon_amount = ($total * $coupon_code->discount)/100;
                            $total = $total-$coupon_amount;
                            $coupon_code = $request->coupon_code;
                            $coupon_type = 'percentage';
                        }else{
                            $coupon_amount = $coupon_code->discount;
                            $total = $total-$coupon_amount;
                            $coupon_code = $request->coupon_code;
                            $coupon_type = 'amount';
                        }
                    }else{
                        $coupon_code = '';
                    }
                }else{
                    $coupon_code = '';
                }
            }
        }
        $commission_amount = 0;
        //commission amount
        if($commission->system_type == 'subscription'){
            if(subscriptionModuleExistsAndEnable('Subscription')){
                $commission_amount = 0;
                \Modules\Subscription\Entities\SellerSubscription::where('id', $request->seller_id)->update([
                    'connect' => DB::raw(sprintf("connect - %s",(int)strip_tags(get_static_option('set_number_of_connect')))),
                ]);
            }
        }else{
            if($commission->commission_charge_type=='percentage'){
                $commission_amount = ($sub_total*$commission->commission_charge)/100;
            }else{
                $commission_amount = $commission->commission_charge;
            }
        }

        Order::where('id', $last_order_id)->update([
            'package_fee' => $package_fee,
            'extra_service' => $extra_service,
            'sub_total' => $sub_total,
            'tax' => $tax_amount,
            'total' => $total,
            'coupon_code' => $coupon_code,
            'coupon_type' => $coupon_type,
            'coupon_amount' => $coupon_amount,
            'commission_amount' => $commission_amount,
        ]);


        //Send order notification to seller
        $seller = User::where('id',$request->seller_id)->first();
        $buyer_id = Auth::guard('web')->check() ? Auth::guard('web')->user()->id : NULL;
        $order_message = __('You have a new order');

        $seller->notify(new OrderNotification($last_order_id,$request->service_id, $request->seller_id, $buyer_id,$order_message));

        // variable for all payment gateway
        $global_currency = get_static_option('site_global_currency');

        $usd_conversion_rate =  get_static_option('site_' . strtolower($global_currency) . '_to_usd_exchange_rate');
        $inr_exchange_rate = getenv('INR_EXCHANGE_RATE');
        $ngn_exchange_rate = getenv('NGN_EXCHANGE_RATE');
        $zar_exchange_rate = getenv('ZAR_EXCHANGE_RATE');
        $brl_exchange_rate = getenv('BRL_EXCHANGE_RATE');
        $idr_exchange_rate = getenv('IDR_EXCHANGE_RATE');
        $myr_exchange_rate = getenv('MYR_EXCHANGE_RATE');


        if(Auth::guard('web')->check()){
            $user_name = Auth::guard('web')->user()->name;
            $user_email = Auth::guard('web')->user()->email;
        }else{
            $user_name = $request->name;
            $user_email = $request->email;
        }

        $get_service_id_from_last_order = Order::select('service_id')->where('id',$last_order_id)->first();
        $title = Str::limit(strip_tags(optional($get_service_id_from_last_order->service)->title),20);
        $description = sprintf(__('Order id #%1$d Email: %2$s, Name: %3$s'),$last_order_id,$user_email,$user_name);


        //todo: check payment gateway is wallet or not
        if(moduleExists('Wallet')){
            if ($request->selected_payment_gateway === 'wallet') {
                $order_details = Order::find($last_order_id);
                $random_order_id_1 = Str::random(30);
                $random_order_id_2 = Str::random(30);
                $new_order_id = $random_order_id_1.$last_order_id.$random_order_id_2;
                $buyer_id = Auth::guard('web')->check() ? Auth::guard('web')->user()->id : NULL;
                $wallet_balance = Wallet::where('buyer_id',$buyer_id)->first();

                if(!empty($wallet_balance)){
                    if($wallet_balance->balance >= $order_details->total){
                        //Send order email to buyer for cash on delivery
                        try {
                            $message_for_buyer = get_static_option('new_order_buyer_message') ?? __('You have successfully placed an order #');
                            $message_for_seller_admin = get_static_option('new_order_admin_seller_message') ?? __('You have a new order #');
                            Mail::to($order_details->email)->send(new OrderMail(strip_tags($message_for_buyer).$order_details->id,$order_details));
                            Mail::to($seller->email)->send(new OrderMail(strip_tags($message_for_seller_admin).$order_details->id,$order_details));
                            Mail::to(get_static_option('site_global_email'))->send(new OrderMail(strip_tags($message_for_seller_admin).$order_details->id,$order_details));
                        } catch (\Exception $e) {
                            \Toastr::error($e->getMessage());
                        }
                        Order::where('id', $last_order_id)->update([
                            'payment_status' => 'complete',
                            'payment_gateway' => 'wallet',
                        ]);
                        Wallet::where('buyer_id',$buyer_id)->update([
                            'balance' => $wallet_balance->balance-$order_details->total,
                        ]);
                    }else{
                        $shortage_balance =  $order_details->total-$wallet_balance->balance;
                        toastr_warning('Your wallet has '.float_amount_with_currency_symbol($shortage_balance).' shortage to order this service. Please Credit your wallet first and try again.');
                        return back();
                    }

                }
                return redirect()->route('frontend.order.payment.success',$new_order_id);
            }
        }


        if ($request->selected_payment_gateway === 'cash_on_delivery') {
            $order_details = Order::find($last_order_id);
            $random_order_id_1 = Str::random(30);
            $random_order_id_2 = Str::random(30);
            $new_order_id = $random_order_id_1.$last_order_id.$random_order_id_2;

            //Send order email to buyer for cash on delivery
            try {
                $message_for_buyer = get_static_option('new_order_buyer_message') ?? __('You have successfully placed an order #');
                $message_for_seller_admin = get_static_option('new_order_admin_seller_message') ?? __('You have a new order #');
                Mail::to($order_details->email)->send(new OrderMail(strip_tags($message_for_buyer).$order_details->id,$order_details));
                Mail::to($seller->email)->send(new OrderMail(strip_tags($message_for_seller_admin).$order_details->id,$order_details));
                Mail::to(get_static_option('site_global_email'))->send(new OrderMail(strip_tags($message_for_seller_admin).$order_details->id,$order_details));
            } catch (\Exception $e) {
                \Toastr::error($e->getMessage());
            }
            return redirect()->route('frontend.order.payment.success',$new_order_id);
        }
        if($request->selected_payment_gateway === 'manual_payment') {
            $order_details = Order::find($last_order_id);
            $random_order_id_1 = Str::random(30);
            $random_order_id_2 = Str::random(30);
            $new_order_id = $random_order_id_1.$last_order_id.$random_order_id_2;


            $this->validate($request,[
                'manual_payment_image' => 'required|mimes:jpg,jpeg,png,pdf'
            ]);
            if($request->hasFile('manual_payment_image')){
                $manual_payment_image = $request->manual_payment_image;
                $img_ext = $manual_payment_image->extension();

                $manual_payment_image_name = 'manual_attachment_'.time().'.'.$img_ext;
                if(in_array($img_ext,['jpg','jpeg','png','pdf'])){
                    $manual_image_path = 'assets/uploads/manual-payment/';
                    $manual_payment_image->move($manual_image_path,$manual_payment_image_name);

                    Order::where('id',$last_order_id)->update([
                        'manual_payment_image'=>$manual_payment_image_name
                    ]);
                }else{
                    return back()->with(['msg' => __('image type not supported'),'type' => 'danger']);
                }
            }

            //Send order email to buyer for cash on delivery
            try {
                $message_for_buyer = get_static_option('new_order_buyer_message') ?? __('You have successfully placed an order #');
                $message_for_seller_admin = get_static_option('new_order_admin_seller_message') ?? __('You have a new order #');
                Mail::to($order_details->email)->send(new OrderMail(strip_tags($message_for_buyer).$order_details->id,$order_details));
                Mail::to($seller->email)->send(new OrderMail(strip_tags($message_for_seller_admin).$order_details->id,$order_details));
                Mail::to(get_static_option('site_global_email'))->send(new OrderMail(strip_tags($message_for_seller_admin).$order_details->id,$order_details));
            } catch (\Exception $e) {
                \Toastr::error($e->getMessage());
            }
            return redirect()->route('frontend.order.payment.success',$new_order_id);

        }else{
            if ($request->selected_payment_gateway === 'paypal') {

                try{
                    $paypal_mode = getenv('PAYPAL_MODE');
                    $client_id = $paypal_mode === 'sandbox' ? getenv('PAYPAL_SANDBOX_CLIENT_ID') : getenv('PAYPAL_LIVE_CLIENT_ID');
                    $client_secret = $paypal_mode === 'sandbox' ? getenv('PAYPAL_SANDBOX_CLIENT_SECRET') : getenv('PAYPAL_LIVE_CLIENT_SECRET');
                    $app_id = $paypal_mode === 'sandbox' ? getenv('PAYPAL_SANDBOX_APP_ID') : getenv('PAYPAL_LIVE_APP_ID');

                    $paypal = XgPaymentGateway::paypal();

                    $paypal->setClientId($client_id); // provide sandbox id if payment env set to true, otherwise provide live credentials
                    $paypal->setClientSecret($client_secret); // provide sandbox id if payment env set to true, otherwise provide live credentials
                    $paypal->setAppId($app_id); // provide sandbox id if payment env set to true, otherwise provide live credentials
                    $paypal->setCurrency($global_currency);
                    $paypal->setEnv($paypal_mode === 'sandbox'); //env must set as boolean, string will not work
                    $paypal->setExchangeRate($usd_conversion_rate); // if INR not set as currency

                    $redirect_url = $paypal->charge_customer([
                        'amount' => $total, // amount you want to charge from customer
                        'title' => $title, // payment title
                        'description' => $description, // payment description
                        'ipn_url' => route('frontend.paypal.ipn'), //you will get payment response in this route
                        'order_id' => $last_order_id, // your order number
                        'track' => \Str::random(36), // a random number to keep track of your payment
                        'cancel_url' => route(self::CANCEL_ROUTE,$last_order_id), //payment gateway will redirect here if the payment is failed
                        'success_url' => route(self::SUCCESS_ROUTE,$last_order_id), // payment gateway will redirect here after success
                        'email' => $user_email, // user email
                        'name' => $user_name, // user name
                        'payment_type' => 'order', // which kind of payment your are receving from customer
                    ]);
                    session()->put('order_id',$last_order_id);
                    return $redirect_url;
                }catch(\Exception $e){
                    return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
                }

            }
            elseif($request->selected_payment_gateway === 'paytm'){
                try{
                    $paytm_merchant_id = getenv('PAYTM_MERCHANT_ID');
                    $paytm_merchant_key = getenv('PAYTM_MERCHANT_KEY');
                    $paytm_merchant_website = getenv('PAYTM_MERCHANT_WEBSITE') ?? 'WEBSTAGING';
                    $paytm_channel = getenv('PAYTM_CHANNEL') ?? 'WEB';
                    $paytm_industry_type = getenv('PAYTM_INDUSTRY_TYPE') ?? 'Retail';
                    $paytm_env = getenv('PAYTM_ENVIRONMENT');

                    $paytm = XgPaymentGateway::paytm();
                    $paytm->setMerchantId($paytm_merchant_id);
                    $paytm->setMerchantKey($paytm_merchant_key);
                    $paytm->setMerchantWebsite($paytm_merchant_website);
                    $paytm->setChannel($paytm_channel);
                    $paytm->setIndustryType($paytm_industry_type);
                    $paytm->setCurrency($global_currency);
                    $paytm->setEnv($paytm_env === 'local'); // this must be type of boolean , string will not work
                    $paytm->setExchangeRate($inr_exchange_rate); // if INR not set as currency

                    $redirect_url = $paytm->charge_customer([
                        'amount' => $total,
                        'title' => $title,
                        'description' => $description,
                        'ipn_url' => route('frontend.paytm.ipn'),
                        'order_id' => $last_order_id,
                        'track' => \Str::random(36),
                        'cancel_url' => route(self::CANCEL_ROUTE,$last_order_id),
                        'success_url' => route(self::SUCCESS_ROUTE,$last_order_id),
                        'email' => $user_email,
                        'name' => $user_name,
                        'payment_type' => 'order',
                    ]);

                    session()->put('order_id',$last_order_id);
                    return $redirect_url;

                }catch(\Exception $e){
                    return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
                }
            }
            elseif($request->selected_payment_gateway === 'mollie'){
                try{
                    $mollie_key = getenv('MOLLIE_KEY');
                    $mollie = XgPaymentGateway::mollie();
                    $mollie->setApiKey($mollie_key);
                    $mollie->setCurrency($global_currency);
                    $mollie->setEnv(true); //env must set as boolean, string will not work
                    $mollie->setExchangeRate($usd_conversion_rate); // if INR not set as currency


                    $redirect_url = $mollie->charge_customer([
                        'amount' => $total,
                        'title' => $title,
                        'description' => $description,
                        'ipn_url' => route('frontend.mollie.ipn'),
                        'order_id' => $last_order_id,
                        'track' => \Str::random(36),
                        'cancel_url' => route(self::CANCEL_ROUTE,$last_order_id),
                        'success_url' => route(self::SUCCESS_ROUTE,$last_order_id),
                        'email' => $user_email,
                        'name' => $user_name,
                        'payment_type' => 'order',
                    ]);
                    session()->put('order_id',$last_order_id);
                    return $redirect_url;
                }catch(\Exception $e){
                    return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
                }

            }
            elseif($request->selected_payment_gateway === 'stripe'){
                try{
                    $stripe_public_key = getenv('STRIPE_PUBLIC_KEY');
                    $stripe_secret_key = getenv('STRIPE_SECRET_KEY');
                    $stripe = XgPaymentGateway::stripe();
                    $stripe->setSecretKey($stripe_secret_key);
                    $stripe->setPublicKey($stripe_public_key);
                    $stripe->setCurrency($global_currency);
                    $stripe->setEnv(true); //env must set as boolean, string will not work
                    $stripe->setExchangeRate($usd_conversion_rate); // if INR not set as currency

                    $redirect_url = $stripe->charge_customer([
                        'amount' => $total,
                        'title' => $title,
                        'description' => $description,
                        'ipn_url' => route('frontend.stripe.ipn'),
                        'order_id' => $last_order_id,
                        'track' => \Str::random(36),
                        'cancel_url' => route(self::CANCEL_ROUTE,$last_order_id),
                        'success_url' => route(self::SUCCESS_ROUTE,$last_order_id),
                        'email' => $user_email,
                        'name' => $user_name,
                        'payment_type' => 'order',
                    ]);
                    session()->put('order_id',$last_order_id);
                    return $redirect_url;
                }
                catch(\Exception $e){
                    return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
                }


            }
            elseif($request->selected_payment_gateway === 'razorpay'){

                try{
                    $razorpay_api_key = getenv('RAZORPAY_API_KEY');
                    $razorpay_api_secret = getenv('RAZORPAY_API_SECRET');
                    $razorpay = XgPaymentGateway::razorpay();
                    $razorpay->setApiKey($razorpay_api_key);
                    $razorpay->setApiSecret($razorpay_api_secret);
                    $razorpay->setCurrency($global_currency);
                    $razorpay->setEnv(true); //env must set as boolean, string will not work
                    $razorpay->setExchangeRate($inr_exchange_rate); // if INR not set as currency

                    $redirect_url = $razorpay->charge_customer([
                        'amount' => $total,
                        'title' => $title,
                        'description' => $description,
                        'ipn_url' => route('frontend.razorpay.ipn'),
                        'order_id' => $last_order_id,
                        'track' => \Str::random(36),
                        'cancel_url' => route(self::CANCEL_ROUTE,$last_order_id),
                        'success_url' => route(self::SUCCESS_ROUTE,$last_order_id),
                        'email' => $user_email,
                        'name' => $user_name,
                        'payment_type' => 'order',
                    ]);
                    session()->put('order_id',$last_order_id);
                    return $redirect_url;
                }catch(\Exception $e){
                    return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
                }

            }
            elseif($request->selected_payment_gateway === 'flutterwave'){
                try{
                    $flutterwave_public_key = getenv("FLW_PUBLIC_KEY");
                    $flutterwave_secret_key = getenv("FLW_SECRET_KEY");
                    $flutterwave_secret_hash = getenv("FLW_SECRET_HASH");

                    $flutterwave = XgPaymentGateway::flutterwave();
                    $flutterwave->setPublicKey($flutterwave_public_key);
                    $flutterwave->setSecretKey($flutterwave_secret_key);
                    $flutterwave->setCurrency($global_currency);
                    $flutterwave->setEnv(true); //env must set as boolean, string will not work
                    $flutterwave->setExchangeRate($usd_conversion_rate); // if NGN not set as currency

                    $redirect_url = $flutterwave->charge_customer([
                        'amount' => $total,
                        'title' => $title,
                        'description' => $description,
                        'ipn_url' => route('frontend.flutterwave.ipn'),
                        'order_id' => $last_order_id,
                        'track' => \Str::random(36),
                        'cancel_url' => route(self::CANCEL_ROUTE,$last_order_id),
                        'success_url' => route(self::SUCCESS_ROUTE,$last_order_id),
                        'email' => $user_email,
                        'name' => $user_name,
                        'payment_type' => 'order',
                    ]);
                    session()->put('order_id',$last_order_id);
                    return $redirect_url;
                }
                catch(\Exception $e){
                    return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
                }

            }
            elseif($request->selected_payment_gateway === 'paystack'){
                try{
                    $paystack_public_key = getenv('PAYSTACK_PUBLIC_KEY');
                    $paystack_secret_key = getenv('PAYSTACK_SECRET_KEY');
                    $paystack_merchant_email = getenv('MERCHANT_EMAIL');

                    $paystack = XgPaymentGateway::paystack();
                    $paystack->setPublicKey($paystack_public_key);
                    $paystack->setSecretKey($paystack_secret_key);
                    $paystack->setMerchantEmail($paystack_merchant_email);
                    $paystack->setCurrency($global_currency);
                    $paystack->setEnv(true); //env must set as boolean, string will not work
                    $paystack->setExchangeRate($ngn_exchange_rate); // if NGN not set as currency

                    $redirect_url = $paystack->charge_customer([
                        'amount' => $total,
                        'title' => $title,
                        'description' => $description,
                        'ipn_url' => route('frontend.paystack.ipn'),
                        'order_id' => $last_order_id,
                        'track' => \Str::random(36),
                        'cancel_url' => route(self::CANCEL_ROUTE,$last_order_id),
                        'success_url' => route(self::SUCCESS_ROUTE,$last_order_id),
                        'email' =>  $user_email,
                        'name' => $user_name,
                        'payment_type' => 'order',
                    ]);
                    session()->put('order_id',$last_order_id);
                    return $redirect_url;

                } catch(\Exception $e){
                    return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
                }

            }
            elseif($request->selected_payment_gateway === 'payfast'){

                try{

                    $random_order_id_1 = Str::random(30);
                    $random_order_id_2 = Str::random(30);


                    $payfast_merchant_id = getenv('PF_MERCHANT_ID');
                    $payfast_merchant_key = getenv('PF_MERCHANT_KEY');
                    $payfast_passphrase = getenv('PAYFAST_PASSPHRASE');
                    $payfast_env = getenv('PF_MERCHANT_ENV') === 'true';

                    $payfast = XgPaymentGateway::payfast();
                    $payfast->setMerchantId($payfast_merchant_id);
                    $payfast->setMerchantKey($payfast_merchant_key);
                    $payfast->setPassphrase($payfast_passphrase);
                    $payfast->setCurrency($global_currency);
                    $payfast->setEnv($payfast_env); //env must set as boolean, string will not work
                    $payfast->setExchangeRate($zar_exchange_rate); // if ZAR not set as currency

                    $redirect_url = $payfast->charge_customer([
                        'amount' => $total,
                        'title' => $title,
                        'description' => $description,
                        'ipn_url' => route('frontend.payfast.ipn'),
                        'order_id' => $last_order_id,
                        'track' => \Str::random(36),
                        'cancel_url' => route(self::CANCEL_ROUTE,$last_order_id),
                        'success_url' => route(self::SUCCESS_ROUTE,$random_order_id_1.$last_order_id.$random_order_id_2),
                        'email' => $user_email,
                        'name' =>  $user_name,
                        'payment_type' => 'order',
                    ]);
                    session()->put('order_id',$last_order_id);
                    return $redirect_url;
                } catch(\Exception $e){
                    return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
                }

            }
            elseif($request->selected_payment_gateway === 'cashfree'){

                try{
                    $cashfree_env = getenv('CASHFREE_TEST_MODE') === 'true';
                    $cashfree_app_id = getenv('CASHFREE_APP_ID');
                    $cashfree_secret_key = getenv('CASHFREE_SECRET_KEY');

                    $cashfree = XgPaymentGateway::cashfree();
                    $cashfree->setAppId($cashfree_app_id);
                    $cashfree->setSecretKey($cashfree_secret_key);
                    $cashfree->setCurrency($global_currency);
                    $cashfree->setEnv($cashfree_env); //true means sandbox, false means live , //env must set as boolean, string will not work
                    $cashfree->setExchangeRate($inr_exchange_rate); // if INR not set as currency

                    $redirect_url = $cashfree->charge_customer([
                        'amount' => $total,
                        'title' => $title,
                        'description' => $description,
                        'ipn_url' => route('frontend.cashfree.ipn'),
                        'order_id' => $last_order_id,
                        'track' => \Str::random(36),
                        'cancel_url' => route(self::CANCEL_ROUTE,$last_order_id),
                        'success_url' => route(self::SUCCESS_ROUTE,$last_order_id),
                        'email' => $user_email,
                        'name' =>  $user_name,
                        'payment_type' => 'order',
                    ]);
                    session()->put('order_id',$last_order_id);
                    return $redirect_url;

                }catch(\Exception $e){
                    return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
                }

            }
            elseif($request->selected_payment_gateway === 'instamojo'){

                try{
                    $instamojo_client_id = getenv('INSTAMOJO_CLIENT_ID');
                    $instamojo_client_secret = getenv('INSTAMOJO_CLIENT_SECRET');
                    $instamojo_env = getenv('INSTAMOJO_TEST_MODE') === 'true';

                    $instamojo = XgPaymentGateway::instamojo();
                    $instamojo->setClientId($instamojo_client_id);
                    $instamojo->setSecretKey($instamojo_client_secret);
                    $instamojo->setCurrency($global_currency);
                    $instamojo->setEnv($instamojo_env); //true mean sandbox mode , false means live mode //env must set as boolean, string will not work
                    $instamojo->setExchangeRate($inr_exchange_rate); // if INR not set as currency

                    $redirect_url = $instamojo->charge_customer([
                        'amount' => $total,
                        'title' => $title,
                        'description' => $description,
                        'ipn_url' => route('frontend.instamojo.ipn'),
                        'order_id' => $last_order_id,
                        'track' => 'asdfasdfsdf',
                        'cancel_url' => route(self::CANCEL_ROUTE,$last_order_id),
                        'success_url' => route(self::SUCCESS_ROUTE,$last_order_id),
                        'email' => $user_email,
                        'name' => $user_name,
                        'payment_type' => 'order',
                    ]);
                    session()->put('order_id',$last_order_id);
                    return $redirect_url;

                }catch(\Exception $e){
                    return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
                }

            }
            elseif($request->selected_payment_gateway === 'marcadopago'){
                try{
                    $mercadopago_client_id = getenv('MERCADO_PAGO_CLIENT_ID');
                    $mercadopago_client_secret = getenv('MERCADO_PAGO_CLIENT_SECRET');
                    $mercadopago_env =  getenv('MERCADO_PAGO_TEST_MOD') === 'true';

                    $marcadopago = XgPaymentGateway::marcadopago();
                    $marcadopago->setClientId($mercadopago_client_id);
                    $marcadopago->setClientSecret($mercadopago_client_secret);
                    $marcadopago->setCurrency($global_currency);
                    $marcadopago->setExchangeRate($brl_exchange_rate); // if BRL not set as currency, you must have to provide exchange rate for it
                    $marcadopago->setEnv($mercadopago_env); ////true mean sandbox mode , false means live mode
                    ///
                    $redirect_url = $marcadopago->charge_customer([
                        'amount' => $total,
                        'title' => $title,
                        'description' => $description,
                        'ipn_url' => route('frontend.marcadopago.ipn'),
                        'order_id' => $last_order_id,
                        'track' => \Str::random(36),
                        'cancel_url' => route(self::CANCEL_ROUTE,$last_order_id),
                        'success_url' => route(self::SUCCESS_ROUTE,$last_order_id),
                        'email' => $user_email,
                        'name' => $user_name,
                        'payment_type' => 'order',
                    ]);
                    session()->put('order_id',$last_order_id);
                    return $redirect_url;

                }catch(\Exception $e){
                    return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
                }

            }
            elseif($request->selected_payment_gateway === 'midtrans'){

                try{
                    $midtrans_env =  getenv('MIDTRANS_ENVAIRONTMENT') === 'true';
                    $midtrans_server_key = getenv('MIDTRANS_SERVER_KEY');
                    $midtrans_client_key = getenv('MIDTRANS_CLIENT_KEY');

                    $midtrans = XgPaymentGateway::midtrans();
                    $midtrans->setClientKey($midtrans_client_key);
                    $midtrans->setServerKey($midtrans_server_key);
                    $midtrans->setCurrency($global_currency);
                    $midtrans->setEnv($midtrans_env); //true mean sandbox mode , false means live mode
                    $midtrans->setExchangeRate($idr_exchange_rate); // if IDR not set as currency

                    $redirect_url = $midtrans->charge_customer([
                        'amount' => $total,
                        'title' => $title,
                        'description' => $description,
                        'ipn_url' => route('frontend.midtrans.ipn'),
                        'order_id' => $last_order_id,
                        'track' => \Str::random(36),
                        'cancel_url' => route(self::CANCEL_ROUTE,$last_order_id),
                        'success_url' => route(self::SUCCESS_ROUTE,$last_order_id),
                        'email' => $user_email,
                        'name' => $user_name,
                        'payment_type' => 'order',
                    ]);
                    session()->put('order_id',$last_order_id);
                    return $redirect_url;

                }catch(\Exception $e){
                    return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
                }

            }
            elseif($request->selected_payment_gateway === 'squareup'){

                try{
                    $squareup_env =  !empty(get_static_option('squareup_test_mode'));
                    $squareup_location_id = get_static_option('squareup_location_id');
                    $squareup_access_token = get_static_option('squareup_access_token');
                    $squareup_application_id = get_static_option('squareup_application_id');

                    $squareup = XgPaymentGateway::squareup();
                    $squareup->setLocationId($squareup_location_id);
                    $squareup->setAccessToken($squareup_access_token);
                    $squareup->setApplicationId($squareup_application_id);
                    $squareup->setCurrency($global_currency);
                    $squareup->setEnv($squareup_env);
                    $squareup->setExchangeRate($usd_conversion_rate); // if USD not set as currency


                    $redirect_url = $squareup->charge_customer([
                        'amount' => $total,
                        'title' => $title,
                        'description' => $description,
                        'ipn_url' => route('frontend.squareup.ipn'),
                        'order_id' => $last_order_id,
                        'track' => \Str::random(36),
                        'cancel_url' => route(self::CANCEL_ROUTE,$last_order_id),
                        'success_url' => route(self::SUCCESS_ROUTE,$last_order_id),
                        'email' => $user_email,
                        'name' => $user_name,
                        'payment_type' => 'order',
                    ]);
                    session()->put('order_id',$last_order_id);
                    return $redirect_url;

                }catch(\Exception $e){
                    return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
                }

            }
            elseif($request->selected_payment_gateway === 'cinetpay'){
                try{
                    $cinetpay_env =  !empty(get_static_option('cinetpay_test_mode'));
                    $cinetpay_site_id = get_static_option('cinetpay_site_id');
                    $cinetpay_app_key = get_static_option('cinetpay_app_key');

                    $cinetpay = XgPaymentGateway::cinetpay();
                    $cinetpay->setAppKey($cinetpay_app_key);
                    $cinetpay->setSiteId($cinetpay_site_id);
                    $cinetpay->setCurrency($global_currency);
                    $cinetpay->setEnv($cinetpay_env);
                    $cinetpay->setExchangeRate($usd_conversion_rate); // if ['XOF', 'XAF', 'CDF', 'GNF', 'USD'] not set as currency


                    $redirect_url = $cinetpay->charge_customer([
                        'amount' => $total,
                        'title' => $title,
                        'description' => $description,
                        'ipn_url' => route('frontend.cinetpay.ipn'),
                        'order_id' => $last_order_id,
                        'track' => \Str::random(36),
                        'cancel_url' => route(self::CANCEL_ROUTE,$last_order_id),
                        'success_url' => route(self::SUCCESS_ROUTE,$last_order_id),
                        'email' => $user_email,
                        'name' => $user_name,
                        'payment_type' => 'order',
                    ]);
                    session()->put('order_id',$last_order_id);
                    return $redirect_url;

                }catch(\Exception $e){
                    return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
                }
            }
            elseif($request->selected_payment_gateway === 'paytabs'){
                try{

                    $paytabs_env =  !empty(get_static_option('paytabs_test_mode'));
                    $paytabs_region = get_static_option('paytabs_region');
                    $paytabs_profile_id = get_static_option('paytabs_profile_id');
                    $paytabs_server_key = get_static_option('paytabs_server_key');

                    $paytabs = XgPaymentGateway::paytabs();
                    $paytabs->setProfileId($paytabs_profile_id);
                    $paytabs->setRegion($paytabs_region);
                    $paytabs->setServerKey($paytabs_server_key);
                    $paytabs->setCurrency($global_currency);
                    $paytabs->setEnv($paytabs_env);
                    $paytabs->setExchangeRate($usd_conversion_rate); // if ['AED','EGP','SAR','OMR','JOD','USD'] not set as currency

                    $redirect_url = $paytabs->charge_customer([
                        'amount' => $total,
                        'title' => $title,
                        'description' => $description,
                        'ipn_url' => route('frontend.paytabs.ipn'),
                        'order_id' => $last_order_id,
                        'track' => \Str::random(36),
                        'cancel_url' => route(self::CANCEL_ROUTE,$last_order_id),
                        'success_url' => route(self::SUCCESS_ROUTE,$last_order_id),
                        'email' => $user_email,
                        'name' => $user_name,
                        'payment_type' => 'order',
                    ]);
                    session()->put('order_id',$last_order_id);
                    return $redirect_url;

                }catch(\Exception $e){
                    return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
                }
            }elseif($request->selected_payment_gateway === 'billplz'){
                try{

                    $billplz_env =  !empty(get_static_option('billplz_test_mode'));
                    $billplz_key =  get_static_option('billplz_key');
                    $billplz_xsignature =  get_static_option('billplz_xsignature');
                    $billplz_collection_name =  get_static_option('billplz_collection_name');

                    $billplz = XgPaymentGateway::billplz();
                    $billplz->setKey($billplz_key);
                    $billplz->setVersion('v4');
                    $billplz->setXsignature($billplz_xsignature);
                    $billplz->setCollectionName($billplz_collection_name);
                    $billplz->setCurrency($global_currency);
                    $billplz->setEnv($billplz_env);
                    $billplz->setExchangeRate($myr_exchange_rate); // if ['MYR'] not set as currency
                    $random_order_id_1 = Str::random(30);
                    $random_order_id_2 = Str::random(30);
                    $new_order_id = $random_order_id_1.$last_order_id.$random_order_id_2;

                    $redirect_url = $billplz->charge_customer([
                        'amount' => $total,
                        'title' => $title,
                        'description' => $description,
                        'ipn_url' => route('frontend.billplz.ipn'),
                        'order_id' => $last_order_id,
                        'track' => \Str::random(36),
                        'cancel_url' => route(self::CANCEL_ROUTE,$last_order_id),
                        'success_url' => route(self::SUCCESS_ROUTE,$new_order_id),
                        'email' => $user_email,
                        'name' => $user_name,
                        'payment_type' => 'order',
                    ]);
                    session()->put('order_id',$last_order_id);
                    return $redirect_url;

                }catch(\Exception $e){
                    return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
                }
            }elseif($request->selected_payment_gateway === 'zitopay'){
                try{


                    $zitopay_env =  !empty(get_static_option('zitopay_test_mode'));
                    $zitopay_username =  get_static_option('zitopay_username');

                    $zitopay = XgPaymentGateway::zitopay();
                    $zitopay->setUsername($zitopay_username);
                    $zitopay->setCurrency($global_currency);
                    $zitopay->setEnv($zitopay_env);
                    $zitopay->setExchangeRate($usd_conversion_rate);

                    $random_order_id_1 = Str::random(30);
                    $random_order_id_2 = Str::random(30);
                    $new_order_id = $random_order_id_1.$last_order_id.$random_order_id_2;

                    $redirect_url = $zitopay->charge_customer([
                        'amount' => $total,
                        'title' => $title,
                        'description' => $description,
                        'ipn_url' => route('frontend.zitopay.ipn'),
                        'order_id' => $last_order_id,
                        'track' => \Str::random(36),
                        'cancel_url' => route(self::CANCEL_ROUTE,$last_order_id),
                        'success_url' => route(self::SUCCESS_ROUTE,$new_order_id),
                        'email' => $user_email,
                        'name' => $user_name,
                        'payment_type' => 'order',
                    ]);
                    session()->put('order_id',$last_order_id);
                    return $redirect_url;

                }catch(\Exception $e){
                    return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
                }
            }else{
                //todo check qixer meta data for new payment gateway
                $module_meta =  new ModuleMetaData();
                $list = $module_meta->getAllPaymentGatewayList();
                if (in_array($request->selected_payment_gateway,$list)){
                    //todo call the module payment gateway customerCharge function
                    $random_order_id_1 = Str::random(30);
                    $random_order_id_2 = Str::random(30);
                    $new_order_id = $random_order_id_1.$last_order_id.$random_order_id_2;

                    $customerChargeMethod =  $module_meta->getChargeCustomerMethodNameByPaymentGatewayName($request->selected_payment_gateway);
                    try {
                        $returned_val = $customerChargeMethod([
                            'amount' => $total,
                            'title' => $title,
                            'description' => $description,
                            'ipn_url' => null,
                            'order_id' => $last_order_id,
                            'track' => \Str::random(36),
                            'cancel_url' => route(self::CANCEL_ROUTE,$last_order_id),
                            'success_url' => route(self::SUCCESS_ROUTE,$new_order_id),
                            'email' => $user_email,
                            'name' => $user_name,
                            'payment_type' => 'order',
                        ]);
                        if(is_array($returned_val) && isset($returned_val['route'])){
    					   $return_url = !empty($returned_val['route']) ? $returned_val['route'] : route('homepage');
    						return redirect()->away($return_url); 
    					}
					
                    }catch (\Exception $e){
                        toastr_error( $e->getMessage());
                        return back();
                    }
                }
            }

        }

        return redirect()->route('homepage');
    }

    //service review add
    public function serviceReviewAdd(Request $request)
    {
        $request->validate([
            'rating' => 'required',
            'name' => 'required|max:191',
            'email' => 'required|max:191',
            'message' => 'required',
        ]);

        //todo: add filter
        $order_count = Order::where(['service_id' => $request->service_id,'buyer_id' => Auth::guard('web')->user()->id,'status' => 'complete' ])->count();
        if(!empty($order_count) && $order_count > 0){
            //todo add another filter to check this buyer already leave a review in this or not
            $old_review = Review::where(['service_id' => $request->service_id,'buyer_id' => Auth::guard('web')->user()->id])->count();
            if($old_review > 0){
                return response()->json([
                    'status' => 'danger',
                    'message' => __("you have already leave a review in this service")
                ]);
            }
            Review::create([
                'service_id' => $request->service_id,
                'seller_id' => $request->seller_id,
                'buyer_id' => Auth::guard()->check() ? Auth::guard('web')->user()->id : NULL,
                'rating' => $request->rating,
                'name' => $request->name,
                'email' => $request->email,
                'message' => $request->message,
            ]);

            return response()->json([
                'status' => 'success',
                'message' => __("Success!! Thanks For Review---")
            ]);
        }

        return response()->json([
            'status' => 'danger',
            'message' => __("you can not leave review in this service...")
        ]);
    }

    //seller all services
    public function sellerAllServices($seller_id = null)
    {
        $all_services = Service::with('reviews')
            ->where(['seller_id' => $seller_id, 'status' => 1, 'is_service_on' => 1])
            ->when(subscriptionModuleExistsAndEnable('Subscription'),function($q){
                $q->whereHas('seller_subscription');
            })
            ->paginate(9);

        $single_service = Service::select('id','seller_id')
            ->where(['seller_id' => $seller_id, 'status' => 1, 'is_service_on' => 1])
            ->when(subscriptionModuleExistsAndEnable('Subscription'),function($q){
                $q->whereHas('seller_subscription');
            })
            ->first();

        $categories = Category::select('id', 'name')->where('status', 1)->get();
        $sub_categories = Subcategory::select('id', 'name')->where('status', 1)->get();
        if($all_services->count() >= 1){
            return view('frontend.pages.services.seller-all-services', compact('all_services','single_service', 'categories', 'sub_categories'));
        }
        abort(404);

    }

    //search by category
    public function searchByCategory(Request $request)
    {
        $services = Service::where('category_id', $request->category_id)
            ->where('status', 1)
            ->where('is_service_on', 1)
            ->when(subscriptionModuleExistsAndEnable('Subscription'),function($q){
                $q->whereHas('seller_subscription');
            })
            ->where('seller_id',$request->seller_id)
            ->get();

        $single_service = Service::select('id','seller_id')
            ->where(['seller_id' => $request->seller_id, 'status' => 1, 'is_service_on' => 1])
            ->when(subscriptionModuleExistsAndEnable('Subscription'),function($q){
                $q->whereHas('seller_subscription');
            })
            ->first();

        return response()->json([
            'status' => 'success',
            'services' => $services,
            'result' => view('frontend.pages.services.partials.search-result', compact('services','single_service'))->render(),
        ]);
    }

    //search by sub category
    public function searchBySubcategory(Request $request)
    {
        $services = Service::where('subcategory_id', $request->subcategory_id)
            ->where('status', 1)
            ->where('is_service_on', 1)
            ->when(subscriptionModuleExistsAndEnable('Subscription'),function($q){
                $q->whereHas('seller_subscription');
            })
            ->where('seller_id',$request->seller_id)
            ->get();

        $single_service = Service::select('id','seller_id')
            ->where(['seller_id' => $request->seller_id, 'status' => 1, 'is_service_on' => 1])
            ->when(subscriptionModuleExistsAndEnable('Subscription'),function($q){
                $q->whereHas('seller_subscription');
            })
            ->first();

        return response()->json([
            'status' => 'success',
            'services' => $services,
            'result' => view('frontend.pages.services.partials.search-result', compact('services','single_service'))->render(),
        ]);
    }

    //search by rating
    public function searchByRating(Request $request)
    {
        $this->validate($request, ['rating' => 'numeric|min:1|max:5']);

        $rating = $request->rating;
        $services = Service::with('reviews')
            ->where('status', 1)
            ->where('is_service_on', 1)
            ->when(subscriptionModuleExistsAndEnable('Subscription'),function($q){
                $q->whereHas('seller_subscription');
            })
            ->where('seller_id',$request->seller_id)
            ->whereHas('reviews', function ($q) use ($rating) {
                $q->havingRaw('AVG(reviews.rating) >= ?', [$rating])
                    ->havingRaw('AVG(reviews.rating) <= ?', [$rating + 1]);
            })->get();


        $single_service = Service::select('id','seller_id')
            ->where(['seller_id' => $request->seller_id, 'status' => 1, 'is_service_on' => 1])
            ->first();

        return response()->json([
            'status' => 'success',
            'services' => $services,
            'result' => view('frontend.pages.services.partials.search-result', compact('services','single_service'))->render(),
        ]);
    }

    //search by sub sorting
    public function searchBySorting(Request $request)
    {

        if ($request['sorting'] == 'latest_service') {
            $services = Service::orderBy('id', 'Desc')
                ->where('status', 1)
                ->where('is_service_on', 1)
                ->when(subscriptionModuleExistsAndEnable('Subscription'),function($q){
                    $q->whereHas('seller_subscription');
                })
                ->where('seller_id',$request->seller_id)
                ->get();
        }
        if ($request['sorting'] == 'price_lowest') {
            $services = Service::orderBy('price', 'Asc')
                ->where('status', 1)
                ->where('is_service_on', 1)
                ->when(subscriptionModuleExistsAndEnable('Subscription'),function($q){
                    $q->whereHas('seller_subscription');
                })
                ->where('seller_id',$request->seller_id)
                ->get();
        }
        if ($request['sorting'] == 'price_highest') {
            $services = Service::orderBy('price', 'Desc')
                ->where('status', 1)
                ->where('is_service_on', 1)
                ->when(subscriptionModuleExistsAndEnable('Subscription'),function($q){
                    $q->whereHas('seller_subscription');
                })
                ->where('seller_id',$request->seller_id)
                ->get();
        }

        $single_service = Service::select('id','seller_id')
            ->where(['seller_id' => $request->seller_id, 'status' => 1, 'is_service_on' => 1])
            ->when(subscriptionModuleExistsAndEnable('Subscription'),function($q){
                $q->whereHas('seller_subscription');
            })
            ->first();
        return response()->json([
            'status' => 'success',
            'services' => $services,
            'result' => view('frontend.pages.services.partials.search-result', compact('services','single_service'))->render(),
        ]);
    }

    //search by category from all services
    public function allSearchByCategory(Request $request)
    {
        $services = Service::where('category_id', $request->category_id)->where('status', 1)->where('is_service_on', 1)
            ->when(subscriptionModuleExistsAndEnable('Subscription'),function($q){
                $q->whereHas('seller_subscription');
            })
            ->get();

        return response()->json([
            'status' => 'success',
            'services' => $services,
            'result' => view('frontend.pages.services.partials.search-result', compact('services'))->render(),
        ]);
    }

    //search by subcategory from all services
    public function allSearchBySubcategory(Request $request)
    {
        $services = Service::where('subcategory_id', $request->subcategory_id)->where('status', 1)->where('is_service_on', 1)
            ->when(subscriptionModuleExistsAndEnable('Subscription'),function($q){
                $q->whereHas('seller_subscription');
            })
            ->get();

        return response()->json([
            'status' => 'success',
            'services' => $services,
            'result' => view('frontend.pages.services.partials.search-result', compact('services'))->render(),
        ]);
    }

    //search by rating from all services
    public function allSearchByRating(Request $request)
    {
        $this->validate($request, ['rating' => 'numeric|min:1|max:5']);

        $rating = $request->rating;
        $services = Service::with('reviews')
            ->where('status', 1)
            ->where('is_service_on', 1)
            ->when(subscriptionModuleExistsAndEnable('Subscription'),function($q){
                $q->whereHas('seller_subscription');
            })
            ->whereHas('reviews', function ($q) use ($rating) {
                $q->havingRaw('AVG(reviews.rating) >= ?', [$rating])
                    ->havingRaw('AVG(reviews.rating) <= ?', [$rating + 1]);
            })->get();

        return response()->json([
            'status' => 'success',
            'services' => $services,
            'result' => view('frontend.pages.services.partials.search-result', compact('services'))->render(),
        ]);
    }

    //search by sorting from all services
    public function allSearchBySorting(Request $request)
    {

        if ($request['sorting'] == 'latest_service') {
            $services = Service::orderBy('id', 'Desc')->where('status', 1)->where('is_service_on', 1)
                ->when(subscriptionModuleExistsAndEnable('Subscription'),function($q){
                    $q->whereHas('seller_subscription');
                })
                ->get();
        }
        if ($request['sorting'] == 'price_lowest') {
            $services = Service::orderBy('price', 'Asc')->where('status', 1)->where('is_service_on', 1)
                ->when(subscriptionModuleExistsAndEnable('Subscription'),function($q){
                    $q->whereHas('seller_subscription');
                })
                ->get();
        }
        if ($request['sorting'] == 'price_highest') {
            $services = Service::orderBy('price', 'Desc')->where('status', 1)->where('is_service_on', 1)
                ->when(subscriptionModuleExistsAndEnable('Subscription'),function($q){
                    $q->whereHas('seller_subscription');
                })
                ->get();
        }

        return response()->json([
            'status' => 'success',
            'services' => $services,
            'result' => view('frontend.pages.services.partials.search-result', compact('services'))->render(),
        ]);
    }

    //category wise services
    public function categoryServices($slug = null)
    {
        $category = Category::select('id','name')->where('slug',$slug)->first();
        $subcategory_under_category = Subcategory::where('category_id',$category->id)->orderBy('name','asc')->take(20)->get()->transform(function($item) {
            $item->total_service = Service::where('subcategory_id',$item->id)->count();
            return $item;
        });

        $all_services = collect([]);

        $service_quyery = Service::query();
        $service_quyery->with('reviews');

        if (!empty(request()->get('q') )){
            $service_quyery->Where('title', 'LIKE', '%' . trim(strip_tags(request()->get('q'))) . '%')
                ->orWhere('description', 'LIKE', '%' . trim(strip_tags(request()->get('q'))) . '%');
        }
        if(!empty(request()->get('rating'))){
            $rating = (int) request()->get('rating');
            $service_quyery->whereHas('reviews', function ($q) use ($rating) {
                $q->groupBy('reviews.id')
                    ->havingRaw('AVG(reviews.rating) >= ?', [$rating])
                    ->havingRaw('AVG(reviews.rating) < ?', [$rating + 1]);
            });
        }

        if(!empty(request()->get('sortby'))){

            if (request()->get('sortby') == 'latest_service') {
                $service_quyery->orderBy('id', 'Desc');
            }
            if (request()->get('sortby') == 'lowest_price') {
                $service_quyery->orderBy('price', 'Asc');
            }
            if (request()->get('sortby') == 'highest_price') {
                $service_quyery->orderBy('price', 'Desc');
            }
        }

        if(!is_null($category)){
            $all_services = $service_quyery->where(['category_id' => $category->id, 'status' => 1, 'is_service_on' => 1])
                ->when(subscriptionModuleExistsAndEnable('Subscription'),function($q){
                    $q->whereHas('seller_subscription');
                })
                ->paginate(9);
        }

        return view('frontend.pages.services.category-services', compact(
            'all_services',
            'category',
            'subcategory_under_category'
        ));
    }

    //sub category wise services
    public function subCategoryServices($slug = null)
    {
        $subcategory = Subcategory::select('id','name')->where('slug',$slug)->first();
        $all_services = collect([]);

        $service_quyery = Service::query();
        $service_quyery->with('reviews');

        if (!empty(request()->get('q') )){
            $service_quyery ->Where('title', 'LIKE', '%' . trim(strip_tags(request()->get('q'))) . '%')
                ->orWhere('description', 'LIKE', '%' . trim(strip_tags(request()->get('q'))) . '%');
        }

        if(!empty(request()->get('rating'))){
            $rating = (int) request()->get('rating');
            $service_quyery->whereHas('reviews', function ($q) use ($rating) {
                $q->groupBy('reviews.id')
                    ->havingRaw('AVG(reviews.rating) >= ?', [$rating])
                    ->havingRaw('AVG(reviews.rating) < ?', [$rating + 1]);
            });
        }

        if(!empty(request()->get('sortby'))){

            if (request()->get('sortby') == 'latest_service') {
                $service_quyery->orderBy('id', 'Desc');
            }
            if (request()->get('sortby') == 'lowest_price') {
                $service_quyery->orderBy('price', 'Asc');
            }
            if (request()->get('sortby') == 'highest_price') {
                $service_quyery->orderBy('price', 'Desc');
            }

        }

        if(!is_null($subcategory)){
            $all_services = $service_quyery->where(['subcategory_id' => $subcategory->id, 'status' => 1, 'is_service_on' => 1])
                ->when(subscriptionModuleExistsAndEnable('Subscription'),function($q){
                    $q->whereHas('seller_subscription');
                })
                ->paginate(12);
        }

        return view('frontend.pages.services.subcategory-services', compact(
            'all_services',
            'subcategory',
        ));
    }

    //all featured service
    public function allfeaturedService()
    {
        $all_featurd_service = Service::select('id','title','image','description','price','slug','seller_id')
            ->with('reviews')
            ->where(['status'=>1,'is_service_on'=>1,'featured'=>1])
            ->when(subscriptionModuleExistsAndEnable('Subscription'),function($q){
                $q->whereHas('seller_subscription');
            })
            ->paginate(9);
        return view('frontend.pages.services.featured-services',compact('all_featurd_service'));
    }

    //all popular service
    public function allPopularService()
    {
        $all_popular_service = Service::select('id','title','image','description','price','slug','seller_id','view','featured')
            ->with('reviews')
            ->where(['status'=>1,'is_service_on'=>1])
            ->when(subscriptionModuleExistsAndEnable('Subscription'),function($q){
                $q->whereHas('seller_subscription');
            })
            ->orderBy('view','DESC')
            ->paginate(9);
        return view('frontend.pages.services.popular-service',compact('all_popular_service'));
    }

    //all categories
    public function allCategory()
    {
        $all_category = Category::select('id','name','slug','image')->with('services')
            ->whereHas('services')
            ->get();
        return view('frontend.pages.category.all-category',compact('all_category'));
    }
    
    public function allSellers()
    {
        $seller_lists = User::with(['review','sellerVerify','order'])->whereNotNull('image')->where('user_type',0)->orderBy('id','desc')->paginate(12);
        
        return view('frontend.pages.seller.all-seller',compact('seller_lists'));
    }
    
    //category wise services
    public function loadMoreSubCategories(Request $request)
    {
        $subcategory_under_category = Subcategory::where('category_id',$request->catId)->orderBy('name','asc')->skip($request->total)->take(12)->get()->transform(function($item) {
            $item->total_service = Service::where('subcategory_id',$item->id)->count();
            return $item;
        });
      
      $markup = '';
          if(!is_null($subcategory_under_category)){
            
            foreach($subcategory_under_category as $sub_cat){
              
              $markup .= '<div class="col-lg-3 col-sm-6 margin-top-30 category-child">
                            <div class="single-category style-02 wow fadeInUp" data-wow-delay=".2s">
                                <div class="icon category-bg-thumb-format" '.render_background_image_markup_by_attachment_id($sub_cat->image).'></div>
                                <div class="category-contents">
                                    <h4 class="category-title"> <a href="'. route('service.list.subcategory',$sub_cat->slug) .'">'. $sub_cat->name.'</a> </h4>
                                    <span class="category-para">  '. sprintf(__('%s Service'),$sub_cat->total_service).' </span>
                                </div>
                            </div>
                        </div>';
            }
        }
         return response(['markup' => $markup ,'total' => $request->total + 12]);
    }
    

}
