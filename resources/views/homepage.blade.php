@extends('layouts.app')
@section('content')

<section class="contest-box">
    <div class="container">
        <h2>Contests list</h2>
        <div class="col-md-4">
            <label>Sort By</label>
            <div class="select_box">
                <select name="sort" id="sort">
                    <option value="newdesc">Newest First</option>
                    <option value="sort">Price -- Low to High</option>
                    <option value="rsort">Price -- High to Low</option>

                </select>
            </div>
        </div>
        <br>

        <div class="row">
            <div class="col contest_ajax_list">

                @if($contest_list)
                
          
                    @foreach($contest_list as $contest_data)
                 
                   
                        <div class="load-more contemt--wrapper">
                            <div class="listing-wrap">
                                <div class="listing__title">
                                    <h2> <span id="contest_list_data">{{ $contest_data->contest_type_name }}</span>
                                    </h2>
                                        
                                  
                                    <div class="listing-design__price">
                                        <div class="ribbon__fold"></div>
                                     
                                       <div class="ribbon__text">
                                        @php
                                       $max_prize_data =  json_decode(json_encode($price_max_ammount));
                                      
                                        @endphp
                                   
                                           @foreach($max_prize_data as $item)
                                        $ <?php echo $item->max_prize;  ?>

                                        @endforeach
                            
                                      
                                      </div>
                                    
                                        
                                      
                                    </div>
                                 
                                </div>


                            </div>
                            <div class="ribbon ribbon--large ribbon--info" data-tooltip=""
                                data-tooltip-content="[data-price-tooltip-content-1188035]">

                                <div class="listing__description text-box" data-maxlength="210">
                                    <h3><a
                                            href="{{ route('viewdetails',['contest_id'=>$contest_data->id]) }}">{{ $contest_data->contest_name }}</a>
                                    </h3>
                                   <div class="comment">
                                    @if(strlen($contest_data->description_one) > 150)
                                    {{substr($contest_data->description_one,0,150)}}
                                    
                                    <span class="read-more-show hide_content"> <a class="btn-view-details">View Details</a></span>
                                    <span class="read-more-content"> {{substr($contest_data->description_one,150,strlen($contest_data->description_one))}}
                                    <span class="read-more-hide hide_content"><a class="btn-view-details">View less</a></span> </span>
                                    @else
                                    {{$contest_data->description_one}}
                                   
                                    @endif
                                   </div>
                                   <br>
                                   <div class="participate">
                                    <a href="{{ route('viewdetails',['contest_id'=>$contest_data->contest_id]) }}"
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
                                                    @php 

                                                    $now =  \Carbon\Carbon::now();
                                                    $end_date = $contest_data->closing_date;
                                                    $end_time = $contest_data->closing_time;
                                                    $cDate = \Carbon\Carbon::parse($end_date);
                                                    $cHours =  \Carbon\Carbon::parse($end_time);
                                                    $end_days = $now->diffInDays($cDate );
                                                    $end_hours = $now->diffInHours($cHours);

                                                    @endphp
                                               
                                                </div>
                                                <div class="clockdiv__date"> 
                                                    <p><span class="days">{{$end_days}} Days </span> </p> 
                                                </div>
                                                <div class="clockdiv__date">
                                                    <p><span class="hours">  {{$end_hours}} Hours</span></p>
                                                </div>
                                            </div>
                                        </li>
                                        <input type="hidden" value=" {{Auth::id()}}" id="user_id">
                                        
                                        <li>
                                  
                                       @php
                                            $user_id  = Auth::id();
                                            $watch_list = DB::table('contest_watch')->where('user_id', $user_id )->get();
                                           
                                                // echo "<pre>";
                                                // print_r($watch_list);
                                                // exit();
                                           
                                                $contest_id =  $contest_data->contest_id;
                                       @endphp
                                      
                                       
                                         <button data-id="{{$contest_data->contest_id}}"  data-value="{{Auth::id()}}" id="watch_user_id" class="btn-Watch add_watch" >Watch</button>
                              
                                      
                                       {{-- <button data-id="{{$contest_data->contest_id}}" data-value="{{Auth::id()}}" id="watch_user_id" class="btn-Watch add_watch" >Watch</button> --}}
                                    
                            
                                   
                                 
                                     
                                        
                                          
                                           
                                    
                                        </li>

                                    </ul>
                                </div>

                            </div>
                        </div>
                          

                    @endforeach
                   

                @endif
                {{-- <div class="low_price_list" id= "low_price_list"></div> --}}
                @php
                    $rows = DB::table('contests')->orderBy('id', 'desc')->get();
                        
                @endphp
            
                <div class="btn__seeMore">
                    <a href="#" id="seeMore"><i class="fa fa-spinner" aria-hidden="true"></i> Show More</a>
                </div>
          
            </div>
        </div>
    </div>
</section>

@endsection
