<?php

namespace App\Http\Controllers\contest;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


class ViewDetailsController extends Controller
{
    //
    public function index(Request $request){
        
       $contest_data_id =  $request->contest_id; 
      
        $contest_query = DB::table('contests')->where('contest_id', $contest_data_id)->get();

        //  echo "<pre>";
        //  print_r($contest_query);
        //  exit();

         $contest_category = DB::table('contest_categories')->where('contest_id', $contest_data_id)->get();
         $contest_prize = DB::table('contest_prize_amounts')->where('contest_id', $contest_data_id)->get();

       return view('contest.viewDetails', [
        'contest_query'=>$contest_query, 
        'contest_category'=>$contest_category,
        'contest_prize'=>$contest_prize
    ]);

    }
}
