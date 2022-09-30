<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use App\Models\WacthList;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
 

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
   
    public function homepage(){
        $contest_list = DB::table('contests')->where('is_status', 1)->orderBy('id', 'desc')->get();
        // contest and prize amount table join 
        $price_max_ammount =  DB::table('contest_prize_amounts')
                ->select('contest_id', DB::raw('max(prize_amount) as max_prize'))
                ->groupBy('contest_id')
                ->orderBy('created_at', 'desc')
                ->get();     
        return view('homepage',
        [
            'contest_list'=>$contest_list, 
            'price_max_ammount'=>$price_max_ammount,
          
         ]);
        
    }

    // for load more 
    public function ShowMore(Request $request){
        if($request->ajax()){
            if($request->id > 0){
                $data = DB::table('contests')
                            ->where('id', '<', $request->id)
                            ->orderBy('id', 'DESC')
                            ->limit(5)
                            ->get();
            }else{
                $data = DB::table('contests')
                            ->orderBy('id', 'desc')
                            ->limit(5)
                            ->get();

            }
            $output = '';
            $last_id = '';

            if(!$data->isEmpty()){
                foreach($data as $row){
                    $output .= '';
                }
            }else{
                 $output .= '  <div class="btn__seeMore">
                 <a href="#" id="seeMore" ><i class="fa fa-spinner" aria-hidden="true"></i> No data found</a>
             </div>';
            }
        }
        
    }

 



    public function addwatch(Request $request){
       
        if($request->ajax()){
            $data = $request->all();
        //    dd($data);
            $countWatchlist = WacthList::countWatchlist($data['contest_id']);

            // print_r($countWatchlist); exit();
            
            $wishlist = new WacthList;
            if($countWatchlist == 0){
                $wishlist->contest_id = $data['contest_id'];
                $wishlist->user_id = $data['user_id']; 
                $wishlist->is_status = 1;
                $wishlist ->save();
                return response()->json(['action' => 'add','message'=>'Watchlist added successfully']);
            }else{
                WacthList::where(['user_id' => Auth::user()->id,
                'contest_id'=> $data['contest_id']])->delete();
                return response()->json(['action' => 'remove','message'=>'Remove from Watchlist ']);
            }
    
        }
    

    }

 

    public function contestListSorting(Request $request){

        $getSortName = $request->getname;
        $query = DB::table('contests')->query();

        $prize_sort = $query->get();

        

        
        
  
        // if($getSortName=='newdesc'){
        //     $contest_sorting_data = DB::table('contests')->where('is_status', 1)->orderBy('id', 'desc')->get();
           
           
        //     return response()->json([
        //         'ststus'=>200,
        //         'contest_sorting_data'=>$contest_sorting_data,
                
        //     ]);
        // }else{
           
        //     $contest_list = DB::table('contests')->where('is_status', 1)->orderBy('id', 'desc')->get();
        //     // print_r($contest_list); exit();

        //     foreach($contest_list as $contest_data){
        //         $prizes[] = json_decode($contest_data->prize_amount);
        //     }

        //     //  print_r($prizes); exit();

        //     if($getSortName == 'sort'){
        //         $getSortName($prizes);
        //         $arrlength = count($prizes);
        //         for($x = 0; $x < $arrlength; $x++) {
        //         $prize[] = $prizes[$x];
               
        //         }
        //     }else{
        //         $getSortName($prizes);
        //         $arrlength = count($prizes);
        //         for($x = 0; $x < $arrlength; $x++) {
        //         $prize[] = $prizes[$x];
               
        //         }
        //     }
        //     $prize_data = json_decode(json_encode($prize));


        //     print_r($prize_data);
        //     exit();
           
        //     $contest_prize_sorting =  DB::table('contests')->whereRaw('prize_amount', $prize_data)->get();
        //     echo "<pre>";
        //     print_r($contest_prize_sorting); exit();

            
        //     return response()->json([
        //         'ststus'=>200,
        //         'prize'=>$prize,
        //         'data'=>$data
        //         // 'contest_sorting_data'=>$contest_sorting_data,
                
              
        //     ]);
        // }
          
    }




    

    
}
