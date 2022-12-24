<?php

namespace App\Http\Controllers\payment;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use DB;
use Auth;



// Import the class namespaces first, before using it directly
use Srmklive\PayPal\Services\PayPal as PayPalClient;



class PaymentController extends Controller
{
    //
   
    public function index(Request $request)
    {
        //
        $contest_id = $request->id;
        $user_id = Auth::id();
        $contest_payment_amount = DB::table('contests')->where('id', $contest_id)->get();
        foreach($contest_payment_amount as $payment_amount){
           
           $contest_unique_id = $payment_amount->id;

           $contest_type_name = $payment_amount->contest_type_name;
           $contest_name = $payment_amount->contest_name;
           $opening_date = $payment_amount->opening_date;
           $closing_date = $payment_amount->closing_date;
           $opening_time = $payment_amount->opening_time;
           $closing_time = $payment_amount->closing_time;
           $entry_fees = $payment_amount->entry_fees;
           $contest_id = $payment_amount->contest_id;

        }
       
     
        return view('payment.checkout', [
            'contest_unique_id'=>$contest_unique_id,
            'contest_type_name'=>$contest_type_name,
            'contest_name'=>$contest_name,
            'opening_date'=>$opening_date,
            'closing_date'=>$closing_date,
            'opening_time'=>$opening_time,
            'closing_time'=>$closing_time,
            'entry_fees'=>$entry_fees,
            'contest_id'=>$contest_id,


        ]); 
    }

  
    // for paypal payment gateway
    public function place_order(Request $request){
      
        $user_id = Auth::id();
      
        $default_user_id = $request->default_user_id;
        $amount = $request->input('amount'); 
        $pay_contest_unique_id = $request->input('pay_contest_unique_id');
        $payment_status = $request->input('payment_status');
        $pay_contest_id = $request->input('pay_contest_id');
        $pay_contest_type_name = $request->input('pay_contest_type_name');
        $pay_contest_name = $request->input('pay_contest_name');
        $pay_contest_opening_date = $request->input('pay_contest_opening_date');
        $pay_contest_closing_date = $request->input('pay_contest_closing_date'); 
        $pay_contest_opening_time = $request->input('pay_contest_opening_time');
        $pay_contest_closing_time = $request->input('pay_contest_closing_time');
        $pay_contest_name = $request->input('pay_contest_name');
        $email = $request->input('email');
        $payment_mode = $request->input('payment_mode');
        $payment_id = $request->input('payment_id');
        $usersname = $request->input('usersname');

    
        DB::table('contest_payments')->insert([
            'contest_unique_id'=>$pay_contest_unique_id,
            'payment_status'=>$payment_status,
            'payment_mode'=>$payment_mode,
            'payment_id'=>$payment_id,
            'user_id' => $user_id,
            'default_user_id'=> $default_user_id,
            'name'=>$usersname,
            'email'=>$email,
            'contest_id'=> $pay_contest_id,
            'contest_type_name'=>$pay_contest_type_name,
            'contest_name'=>$pay_contest_name,
            'opening_date'=>$pay_contest_opening_date,
            'closing_date'=>$pay_contest_closing_date,
            'opening_time'=>$pay_contest_opening_time,
            'closing_time'=>$pay_contest_closing_time,
            'entry_fees_amount'=>$amount,
           
        ]);

      
        if($request->input('payment_mode') == "Paid by Paypal"){
            return response()->json(['status'=> 'Payment successfully']);
        }
        return redirect('/')->with('status', 'Payment Successfully !');
   

    }


}