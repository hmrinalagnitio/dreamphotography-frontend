@extends('layouts.app')

@section('content')

    <!-- Modal  Edit Profile -->
    <div class="modal fade" id="editprofile" tabindex="-1" aria-labelledby="editprofile" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered editprofile">
            <div class="modal-content">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                </button>
                <div class="editprofile__modal__header">
                    <img src="assets/images/logo.png" alt="">
                </div>
                <form action="{{route('updateProfile')}}" method="POST" >
                    @csrf
                    @method('PUT')
                <div class="editprofile__modal">
                    <h3> Edit Profile</h3>
                    <div class="editprofile__modal-row">
                        <div class="editprofile__modal-col">
                            <label for="">Full Name</label>
                            <input type="text" id="name" name="name">
                        </div>
                        <div class="editprofile__modal-col">
                            <label for="">Password</label>
                            <input type="password" id="password" name="password">
                        </div>
                    </div>
                    <div class="editprofile__modal-row">
                        <div class="editprofile__modal-col">
                            <label for="">Address</label>
                            <input type="text" id="address" name="address">
                        </div>
                        <div class="editprofile__modal-col">
                            @php
                               $countries_list = DB::table('countries')->get();
                            @endphp
                            
                            <label for="">Country</label>
                            <select id="country_name" name="country_name">
                                @foreach($countries_list as $countries_name)
                                <option value="{{$countries_name->name}}">{{$countries_name->name}}</option>
                                @endforeach
                              
                        </select>
                        </div>
                    </div>
                    <div class="editprofile__modal-row">
                        <div class="editprofile__modal-col">
                            <label for="">Zip Code</label>
                            <input type="text" id="zip_code" name="zipcode">
                        </div>
                        <div class="editprofile__modal-col">
                            <label for="">Mobile No</label>
                            <input type="number" id="mobile_no" placeholder="+1 4561234561" name="phone_number">
                            <span id="valid-msg" class="hide">✓ Valid</span>
                            <span id="error-msg" class="hide"></span>
                         
                        </div>
                    </div>
                   
                    <div class="editprofile__modal-row">
                        <div class="editprofile__modal-col"><input type="submit" value="Update Account" id="update"></div>
                    </div>
                </div>
                </form>
            </div>
        </div>
    </div>

<section class="banner-section">
    <div class="banner-img"><img src="assets/images/banner-img.png" alt=""></div>
    <div class="banner-overlay">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="link-page">
                        <ul>
                            <li><a href="{{ route('home') }}">Home</a> ></li>
                            <li><a href="{{ url()->previous() }}">Back</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="my-account">
                @foreach ($get_users as $item)
                <div class="image-upload">
                    <form action="" method="POST">
                    <input type="file" name="file" id="user_profile_pic" >
                    <label for="logo" class="upload-field" id="file-label">
                        <div class="file-thumbnail">
                            @if(empty($item->user_image_path))
                            <img id="image-preview" src="https://www.btklsby.go.id/images/placeholder/basic.png" alt="">
                            @else
                            <img id="image-preview" src="{{asset('/storage/media/profileImage/'.$item->user_image_path)}}" alt="">
                            @endif
                            <h3 id="filename">
                                Drag and Drop
                            </h3>
                            <p >Supports JPG,JPEG, PNG</p>
                            <span class="text-danger" id="imageChecked"> </span>
                        </div>
                    </label>
                    </form>
                </div>
                <!-- partial -->
             
                    
        
                <div class="my-details">
                    <h1>{{$item->name}}</h1>
                    <div class="my-details-row">
                        <div class="my-details-col-left"><span>Email Id :</span></div>
                        <div class="my-details-col-right">{{$item->email}}</div>
                    </div>
               
                    <div class="my-details-row">
                        <div class="my-details-col-left"><span>Mobile No :</span></div>
                        <div class="my-details-col-right">{{$item->phone_number}}</div>
                    </div>
                   
                    <div class="my-details-row">
                        <div class="my-details-col-left"><span>Address :</span></div>
                        <div class="my-details-col-right">{{$item->address}}</div>
                    </div>
                    <div class="my-details-row">
                        <button class="btn-edi-Profile" data-id="{{$item->id}}" data-bs-toggle="modal" data-bs-target="#editprofile"><img src="assets/images/edit.png" alt=""> Edit Profile</button>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</section>
<section class="contest-list">
    <div class="container">
        <div class="contest-list-box">
            <div class="contest-list-first">
                @php
                $user_id = Auth::id();
                $all_contests = DB::table('contest_payments')->where('user_id',$user_id)->count();

                // echo "<pre>";
                //     print_r($all_contests);
                //     exit; 
                @endphp
                <ul>
                    <li class="bgF1">
                        <p>Total Contest</p>
                        <h4>{{$all_contests}}</h4>
                    </li>
                    <li class="bgF2">
                        <p>Total Win</p>
                        <h4>20</h4>
                    </li>
                    <li class="bgF3">
                        <p>TAmount won</p>
                        <h4>$520</h4>
                    </li>
                </ul>
            </div>
            <div class="contest-list-box-item">
                <img src="assets/images/icon-daily1.png" alt="">
                <h3>Daily Contest</h3>
                <div class="total-contest-row">
                    <div class="total-contest-col">Total Contest <span class="win-color">{{$all_contests}}</span></div>
                    <div class="total-contest-col-right">Total Win <span class="contest-color">04</span></div>
                </div>
            </div>
            <div class="contest-list-box-item">
                <img src="assets/images/icon-daily2.png" alt="">
                <h3>Weekly Contest</h3>
                <div class="total-contest-row">
                    <div class="total-contest-col">Total Contest <span class="win-color">22</span></div>
                    <div class="total-contest-col-right">Total Win <span class="contest-color">40</span></div>
                </div>
            </div>
            <div class="contest-list-box-item">
                <img src="assets/images/icon-daily3.png" alt="">
                <h3>Monthly Contest</h3>
                <div class="total-contest-row">
                    <div class="total-contest-col">Total Contest <span class="win-color">19</span></div>
                    <div class="total-contest-col-right">Total Win <span class="contest-color">10</span></div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="contest-box">
    <div class="container">
        <h2>Contests list</h2>
        <div class="col-md-4">
            <label>Sort By</label>
            <div class="select_box">
                <select name="sort" id="sort">
                    <option value="NEWDESC">Newest First</option>
                    <option value="ASC">Price -- Low to High</option>
                    <option value="DESC">Price -- High to Low</option>
                </select>
            </div>
        </div>
        <div class="row">
            <?php
                $q_contest_list = DB::table('contest_payments')
                        ->where('user_id', $user_id)
                        ->limit(3)
                        ->get();

                $q_contest_perticipants = DB::table('contest_payments')
                        ->where('user_id', $user_id)
                        ->count();

                foreach ($q_contest_list as $value) {
                    $contest_id[] = $value->contest_unique_id;
                }
                $q_contest_list_data = DB::table('contests')->whereIn('id', $contest_id)->get();
                
                
                 
                
            ?>
            <div class="col">
               
                    @foreach($q_contest_list_data as $contest_data)
                    <?php
                       // for days hours count
                        $now = \Carbon\Carbon::now();
                        $end_date = $contest_data->closing_date;
                        $end_time = $contest_data->closing_time;
                        $cDate = \Carbon\Carbon::parse($end_date);
                        $cHours = \Carbon\Carbon::parse($end_time);
                        $end_days = $now->diffInDays($cDate );
                        $end_hours = $now->diffInHours($cHours);
                   
                        if(strlen($contest_data->description_one) > 150){
                            $description = substr($contest_data->description_one,0,150);
                            $post_description = substr($contest_data->description_one,150,strlen($contest_data->description_one));
                           
                        }
                        

                                
                    ?>
                      <div class="load-more contemt--wrapper">
                        <div class="listing-wrap">
                            <div class="listing__title">
                                <h2> <span id="contest_list_data"> {{$contest_data->contest_type_name}}</span></h2>
                            <div class="listing-design__price">
                                <div class="ribbon__fold"></div>
                            <div class="ribbon__text">
                             2000
                            </div>
                            </div>
                        </div>
                    </div>
                    <div class="ribbon ribbon--large ribbon--info" data-tooltip=""
                    data-tooltip-content="[data-price-tooltip-content-1188035]">
                    <div class="listing__description text-box" data-maxlength="210">
                        <h3><a href="#">{{$contest_data->contest_name}}</a>
                        </h3>
                        <div class="comment">{{$description}}
                            <span class="read-more-show "> <a class="btn-view-details">View Details</a></span>
                            <span class="read-more-content hide_content"> {{$post_description}}
                            <span class="read-more-hide "><a class="btn-view-details">View less</a></span> </span>
                    </div>
                    <br>
                    <div class="participate">
                        <a href="{{route('viewdetails',['id'=>$contest_data->id])}}"
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
                                    <p><span class="days">{{$end_days}} Days </span> </p> 
                                </div>
                                <div class="clockdiv__date">
                                    <p><span class="hours"> {{$end_hours}} Hours</span></p>
                                </div>
                            </div>
                        </li>
                        <input type="hidden" value="{{Auth::id()}}" id="user_id">
                       
                    </ul>
                </div>
        </div>
        </div>        
     </div>

                   
                    @endforeach
                </div>
              
                <div class="btn__seeMore">
                    <a href="#" id="seeMore"><i class="fa fa-spinner" aria-hidden="true"></i> Show More</a>
                </div>
            </div>
        </div>
    </div>
</section>


<script>
    $(document).ready(function(){

        var _token = $('input[name="_token"]').val();
        load_data('', _token);
        function load_data(id="", _token){
                $.ajax({
                    url:"{{route('loadmore')}}",
                    method: "POST",
                    data: {id: id, _token:_token},
                    success: function(data){
                        $('#load_more_button').remove();
                        
                        $('#post_data').append(data);

                    }
                });
        }

        $(document).on('click', '#load_more_button', function(){
            var id = $(this).data('id');

            $('#load_more_button').html('<b>Loading ..</b>');
            load_data(id, _token);

        });
    });


// for contest list sorting 
$(document).ready(function() {  
   
    $(document).on('change', '#sort', function() {
            var getname = $('#sort').val();
            var _token = $('input[name="_token"]').val();
            load_data( getname, _token);
            function load_data( getname, _token) {
                $.ajax({
                    url: "/contestListSorting",
                    method: "POST",
                    data: { getname: getname, _token: _token },
                    success: function(data) {
                        $('.load_more_button').remove();
                        $('#post_data').html(data);

                    }
                });
            }

    });
});


</script>


@endsection