@extends('layouts.app')

@section('content')

<section class="banner-section breadcrumbs">
    <div class="banner-overlay">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="link-page">
                        <ul>
                            <li><a href="#">Home</a> ></li>
                            <li> Status</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="my-recent-contest-section">
    <div class="container">
        <div class="responsive-tabs">
            <div class="row">
                <div class="col-md-12">  
                    <div class="select-category">                            
                        <div class="sort-by">
                            <select name="" id="">
                                <option value="">Sort by</option>
                                <option value="">Daily</option>
                                <option value="">Weekly</option>
                                <option value="">Monthly</option>
                            </select>
                        </div>          
                        <ul class="nav nav-tabs responsive-tabs">
                            <li class="active"><a href="#active">Active</a></li>
                            <li><a href="#judging">Judging </a></li>
                            <li><a href="#closed">Closed </a></li>
                            <li><a href="#won">Won </a></li>
                            <li><a href="#watchlist">Watchlist</a></li>
                        </ul>    
                    </div>          
                    <div class="tab-content">
                        <div class="tab-pane active" id="active">
                            <div class="my-recent-contest">
                                <div class="contest-img">
                                    <img src="assets/images/contest-img.png" alt="">
                                    <div class="edit-img"><a href="edit-image.html"><img src="assets/images/edit-img.png" alt=""></a></div>
                                </div>
                                <div class="contest-content">
                                    <div class="contest-header">
                                        <h3>Contest Name: <span>Daily</span></h3>  
                                        <h4>Contest Id: <span><a href="#">#1234567890</a></span></h4>
                                    </div>
                                    <div class="date-countdown">
                                        You have <div id="timer"></div> left to submit your entry
                                    </div>                 
                                    <div class="contest-wrap">
                                        <div class="box">
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Opening Date</div></div>
                                                    <div class="col-6"><div class="box-border-right">11/02/2022</div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Closing Date</div></div>
                                                    <div class="col-6"><div class="box-border-right">11/02/2022</div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Opening Time</div></div>
                                                    <div class="col-6"><div class="box-border-right">10 am</div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Closing Time</div></div>
                                                    <div class="col-6"><div class="box-border-right">12 pm</div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Entry fee</div></div>
                                                    <div class="col-6"><div class="box-border-right"><span class="active">Paid</span></div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Status</div></div>
                                                    <div class="col-6"><div class="box-border-right"><span class="active">Active</span></div></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            
                            <div class="my-recent-contest">
                                <div class="contest-img">
                                    <img src="assets/images/contest-img2.jpg" alt="">
                                    <div class="edit-img"><a href="edit-image.html"><img src="assets/images/edit-img.png" alt=""></a></div>
                                </div>
                                <div class="contest-content">
                                    <div class="contest-header">
                                        <h3>Contest Name: <span>Daily</span></h3>  
                                        <h4>Contest Id: <span><a href="#">#1234567890</a></span></h4>
                                    </div>
                                    <div class="date-countdown">
                                        You have <div id="timer"></div> left to submit your entry
                                    </div>                 
                                    <div class="contest-wrap">
                                        <div class="box">
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Opening Date</div></div>
                                                    <div class="col-6"><div class="box-border-right">11/02/2022</div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Closing Date</div></div>
                                                    <div class="col-6"><div class="box-border-right">11/02/2022</div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Opening Time</div></div>
                                                    <div class="col-6"><div class="box-border-right">10 am</div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Closing Time</div></div>
                                                    <div class="col-6"><div class="box-border-right">12 pm</div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Entry fee</div></div>
                                                    <div class="col-6"><div class="box-border-right"><span class="active">Paid</span></div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Status</div></div>
                                                    <div class="col-6"><div class="box-border-right"><span class="active">Active</span></div></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            
                            <div class="my-recent-contest">
                                <div class="contest-img">
                                    <img src="assets/images/contest-img.png" alt="">
                                    <div class="edit-img"><a href="edit-image.html"><img src="assets/images/edit-img.png" alt=""></a></div>
                                </div>
                                <div class="contest-content">
                                    <div class="contest-header">
                                        <h3>Contest Name: <span>Daily</span></h3>  
                                        <h4>Contest Id: <span><a href="#">#1234567890</a></span></h4>
                                    </div>
                                    <div class="date-countdown">
                                        You have <div id="timer"></div> left to submit your entry
                                    </div>                 
                                    <div class="contest-wrap">
                                        <div class="box">
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Opening Date</div></div>
                                                    <div class="col-6"><div class="box-border-right">11/02/2022</div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Closing Date</div></div>
                                                    <div class="col-6"><div class="box-border-right">11/02/2022</div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Opening Time</div></div>
                                                    <div class="col-6"><div class="box-border-right">10 am</div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Closing Time</div></div>
                                                    <div class="col-6"><div class="box-border-right">12 pm</div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Entry fee</div></div>
                                                    <div class="col-6"><div class="box-border-right"><span class="active">Paid</span></div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Status</div></div>
                                                    <div class="col-6"><div class="box-border-right"><span class="active">Active</span></div></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                        <div class="tab-pane" id="judging">
                            <div class="my-recent-contest">
                                <div class="contest-img">
                                    <img src="assets/images/contest-img2.jpg" alt="">
                                </div>
                                <div class="contest-content">
                                    <div class="contest-header">
                                        <h3>Contest Name: <span>Weekly</span></h3>  
                                        <h4>Contest Id: <span>#1234567895</span></h4>
                                    </div>          
                                    <div class="contest-wrap">
                                        <div class="box">
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Your Rank</div></div>
                                                    <div class="col-6"><div class="box-border-right"><span class="active">1008</span></div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Status</div></div>
                                                    <div class="col-6"><div class="box-border-right"><span class="active">Active</span></div></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="my-recent-contest">
                                <div class="contest-img">
                                    <img src="assets/images/contest-img.png" alt="">
                                </div>
                                <div class="contest-content">
                                    <div class="contest-header">
                                        <h3>Contest Name: <span>Daily</span></h3>  
                                        <h4>Contest Id: <span>#1234567890</span></h4>
                                    </div>          
                                    <div class="contest-wrap">
                                        <div class="box">
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Your Rank</div></div>
                                                    <div class="col-6"><div class="box-border-right"><span class="active">1008</span></div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Status</div></div>
                                                    <div class="col-6"><div class="box-border-right"><span class="active">Active</span></div></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                        <div class="tab-pane" id="closed">
                            
                            <div class="my-recent-contest">
                                <div class="contest-img">
                                    <img src="assets/images/contest-img.png" alt="">
                                </div>
                                <div class="contest-content">
                                    <div class="contest-header">
                                        <h3>Contest Name: <span>Daily</span></h3>  
                                        <h4>Contest Id: <span>#1234567890</span></h4>
                                    </div>          
                                    <div class="contest-wrap">
                                        <div class="box">
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Opening Date</div></div>
                                                    <div class="col-6"><div class="box-border-right">11/02/2022</div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Closing Date</div></div>
                                                    <div class="col-6"><div class="box-border-right">11/02/2022</div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Opening Time</div></div>
                                                    <div class="col-6"><div class="box-border-right">10 am</div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Closing Time</div></div>
                                                    <div class="col-6"><div class="box-border-right">12 pm</div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Entry fee</div></div>
                                                    <div class="col-6"><div class="box-border-right"><span class="active">Paid</span></div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Status</div></div>
                                                    <div class="col-6"><div class="box-border-right"><span class="active">Active</span></div></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="my-recent-contest">
                                <div class="contest-img">
                                    <img src="assets/images/contest-img.png" alt="">
                                </div>
                                <div class="contest-content">
                                    <div class="contest-header">
                                        <h3>Contest Name: <span>Daily</span></h3>  
                                        <h4>Contest Id: <span>#1234567890</span></h4>
                                    </div>          
                                    <div class="contest-wrap">
                                        <div class="box">
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Opening Date</div></div>
                                                    <div class="col-6"><div class="box-border-right">11/02/2022</div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Closing Date</div></div>
                                                    <div class="col-6"><div class="box-border-right">11/02/2022</div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Opening Time</div></div>
                                                    <div class="col-6"><div class="box-border-right">10 am</div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Closing Time</div></div>
                                                    <div class="col-6"><div class="box-border-right">12 pm</div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Entry fee</div></div>
                                                    <div class="col-6"><div class="box-border-right"><span class="active">Paid</span></div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Status</div></div>
                                                    <div class="col-6"><div class="box-border-right"><span class="active">Active</span></div></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                        <div class="tab-pane" id="won">
                            <div class="my-recent-contest">
                                <div class="contest-img">
                                    <img src="assets/images/contest-img.png" alt="">
                                    <div class="edit-img"><a href="edit-image.html"><img src="assets/images/winner-icon.png" alt=""></a></div>
                                </div>
                                <div class="contest-content">
                                    <div class="contest-header">
                                        <h3>Contest Name: <span>Daily</span></h3>  
                                        <h4>Contest Id: <span>#1234567890</span></h4>
                                    </div>            
                                    <div class="contest-wrap">
                                        <div class="box">
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Opening Date</div></div>
                                                    <div class="col-6"><div class="box-border-right">11/02/2022</div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Closing Date</div></div>
                                                    <div class="col-6"><div class="box-border-right">11/02/2022</div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Opening Time</div></div>
                                                    <div class="col-6"><div class="box-border-right">10 am</div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Closing Time</div></div>
                                                    <div class="col-6"><div class="box-border-right">12 pm</div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Entry fee</div></div>
                                                    <div class="col-6"><div class="box-border-right"><span class="active">Paid</span></div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Status</div></div>
                                                    <div class="col-6"><div class="box-border-right"><span class="active">Active</span></div></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane" id="watchlist">
                            <div class="my-recent-contest">
                                <div class="contest-img">
                                    <img src="assets/images/contest-img.png" alt="">
                                </div>
                                <div class="contest-content">
                                    <div class="contest-header">
                                        <h3>Contest Name: <span>Daily</span></h3>  
                                        <h4>Contest Id: <span>#1234567890</span></h4>
                                    </div>          
                                    <div class="contest-wrap">
                                        <div class="box">
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Opening Date</div></div>
                                                    <div class="col-6"><div class="box-border-right">11/02/2022</div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Closing Date</div></div>
                                                    <div class="col-6"><div class="box-border-right">11/02/2022</div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Opening Time</div></div>
                                                    <div class="col-6"><div class="box-border-right">10 am</div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Closing Time</div></div>
                                                    <div class="col-6"><div class="box-border-right">12 pm</div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Entry fee</div></div>
                                                    <div class="col-6"><div class="box-border-right"><span><a href="payment-now.html">Pay Now</a></span></div></div>
                                                </div>
                                            </div>
                                            <div class="box-item">
                                                <div class="row">
                                                    <div class="col-6"><div class="box-border">Status</div></div>
                                                    <div class="col-6"><div class="box-border-right">
                                                        <span class="inactive">In Active</span>
                                                    </div></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
              
                </div>
            </div>
        </div>
    </div>
</section>

@endsection


