<?php

namespace App\Http\Controllers\Auth;

use App\Admin;
use App\Helpers\FlashMsg;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Mail;
use App\Mail\BasicMail;
use App\ServiceCity;
use App\ServiceArea;
use App\Country;
use App\SellerVerify;
use Toastr;
use Str;
USE Auth;
use Session;
use DB;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
//    protected $redirectTo = '/';
    public function redirectTo(){
        return route('homepage');
    }
    public function __construct()
    {
        $this->middleware('guest');
        $this->middleware('guest:admin');
    }

    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:191'],
            'captcha_token' => ['nullable'],
            'username' => ['required', 'string', 'string', 'max:255', 'unique:users'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ],[
            'captcha_token.required' => __('google captcha is required'),
            'name.required' => __('name is required'),
            'name.max' => __('name is must be between 191 character'),
            'username.required' => __('username is required'),
            'username.max' => __('username is must be between 191 character'),
            'username.unique' => __('username is already taken'),
            'email.unique' => __('email is already taken'),
            'email.required' => __('email is required'),
            'password.required' => __('password is required'),
            'password.confirmed' => __('both password does not matched'),
        ]);
    }
    protected function adminValidator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'username' => ['required', 'string', 'max:255', 'unique:admins'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:admins'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
    }

    protected function create(array $data)
    {
        $user = User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'username' => $data['user_name'],
            'phone' => $data['phone'],
            'service_city' => $data['service_city'],
            'service_area' => $data['service_area'],
            'password' => Hash::make($data['password']),
        ]);
        return $user;
    }

    public function userRegister(Request $request)
    {   
        if($request->isMethod('post')){
            $request->validate([
                'name' => 'required|max:191',
                'email' => 'required|email|unique:users|max:191',
                'username' => 'required|unique:users|max:191',
                'phone' => 'required|unique:users|max:191',
                'password' => 'required|max:191',
                'service_city' => 'required',
                'service_area' => 'required',
                'country' => 'required',
            ]);

            $email_verify_tokn = Str::random(8);
            $user_type = get_static_option('buyer_register_on_off') ==='off' ? 0 : $request->get_user_type;
            $user = User::create([
                'name' => $request->name,
                'email' => $request->email,
                'username' => $request->username,
                'phone' => $request->phone,
                'password' => Hash::make($request->password),
                'service_city' => $request->service_city,
                'service_area' => $request->service_area,
                'country_id' => $request->country,
                'user_type' => $user_type,
                'terms_conditions' =>1,
                'email_verify_token'=> $email_verify_tokn,
            ]);

            if($user ){
                if($request->get_user_type==0){
                    $user_type = 'seller';
                }else{
                    $user_type = 'buyer';
                }

                try {
                    $message = get_static_option('user_email_verify_message');
                    $message = str_replace(["@name", "@email_verify_tokn"],[$user->name, $email_verify_tokn],$message);
                    Mail::to($user->email)->send(new BasicMail([
                        'subject' => get_static_option('user_email_verify_subject'),
                        'message' => $message
                    ]));

                    $message = get_static_option('user_register_message');
                    $message = str_replace(["@name", "@type","@username","@email"],[$user->name, $user_type, $user->username, $user->email], $message);
                    Mail::to(get_static_option('site_global_email'))->send(new BasicMail([
                        'subject' => get_static_option('user_register_subject') ?? __('New User Registration'),
                        'message' => $message
                    ]));
                } catch (\Exception $e) {

                }
            }


            if($request->get_user_type==0){
                $last_order_id = DB::getPdo()->lastInsertId();
                 SellerVerify::create([
                    'seller_id' => $last_order_id,
                    'status' => 0,
                ]);
            }
            

             if (Auth::guard('web')->attempt(['username' => $request->username, 'password' => $request->password], $request->get('remember'))) {
                if(Auth::user()->user_type==0){
                    return redirect()->route('seller.dashboard');
                }else{
                   return redirect()->route('buyer.dashboard');
                }
            }
            
            return back()->with([
                   'msg' => __('Email or password does not match'),
                   'type' => 'danger',
            ]);
        }

        $cities = ServiceCity::all();
        $countries = Country::all();
        return view('frontend.user.register',compact('cities','countries'));
    }

   

    public function emailVerify(Request $request)
    {   
        $user_details = Auth::guard('web')->user();
        
        if($request->isMethod('post')){

            $this->validate($request,[
                'email_verify_token' => 'required|max:191'
            ],[
                'email_verify_token.required' => __('verify code is required')
            ]);
            
            $user_details = User::where(['email_verify_token' => $request->email_verify_token,'email' => $user_details->email ])->first();
            
            if(!is_null($user_details)){
                $user_details->email_verified = 1;
                $user_details->save();
                 if($user_details->user_type==0){
                    return redirect()->route('seller.dashboard');
                }else{
                   return redirect()->route('buyer.dashboard');
                }
            }
            
            return redirect()->back()->with(['msg' => __('Your verification code is wrong.') ,'type' => 'danger' ]);
        }
        
        
        $verify_token = $user_details->email_verify_token ?? null;
       
       try {
           //check user has verify token has or not
          
            if(is_null($verify_token)){
                
                $verify_token = Str::random(8);
                $user_details->email_verify_token = Str::random(8);
                $user_details->save();
                
                $message = get_static_option('user_email_verify_message');
                $message = str_replace(["@name", "@email_verify_tokn"],[$user_details->name, $verify_token],$message);
                Mail::to($user_details->email)->send(new BasicMail([
                    'subject' => get_static_option('user_email_verify_subject'),
                    'message' => $message
                ]));
                
            }   
        
        }catch (\Exception $e){
            
        }
        
        return view('frontend.user.email-verify'); 
    }
    
    public function resendCode(){
        $user_details = Auth::guard('web')->user();
        $verify_token = $user_details->email_verify_token ?? null;
             
        try {
            
                if(is_null($verify_token)){
                    $verify_token = Str::random(8);
                    $user_details->email_verify_token = Str::random(8);
                    $user_details->save();
                }
                
                $message = get_static_option('user_email_verify_message');
                $message = str_replace(["@name", "@email_verify_tokn"],[$user_details->name, $verify_token],$message);
                
                Mail::to($user_details->email)->send(new BasicMail([
                    'subject' => get_static_option('user_email_verify_subject'),
                    'message' => $message
                ]));
            
            
            
         
        }catch (\Exception $e){
            
        }
        
        return redirect()->back()->with(['msg' => __('Resend Email Verify Code, Please check your inbox of spam.') ,'type' => 'success' ]);
    }
}