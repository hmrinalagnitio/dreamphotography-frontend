<?php

namespace App\Http\Controllers\payment;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;





class PaypalController extends Controller
{
    //
 

    public function paywithpaypal(){
        return view('payment.payment'); 
    }

    public function postPaymentwithPaypal(Request $request){
       

    }

    public function getPaymentStatus(Request $request){

        dd($request->all()); exit(); 
      
    }
}
