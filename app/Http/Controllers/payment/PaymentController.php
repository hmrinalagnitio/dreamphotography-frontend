<?php

namespace App\Http\Controllers\payment;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use DB;


class PaymentController extends Controller
{
    //
    public function index($id){
        $contest_id = $id;
        $user_id = Auth::id();
        $contest_payment_amount = DB::table('contests')->where('id', $contest_id)->get();
        return view('payment.payment', ['contest_payment_amount'=>$contest_payment_amount]); 
       
    }
}
