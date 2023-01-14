<?php

namespace App\Http\Controllers\Api;

use App\Actions\Media\MediaHelper;
use App\Category;
use App\Country;
use App\Helpers\FlashMsg;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Modules\JobPost\Entities\BuyerJob;
use Modules\JobPost\Entities\JobRequest;
use Modules\JobPost\Entities\JobRequestConversation;

class BuyerJobController extends Controller
{
    //buyer job lists
    public function job_list()
    {
        $buyer_id = auth('sanctum')->user()->id;
        $jobs = BuyerJob::where('buyer_id',$buyer_id)->latest()->paginate(10)->withQueryString();
        if(empty($jobs)){
            return response()->error([
                'msg'=>'No Jobs Found',
            ]);
        }else{
            foreach($jobs as $job){
                $job_image[] = get_attachment_image_by_id($job->image);
            }
            return response()->success([
                'job_lists' => $jobs,
                'job_image' => $job_image,
            ]);
        }
    }

    //Job post on off
    public function job_on_off(Request $request)
    {
        $is_job_on = BuyerJob::select('is_job_on')->where('id', $request->job_post_id)->first();
        $is_job_on->is_job_on === 1 ? $is_job_on = 0 : $is_job_on = 1;
        BuyerJob::where('id', $request->job_post_id)->update(['is_job_on' => $is_job_on]);
        return response()->success([
            'status'=> $is_job_on,
            'msg' => 'Job on/off success',
        ]);
    }

    //add new job post
    public function add_job(Request $request)
    {
        $buyer_id = auth('sanctum')->user()->id;
        if($request->isMethod('post')){
            if($request->is_job_online == 1){
                $request->validate([
                    'category' => 'required',
                    'subcategory' => 'required',
                    'title' => 'required|max:191|unique:buyer_jobs',
                    'description' => 'required',
                    'price' => 'required|numeric',
                    'dead_line' => 'required',
                ]);
                $country_id = 0;
                $city_id = 0;
            }else{
                $request->validate([
                    'category' => 'required',
                    'subcategory' => 'required',
                    'country_id' => 'required',
                    'city_id' => 'required',
                    'title' => 'required|max:191|unique:buyer_jobs',
                    'description' => 'required',
                    'price' => 'required|numeric',
                    'dead_line' => 'required',
                ]);
                $country_id = $request->country_id;
                $city_id = $request->city_id;
            }

            if($request->file('image')){
                MediaHelper::insert_media_image($request,'web','image');
                $job_image_id = DB::getPdo()->lastInsertId();
            }

            BuyerJob::create([
                'category_id'=>$request->category,
                'subcategory_id'=>$request->subcategory,
                'buyer_id'=>$buyer_id,
                'country_id'=>$country_id,
                'city_id'=>$city_id,
                'title'=>$request->title,
                'slug'=>$request->slug ?? Str::slug($request->title),
                'description'=>$request->description,
                'image'=>$job_image_id,
                'is_job_online'=>$request->is_job_online,
                'price'=>$request->price,
                'dead_line'=>$request->dead_line,
            ]);
            return response()->success([
                'msg' => 'Job Post Added Success',
            ]);
        }
    }

    //edit job post
    public function edit_job(Request $request,$id=null)
    {
        $find_id = BuyerJob::find($id);
        if(!empty($find_id)){
            $buyer_id = auth('sanctum')->user()->id;
            if($request->is_job_online == 1){
                $request->validate([
                    'category' => 'required',
                    'subcategory' => 'required',
                    'title' => 'required|max:191|unique:buyer_jobs,title,'.$id,
                    'description' => 'required',
                    'price' => 'required|numeric',
                    'dead_line' => 'required',
                ]);
                $country_id = 0;
                $city_id = 0;
            }else{
                $request->validate([
                    'category' => 'required',
                    'subcategory' => 'required',
                    'country_id' => 'required',
                    'city_id' => 'required',
                    'title' => 'required|max:191|unique:buyer_jobs,title,'.$id,
                    'description' => 'required',
                    'price' => 'required|numeric',
                    'dead_line' => 'required',
                ]);
                $country_id = $request->country_id;
                $city_id = $request->city_id;
            }

            if($request->file('image')){
                MediaHelper::insert_media_image($request,'web','image');
                $job_image_id = DB::getPdo()->lastInsertId();
            }
            $old_image = BuyerJob::select('image')->where('buyer_id',$buyer_id)->where('id',$id)->first();

            BuyerJob::where('id',$id)->update([
                'category_id'=>$request->category,
                'subcategory_id'=>$request->subcategory,
                'buyer_id'=>$buyer_id,
                'country_id'=>$country_id,
                'city_id'=>$city_id,
                'title'=>$request->title,
                'slug'=>$request->slug ?? Str::slug($request->title),
                'description'=>$request->description,
                'image'=>$job_image_id ?? $old_image->image,
                'is_job_online'=>$request->is_job_online,
                'price'=>$request->price,
                'dead_line'=>$request->dead_line,
            ]);
            return response()->success([
                'msg' => 'Job Post Updated Success',
                'image_id'=>$job_image_id ?? $old_image->image,
            ]);
        }else{
            return response()->error([
                'msg' => 'Job Id Not Found',
            ]);
        }
        
    }

    //job delete
    public function delete_job($id = null)
    {
        $find_id = BuyerJob::find($id);
        if(!empty($find_id)){
            JobRequest::where('job_post_id',$id)->delete();
            BuyerJob::find($id)->delete();
            return response()->success([
                'msg' => 'Job Post Deleted Success',
            ]);
        }else{
            return response()->error([
                'msg' => 'Job Id Not Found',
            ]);
        }

    }

    //job request list
    public function request_list()
    {
        $buyer_id = auth('sanctum')->user()->id;
        $all_job_requests = JobRequest::with(['job','seller'])
            ->where('buyer_id',$buyer_id)
            ->latest()
            ->paginate(10)->withQueryString();
        return response()->success([
            'all_job_request' => $all_job_requests,
        ]);
    }

    //conversation
    public function conversation(Request $request)
    {
        $request->validate([
            'job_request_id'=>'required',
        ]);

        $buyer_id = auth('sanctum')->user()->id;
        $request_details = JobRequest::with('job')
            ->where('buyer_id',$buyer_id)
            ->where('id',$request->job_request_id)
            ->first();
        $all_messages = JobRequestConversation::where(['job_request_id'=>$request->job_request_id])->get();
        $q = $request->q ?? '';
        return response()->success([
            'request_details'=>$request_details,
            'all_messages'=>$all_messages,
            'q'=>$q,
        ]);
    }

    public function send_message(Request $request)
    {
        $request->validate([
            'job_request_id' => 'required',
            'user_type' => 'required|string|max:191',
            'message' => 'required',
            'send_notify_mail' => 'nullable|string',
            'file' => 'nullable|mimes:zip',
        ]);
        $request_info = JobRequestConversation::create([
            'job_request_id' => $request->job_request_id,
            'type' => $request->user_type,
            'message' => $request->message,
            'notify' => $request->send_notify_mail ? 'on' : 'off',
        ]);

        if ($request->hasFile('file')){
            $uploaded_file = $request->file;
            $file_extension = $uploaded_file->getClientOriginalExtension();
            $file_name =  pathinfo($uploaded_file->getClientOriginalName(),PATHINFO_FILENAME).time().'.'.$file_extension;
            $uploaded_file->move('assets/uploads/job-request',$file_name);
            $request_info->attachment = $file_name;
            $request_info->save();
        }
        return response()->success([
            'msg'=>'Message Send Success',
        ]);
    }
    
    
  public function job_hire(Request $request){

        $validator = Validator::make($request->all(), [
            'job_request_id' => 'required',
            'selected_payment_gateway' => 'required',
            'job_post_id' => 'required',
            'seller_id' => 'required',
        ]);


        // Return the message
        if($validator->fails()){
            return response([
                'error' => true,
                'message' => $validator->errors()
            ],422);
        }

        $request_details = JobRequest::find($request->job_request_id);

        if(is_null($request_details)){
            return response([
                'error' => true,
                'message' => __('Job request not found')
            ],422);
        }

        if($request->selected_payment_gateway === 'manual_payment') {
            $validator = Validator::make($request->all(), [
                'manual_payment_image' => 'required|mimes:jpg,jpeg,png,pdf'
            ]);
            if($validator->fails()){
                return response([
                    'error' => true,
                    'message' => $validator->errors()
                ],422);
            }
        }

        //commission amount calculate
        $admin_commmission = AdminCommission::first();
        if($admin_commmission->commission_charge_type=='percentage'){
            $commission_amount = ($request_details->expected_salary*$admin_commmission->commission_charge)/100;
        }else{
            $commission_amount = $admin_commmission->commission_charge;
        }
        if($request->selected_payment_gateway == 'manual_payment'){
            $payment_status='pending';
        }else{
            $payment_status='';
        }

        //tax amount calculate
        $tax_amount =0;
        if(optional($request_details->job)->country_id != 0){
            $country_tax =  Tax::select('id','tax')->where('country_id',optional($request_details->job)->country_id)->first();
            $country_tax = $country_tax->tax ?? 0;
            $tax_amount = ($request_details->expected_salary * $country_tax) / 100;
        }
        $total = $request_details->expected_salary + $tax_amount;


        //buyer info get
        $user = auth('sanctum')->user();
        $is_check = auth('sanctum')->check();
        $is_job_online = optional($request_details->job)->is_job_online;

        $buyer_id =  $is_check ? $user->id : NULL;
        $name = $is_check ? $user->name : NULL;
        $email = $is_check ? $user->email : NULL;
        $phone = $is_check ? $user->phone : NULL;
        $post_code = $is_check ? $user->post_code : '1234';
        $address = $is_check ? $user->address : NULL;
        $city = $is_check ? $user->service_city : NULL;
        $area = $is_check ? $user->service_area : NULL;
        $country = $is_check ? $user->country_id : NULL;

        // return response([$request_details, $user ,$country_tax]);


        $order_details = Order::create([
            'service_id' => '0',
            'seller_id' => $request_details->seller_id,
            'buyer_id' => $buyer_id,
            'name' => $name,
            'email' => $email,
            'phone' => $phone,
            'post_code' => $post_code ?? '12345',
            'address' => $address ?? 'not given',
            'city' => $city,
            'area' => $area,
            'country' => $country,
            'date' => 'No Date Created',
            'schedule' => 'No Schedule Created',
            'package_fee' => 0,
            'extra_service' => 0,
            'sub_total' => $total,
            'tax' => $tax_amount,
            'total' => $total,
            'commission_type' => $admin_commmission->commission_charge_type,
            'commission_charge' => $admin_commmission->commission_charge,
            'commission_amount' => $commission_amount,
            'status' => 0,
            'order_note' => NULL,
            'payment_gateway' => $request->selected_payment_gateway,
            'payment_status' => $payment_status,
            'order_from_job' => 'yes',
            'job_post_id' => $request_details->job_post_id,
            'is_order_online' => $is_job_online,
        ]);

        $last_order_id = $order_details->id;
        $job_post_title = optional($request_details->job)->title;
        $title = \Str::limit($job_post_title,20);
        $description = sprintf(__('Order id #%1$d Email: %2$s, Name: %3$s'),$last_order_id,$email,$name);

        //Send order notification to seller
        $seller = User::where('id',$request_details->seller_id)->first();
        $buyer_id = Auth::guard('sanctum')->check() ? Auth::guard('sanctum')->user()->id : NULL;
        $order_message = __('You have a new order');
        $seller->notify(new OrderNotification($last_order_id,$request_details->job_post_id, $request_details->seller_id, $buyer_id,$order_message));

        return response([
            'order_id' => $order_details->id,
            'job_post_id' => $request_details->job_post_id,
            'buyer' =>  $buyer_id  
        ],200);

    }
    
}
