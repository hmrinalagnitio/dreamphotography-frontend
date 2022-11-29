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
                <div class="editprofile__modal">
                    <h3> Edit Profile</h3>
                    <div class="editprofile__modal-row">
                        <div class="editprofile__modal-col">
                            <label for="">Full Name</label>
                            <input type="text" value="Sanjoy">
                        </div>
                        <div class="editprofile__modal-col">
                            <label for="">Password</label>
                            <input type="password" value="password">
                        </div>
                    </div>
                    <div class="editprofile__modal-row">
                        <div class="editprofile__modal-col">
                            <label for="">Address</label>
                            <input type="text" value="is simply dummy text of the printing and typesetting industry.">
                        </div>
                        <div class="editprofile__modal-col">
                            <label for="">Country</label>
                            <select>
                                <option value="">Country</option>
                                <option value="">Country 1</option>
                        </select>
                        </div>
                    </div>
                    <div class="editprofile__modal-row">
                        <div class="editprofile__modal-col">
                            <label for="">Zip Code</label>
                            <input type="text" value="714444">
                        </div>
                        <div class="editprofile__modal-col">
                            <label for="">Mobile No</label>
                            <input type="text" value="+91 983 065 8028">
                        </div>
                    </div>
                   
                    <div class="editprofile__modal-row">
                        <div class="editprofile__modal-col"><input type="submit" value="Update Account"></div>
                    </div>
                </div>
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
                            <li><a href="#">Home</a> ></li>
                            <li><a href="#">Login</a> ></li>
                            <li>My Account</li>
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
                    <h1>Alex Jones</h1>
                    <div class="my-details-row">
                        <div class="my-details-col-left"><span>Email Id :</span></div>
                        <div class="my-details-col-right">{{$item->email}}</div>
                    </div>
                    <div class="my-details-row">
                        <div class="my-details-col-left"><span>Gender:</span></div>
                        <div class="my-details-col-right">Male</div>
                    </div>
                    <div class="my-details-row">
                        <div class="my-details-col-left"><span>Mobile No :</span></div>
                        <div class="my-details-col-right">+01 234-567-89</div>
                    </div>
                   
                    <div class="my-details-row">
                        <div class="my-details-col-left"><span>Address :</span></div>
                        <div class="my-details-col-right">52/1 Lorem ipsum73, Dummy place11A, India, Pin-700001</div>
                    </div>
                    <div class="my-details-row">
                        <button class="btn-edi-Profile" data-bs-toggle="modal" data-bs-target="#editprofile"><img src="assets/images/edit.png" alt=""> Edit Profile</button>
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
                <ul>
                    <li class="bgF1">
                        <p>Total Contest</p>
                        <h4>52</h4>
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
                    <div class="total-contest-col">Total Contest <span class="win-color">17</span></div>
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
        <div class="listing__top">
            <h3>Sort By</h3>
            <a href="#" class="btn-filter">Price -- Low to High</a>
            <a href="#" class="btn-filter">Price -- High to Low</a>
            <a href="#" class="btn-filter">Newest First</a>
        </div>
        <div class="row">
            <div class="col">
                <div class="load-more">
                    <div class="listing-wrap">
                        <div class="listing__title">
                            <h2>Weekly <span>Contest</span></h2>
                        </div>
                        <div class="listing__description text-box" data-maxlength="210">
                            <h3><a href="#">Contest Name</a></h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit nulla laudantium voluptate, consequuntur esse magnam dolorem numquam perspiciatis incidunt maxime perferendis quibusdam unde, vitae expedita quam laborum delectus.
                                Natus, officiis!.........</p>
                            <a href="view-details.html" class="btn-view-details">View Details</a>
                            <a href="payment-now.html" class="btn-participate-now">Participate Now</a>
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
                                            <p><span class="days"></span> Days,</p>
                                        </div>
                                        <div class="clockdiv__date">
                                            <p><span class="hours"></span> Hours</p>
                                        </div>
                                    </div>
                                </li>
                                <li><a href="" class="btn-Watch">Watch</a></li>

                            </ul>
                        </div>
                    </div>
                </div>
                <div class="load-more">
                    <div class="listing-wrap">
                        <div class="listing__title">
                            <h2>Monthly <span>Contest</span></h2>
                        </div>
                        <div class="listing__description text-box" data-maxlength="210">
                            <h3><a href="#">Contest Name</a></h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit nulla laudantium voluptate, consequuntur esse magnam dolorem numquam perspiciatis incidunt maxime perferendis quibusdam unde, vitae expedita quam laborum delectus.
                                Natus, officiis!..........</p>
                            <a href="view-details.html" class="btn-view-details">View Details</a>
                            <a href="payment-now.html" class="btn-participate-now">Participate Now</a>
                        </div>
                        <div class="listing__last">
                            <ul>
                                <li><i class="fa fa-user"></i>
                                    <p>100 <span>Paticipant</span></p>
                                </li>
                                <li>
                                    <div class="clockdiv" data-date="December 22, 2022 18:22:23">
                                        <i class="fa fa-clock-o"></i>
                                        <div class="clockdiv__date">
                                            <p><span class="days"></span> Days,</p>
                                        </div>
                                        <div class="clockdiv__date">
                                            <p><span class="hours"></span> Hours</p>
                                        </div>
                                    </div>
                                </li>
                                <li><a href="" class="btn-Watch">Watch</a></li>

                            </ul>
                        </div>
                    </div>
                </div>
                <div class="load-more">
                    <div class="listing-wrap">
                        <div class="listing__title">
                            <h2>yearly <span>Contest</span></h2>
                        </div>
                        <div class="listing__description text-box" data-maxlength="210">
                            <h3><a href="#">Contest Name</a></h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit nulla laudantium voluptate, consequuntur esse magnam dolorem numquam perspiciatis incidunt maxime perferendis quibusdam unde, vitae expedita quam laborum delectus.
                                Natus, officiis!...........</p>
                            <a href="view-details.html" class="btn-view-details">View Details</a>
                            <a href="payment-now.html" class="btn-participate-now">Participate Now</a>
                        </div>
                        <div class="listing__last">
                            <ul>
                                <li><i class="fa fa-user"></i>
                                    <p>100 <span>Paticipant</span></p>
                                </li>
                                <li>
                                    <div class="clockdiv" data-date="December 22, 2023 21:14:01">
                                        <i class="fa fa-clock-o"></i>
                                        <div class="clockdiv__date">
                                            <p><span class="days"></span> Days,</p>
                                        </div>
                                        <div class="clockdiv__date">
                                            <p><span class="hours"></span> Hours</p>
                                        </div>
                                    </div>
                                </li>
                                <li><a href="" class="btn-Watch">Watch</a></li>

                            </ul>
                        </div>
                    </div>
                </div>
                <div class="load-more">
                    <div class="listing-wrap">
                        <div class="listing__title">
                            <h2>Weekly <span>Contest</span></h2>
                        </div>
                        <div class="listing__description text-box" data-maxlength="210">
                            <h3><a href="#">Contest Name</a></h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit nulla laudantium voluptate, consequuntur esse magnam dolorem numquam perspiciatis incidunt maxime perferendis quibusdam unde, vitae expedita quam laborum delectus.
                                Natus, officiis!.........</p>
                            <a href="view-details.html" class="btn-view-details">View Details</a>
                            <a href="payment-now.html" class="btn-participate-now">Participate Now</a>
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
                                            <p><span class="days"></span> Days,</p>
                                        </div>
                                        <div class="clockdiv__date">
                                            <p><span class="hours"></span> Hours</p>
                                        </div>
                                    </div>
                                </li>
                                <li><a href="" class="btn-Watch">Watch</a></li>

                            </ul>
                        </div>
                    </div>
                </div>
                <div class="load-more">
                    <div class="listing-wrap">
                        <div class="listing__title">
                            <h2>Monthly <span>Contest</span></h2>
                        </div>
                        <div class="listing__description text-box" data-maxlength="210">
                            <h3><a href="#">Contest Name</a></h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit nulla laudantium voluptate, consequuntur esse magnam dolorem numquam perspiciatis incidunt maxime perferendis quibusdam unde, vitae expedita quam laborum delectus.
                                Natus, officiis!..........</p>
                            <a href="view-details.html" class="btn-view-details">View Details</a>
                            <a href="payment-now.html" class="btn-participate-now">Participate Now</a>
                        </div>
                        <div class="listing__last">
                            <ul>
                                <li><i class="fa fa-user"></i>
                                    <p>100 <span>Paticipant</span></p>
                                </li>
                                <li>
                                    <div class="clockdiv" data-date="December 22, 2022 18:22:23">
                                        <i class="fa fa-clock-o"></i>
                                        <div class="clockdiv__date">
                                            <p><span class="days"></span> Days,</p>
                                        </div>
                                        <div class="clockdiv__date">
                                            <p><span class="hours"></span> Hours</p>
                                        </div>
                                    </div>
                                </li>
                                <li><a href="" class="btn-Watch">Watch</a></li>

                            </ul>
                        </div>
                    </div>
                </div>
                <div class="load-more">
                    <div class="listing-wrap">
                        <div class="listing__title">
                            <h2>yearly <span>Contest</span></h2>
                        </div>
                        <div class="listing__description text-box" data-maxlength="210">
                            <h3><a href="#">Contest Name</a></h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit nulla laudantium voluptate, consequuntur esse magnam dolorem numquam perspiciatis incidunt maxime perferendis quibusdam unde, vitae expedita quam laborum delectus.
                                Natus, officiis!...........</p>
                            <a href="view-details.html" class="btn-view-details">View Details</a>
                            <a href="payment-now.html" class="btn-participate-now">Participate Now</a>
                        </div>
                        <div class="listing__last">
                            <ul>
                                <li><i class="fa fa-user"></i>
                                    <p>100 <span>Paticipant</span></p>
                                </li>
                                <li>
                                    <div class="clockdiv" data-date="December 22, 2023 21:14:01">
                                        <i class="fa fa-clock-o"></i>
                                        <div class="clockdiv__date">
                                            <p><span class="days"></span> Days,</p>
                                        </div>
                                        <div class="clockdiv__date">
                                            <p><span class="hours"></span> Hours</p>
                                        </div>
                                    </div>
                                </li>
                                <li><a href="" class="btn-Watch">Watch</a></li>

                            </ul>
                        </div>
                    </div>
                </div>
                <div class="load-more">
                    <div class="listing-wrap">
                        <div class="listing__title">
                            <h2>Weekly <span>Contest</span></h2>
                        </div>
                        <div class="listing__description text-box" data-maxlength="210">
                            <h3><a href="#">Contest Name</a></h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit nulla laudantium voluptate, consequuntur esse magnam dolorem numquam perspiciatis incidunt maxime perferendis quibusdam unde, vitae expedita quam laborum delectus.
                                Natus, officiis!.........</p>
                            <a href="view-details.html" class="btn-view-details">View Details</a>
                            <a href="payment-now.html" class="btn-participate-now">Participate Now</a>
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
                                            <p><span class="days"></span> Days,</p>
                                        </div>
                                        <div class="clockdiv__date">
                                            <p><span class="hours"></span> Hours</p>
                                        </div>
                                    </div>
                                </li>
                                <li><a href="" class="btn-Watch">Watch</a></li>

                            </ul>
                        </div>
                    </div>
                </div>
                <div class="load-more">
                    <div class="listing-wrap">
                        <div class="listing__title">
                            <h2>Monthly <span>Contest</span></h2>
                        </div>
                        <div class="listing__description text-box" data-maxlength="210">
                            <h3><a href="#">Contest Name</a></h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit nulla laudantium voluptate, consequuntur esse magnam dolorem numquam perspiciatis incidunt maxime perferendis quibusdam unde, vitae expedita quam laborum delectus.
                                Natus, officiis!..........</p>
                            <a href="view-details.html" class="btn-view-details">View Details</a>
                            <a href="payment-now.html" class="btn-participate-now">Participate Now</a>
                        </div>
                        <div class="listing__last">
                            <ul>
                                <li><i class="fa fa-user"></i>
                                    <p>100 <span>Paticipant</span></p>
                                </li>
                                <li>
                                    <div class="clockdiv" data-date="December 22, 2022 18:22:23">
                                        <i class="fa fa-clock-o"></i>
                                        <div class="clockdiv__date">
                                            <p><span class="days"></span> Days,</p>
                                        </div>
                                        <div class="clockdiv__date">
                                            <p><span class="hours"></span> Hours</p>
                                        </div>
                                    </div>
                                </li>
                                <li><a href="" class="btn-Watch">Watch</a></li>

                            </ul>
                        </div>
                    </div>
                </div>
                <div class="load-more">
                    <div class="listing-wrap">
                        <div class="listing__title">
                            <h2>yearly <span>Contest</span></h2>
                        </div>
                        <div class="listing__description text-box" data-maxlength="210">
                            <h3><a href="#">Contest Name</a></h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit nulla laudantium voluptate, consequuntur esse magnam dolorem numquam perspiciatis incidunt maxime perferendis quibusdam unde, vitae expedita quam laborum delectus.
                                Natus, officiis!...........</p>
                            <a href="view-details.html" class="btn-view-details">View Details</a>
                            <a href="payment-now.html" class="btn-participate-now">Participate Now</a>
                        </div>
                        <div class="listing__last">
                            <ul>
                                <li><i class="fa fa-user"></i>
                                    <p>100 <span>Paticipant</span></p>
                                </li>
                                <li>
                                    <div class="clockdiv" data-date="December 22, 2023 21:14:01">
                                        <i class="fa fa-clock-o"></i>
                                        <div class="clockdiv__date">
                                            <p><span class="days"></span> Days,</p>
                                        </div>
                                        <div class="clockdiv__date">
                                            <p><span class="hours"></span> Hours</p>
                                        </div>
                                    </div>
                                </li>
                                <li><a href="" class="btn-Watch">Watch</a></li>

                            </ul>
                        </div>
                    </div>
                </div>

                <div class="btn__seeMore">
                    <a href="#" id="seeMore"><i class="fa fa-spinner" aria-hidden="true"></i> Show More</a>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection