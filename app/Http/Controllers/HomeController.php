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

    public function index(){
        return view('loadmore');
    }

    // for load more 

    public function load_data(Request $request){
       
        
        // if($request->ajax()){
            // if($request->id > 0){
             
            //     $data = DB::table('contests')
            //             ->where('id', '<', $request->id)
            //             ->orderBy('id', 'desc')
            //             ->limit(3)
            //             ->get();                
            // }else{
            //     $data = DB::table('contests')
            //             ->where('is_status', 1)
            //             ->orderBy('id', 'desc')
            //             ->limit(3)
            //             ->get();
               
            // }


        $getSortName = $request->getname;
        if($request->id > 0){

            if($getSortName == 'DESC'){
                $data = DB::table('contest_sorting_prize')
                    ->join('contests', 'contest_sorting_prize.contest_sort_id', '=', 'contests.id')
                    ->select('contest_sorting_prize.*', 'contests.*')
                    ->orderBy('contest_sorting_prize.contest_high_prize', 'desc')
                    ->where('contest_sort_id', '<', $request->id)
                    ->paginate(3);
                    // ->limit(3)
                    // ->get();
                

            }elseif($getSortName == 'ASC'){
                $data = DB::table('contest_sorting_prize')
                    ->join('contests', 'contest_sorting_prize.contest_sort_id', '=', 'contests.id')
                    ->select('contest_sorting_prize.*', 'contests.*')
                    ->orderBy('contest_sorting_prize.contest_high_prize', 'asc')
                    ->where('contest_sort_id', '<', $request->id)
                    ->paginate(3);
               
            }elseif($getSortName == 'NEWDESC'){
                $data = DB::table('contest_sorting_prize')
                    ->join('contests', 'contest_sorting_prize.contest_sort_id', '=', 'contests.id')
                    ->select('contest_sorting_prize.*', 'contests.*')
                    ->orderBy('contest_sorting_prize.contest_sort_id', 'desc')
                    ->where('contest_sort_id', '<', $request->id)
                    ->paginate(3);
            }else{
               
                $data = DB::table('contest_sorting_prize')
                ->join('contests', 'contest_sorting_prize.contest_sort_id', '=', 'contests.id')
                ->select('contest_sorting_prize.*', 'contests.*')
                ->orderBy('contest_sorting_prize.contest_sort_id', 'desc')
                // ->where('contest_sort_id', '<', $request->id)
                ->paginate(3);
            }
        }
        else{
            $data = DB::table('contest_sorting_prize')
                    ->join('contests', 'contest_sorting_prize.contest_sort_id', '=', 'contests.id')
                    ->select('contest_sorting_prize.*', 'contests.*')
                    ->orderBy('contest_sorting_prize.contest_sort_id', 'desc')
                    ->paginate(3);
                    
            }
                $output = '';
                $last_id = ''; 
                if(!$data->isEmpty()){
                    foreach($data as $row){
                    
                        if(strlen($row->description_one) > 150){
                            $description = substr($row->description_one,0,150);
                            $post_description = substr($row->description_one,150,strlen($row->description_one));
                        }
                        // for prize section 
                        // $prize =  DB::table('contest_prize_amounts')->where('contest_id', $row->contest_id)->max('prize_amount');

                    
                        // for days hours count
                        $now = \Carbon\Carbon::now();
                        $end_date = $row->closing_date;
                        $end_time = $row->closing_time;
                        $cDate = \Carbon\Carbon::parse($end_date);
                        $cHours = \Carbon\Carbon::parse($end_time);
                        $end_days = $now->diffInDays($cDate );
                        $end_hours = $now->diffInHours($cHours);
                        // for authentication check 
                        $countWatchlist = 0;
                        if(Auth::check()){
                            $countWatchlist =WacthList::countWatchlist($row->contest_id);        
                        }
                        if($countWatchlist > 0){
                            $w = 'Watching';
                        }else{
                            $w = 'Watch';
                        }

                        $output .= '
                        <div class="load-more contemt--wrapper">
                            <div class="listing-wrap">
                                <div class="listing__title">
                                    <h2> <span id="contest_list_data">'. $row->contest_type_name .'</span></h2>
                                <div class="listing-design__price">
                                    <div class="ribbon__fold"></div>
                                <div class="ribbon__text">
                                    $'.$row->contest_high_prize.'
                                </div>
                                </div>
                            </div>
                        </div>
                        <div class="ribbon ribbon--large ribbon--info" data-tooltip=""
                                    data-tooltip-content="[data-price-tooltip-content-1188035]">
                                    <div class="listing__description text-box" data-maxlength="210">
                                        <h3><a href="#">'. $row->contest_name.'</a>
                                        </h3>
                                        <div class="comment">'.$description .'
                                            <span class="read-more-show "> <a class="btn-view-details">View Details</a></span>
                                            <span class="read-more-content hide_content"> '.$post_description.'
                                            <span class="read-more-hide "><a class="btn-view-details">View less</a></span> </span>
                                    </div>
                                    <br>
                                    <div class="participate">
                                        <a href="'. route('viewdetails',['id'=>$row->id]) .'"
                                            class="btn-participate-now">Participate Now</a>
                                    </div>
                                    </div>
                                    <div class="listing__last">
                                    <ul>
                                        <li><i class="fa fa-user"></i>
                                            <p>100 <span>Paticipant</span></p>
                                        </li>
                                        <li>
                                            <div class="clockdiv" data-date="May 13, 2022 21:14:01">
                                                <i class="fa fa-clock-o"></i>
                                                <div class="clockdiv__date">
                                                </div>
                                                <div class="clockdiv__date"> 
                                                    <p><span class="days">'.$end_days.' Days </span> </p> 
                                                </div>
                                                <div class="clockdiv__date">
                                                    <p><span class="hours"> '.$end_hours.' Hours</span></p>
                                                </div>
                                            </div>
                                        </li>
                                        <input type="hidden" value="'.Auth::id().'" id="user_id">
                                        <li>
                                            <div data-id="'.$w.'">
                                            <button data-id="'.$row->contest_id.'"  data-value="'.Auth::id().'" id="watch_user_id" class="btn-Watch add_watch" >
                                            '.$w.'
                                            </button>
                                            </div>
                                            
                                        </li>
                                    </ul>
                                </div>
                        </div>
                        </div>        
                     </div>
                        ';
                        // $last_id = $row->contest_sort_id; 
                        $last_id = $row->id;
                        // $last_id = $count;
                        echo $last_id;
                        
                    }
                
                    $output .= '
                    
                        <div id="load_more" class="btn__seeMore">
                            <button type="button" name="load_more_button"  
                        data-id="'.$last_id.'" id="load_more_button"><i class="fa fa-spinner" aria-hidden="true"></i> Show More</button>
                        </div>
                    
                    ';

                }else{
                    $output .= '
                        <div id="load_more">
                            <button type= "button" name="load_more_button" class="btn btn-info ">No Data Found </button>
                            </div>
                    ';
                }
                echo $output; 
        // }
            
    }

    public function addwatch(Request $request){
       
        if($request->ajax()){
            $data = $request->all();
            $countWatchlist = WacthList::countWatchlist($data['contest_id']);
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
        if($getSortName == 'DESC'){
            $data = DB::table('contest_sorting_prize')
                ->join('contests', 'contest_sorting_prize.contest_sort_id', '=', 'contests.id')
                ->select('contest_sorting_prize.*', 'contests.*')
                ->orderBy('contest_sorting_prize.contest_high_prize', 'desc')
                ->paginate(3);
                // ->limit(3)
                // ->get();
        }elseif($getSortName == 'ASC'){
            $data = DB::table('contest_sorting_prize')
            ->join('contests', 'contest_sorting_prize.contest_sort_id', '=', 'contests.id')
            ->select('contest_sorting_prize.*', 'contests.*')
            ->orderBy('contest_sorting_prize.contest_high_prize', 'asc')
            ->paginate(3);
            //  ->limit(3)
            // ->get();
        }elseif($getSortName == 'NEWDESC'){
            $data = DB::table('contest_sorting_prize')
                ->join('contests', 'contest_sorting_prize.contest_sort_id', '=', 'contests.id')
                ->select('contest_sorting_prize.*', 'contests.*')
                ->orderBy('contest_sorting_prize.contest_sort_id', 'desc')
                ->paginate(3);
                // ->limit(3)
                // ->get();
        }else{
            $data = DB::table('contest_sorting_prize')
            ->join('contests', 'contest_sorting_prize.contest_sort_id', '=', 'contests.id')
            ->select('contest_sorting_prize.*', 'contests.*')
            ->orderBy('contest_sorting_prize.contest_sort_id', 'desc')
            ->paginate();
            // ->limit(3)
            // ->get();
        }

        $output = '';
        if(!$data->isEmpty()){
            $count = 0; 
            foreach($data as $row){
                $count +=1;
                if(strlen($row->description_one) > 150){
                   $description = substr($row->description_one,0,150);
                   $post_description = substr($row->description_one,150,strlen($row->description_one));
                }
             
                // for days hours count
                $now = \Carbon\Carbon::now();
                $end_date = $row->closing_date;
                $end_time = $row->closing_time;
                $cDate = \Carbon\Carbon::parse($end_date);
                $cHours = \Carbon\Carbon::parse($end_time);
                $end_days = $now->diffInDays($cDate );
                $end_hours = $now->diffInHours($cHours);

                // for authentication check 
                $countWatchlist = 0 ;
                if(Auth::check()){
                    $countWatchlist =WacthList::countWatchlist($row->contest_id);        
                }
                if($countWatchlist > 0){
                    $w ='Watching';
                    }else{
                    $w = 'Watch';
                    }

                $output .= '
                <div class="load-more contemt--wrapper">
                    <div class="listing-wrap">
                        <div class="listing__title">
                            <h2> <span id="contest_list_data">'. $row->contest_type_name .'</span></h2>
                        <div class="listing-design__price">
                            <div class="ribbon__fold"></div>
                           <div class="ribbon__text">
                            $ '.$row->contest_high_prize.'
                          </div>
                        </div>
                    </div>
                </div>
                <div class="ribbon ribbon--large ribbon--info" data-tooltip=""
                            data-tooltip-content="[data-price-tooltip-content-1188035]">
                            <div class="listing__description text-box" data-maxlength="210">
                                <h3><a href="#">'. $row->contest_name.'</a>
                                </h3>
                                <div class="comment">'.$description .'
                                    <span class="read-more-show "> <a class="btn-view-details">View Details</a></span>
                                    <span class="read-more-content hide_content"> '.$post_description.'
                                    <span class="read-more-hide "><a class="btn-view-details">View less</a></span> </span>
                               </div>
                               <br>
                               <div class="participate">
                                <a href="'. url('viewdetails/'.$row->id) .'"
                                    class="btn-participate-now">Participate Now</a>
                               </div>
                            </div>
                            <div class="listing__last">
                            <ul>
                                <li><i class="fa fa-user"></i>
                                    <p>100 <span>Paticipant</span></p>
                                </li>
                                <li>
                                    <div class="clockdiv" data-date="May 13, 2022 21:14:01">
                                        <i class="fa fa-clock-o"></i>
                                        <div class="clockdiv__date">
                                        </div>
                                        <div class="clockdiv__date"> 
                                            <p><span class="days">'.$end_days.' Days </span> </p> 
                                        </div>
                                        <div class="clockdiv__date">
                                            <p><span class="hours"> '.$end_hours.' Hours</span></p>
                                        </div>
                                    </div>
                                </li>
                                <input type="hidden" value=" '.Auth::id().'" id="user_id">
                                <li>
                                <div class="">
                                 <button data-id="'.$row->contest_id.'"  data-value="'.Auth::id().'" id="watch_user_id" class="btn-Watch add_watch" >
                                '.$w.'
                                </button>
                                </div>
                                
                                </li>
                            </ul>
                        </div>
                 </div>
              </div>        
            </div>
             ';
                $last_id = $row->id;
                // $last_id = $count;
                echo $last_id;
            }
            $output .= '
           
                <div id="load_more" class="btn__seeMore">
                    <button type="button" name="load_more_button"  
                    data-id="'.$last_id.'" id="load_more_button"><i class="fa fa-spinner" aria-hidden="true"></i> Show More</button>
                </div>
            ';

        }else{
            $output .= '
                <div id="load_more">
                    <button type= "button" name="load_more_button" class="btn btn-info ">No Data Found </button>
                </div>
            ';
        }
        echo $output; 

       
      
     
    }

  




    

    
}
