@extends('layouts.app')

@section('content')
<section class="contest-box">
    <div class="container">
        <h2>Contests list</h2>
        <select name="" id="">
            <option value="">Price -- Low to High</option>
            <option value="">Price -- High to Low</option>
            <option value="">Newest First</option>
        </select>
        <div class="listing__top">
            <h3>Sort By</h3>
            
            {{-- <a href="#" class="btn-filter">Price -- Low to High</a>
            <a href="#" class="btn-filter">Price -- High to Low</a>
            <a href="#" class="btn-filter">Newest First</a> --}}
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
