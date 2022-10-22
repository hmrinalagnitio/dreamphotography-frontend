<?php

namespace App\Http\Controllers\contest;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


class ViewDetailsController extends Controller
{ 
    //
    public function index(Request $request){
        
        $contest_data_id =  $request->id; 
       
        $contest_query = DB::table('contests')->where('id', $contest_data_id)->get();
        $contest_category = DB::table('contest_categories')->where('contest_unique_id', $contest_data_id)->get();
        $contest_prize = DB::table('contest_prize_amounts')->where('contest_unique_id', $contest_data_id)->get();
      

       return view('contest.viewDetails', [
        'contest_query'=>$contest_query, 
        'contest_category'=>$contest_category,
        'contest_prize'=>$contest_prize
    ]);

    }
}
