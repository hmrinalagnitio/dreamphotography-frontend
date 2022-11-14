@extends('layouts.app')

@section('content')

<section class="banner-section breadcrumbs">
    <div class="banner-overlay">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="link-page">
                        <ul>
                            <li><a href="{{route('home')}}">Home</a> ></li>
                            <li><a href="{{ url()->previous() }}">Back</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="gallery-section">
    <div class="container">
        <h2>My Gallery</h2>
        <div class="row">
          <div class="load-more">
            <div class="row">
              <div class="col-lg-4 col-sm-6">
                <div class="gallery">
                    <div class="gallery-img"><img src="assets/images/gallery-img.png" alt=""></div>
                    <div class="gallry-bottom">
                        <h3>Daily Contest</h3>
                        <div class="galler-row">
                            <div class="gallery-left">Date Of Contest</div>
                            <div class="gallery-right">30/01/22</div>
                        </div>                            
                        <div class="galler-row">
                            <div class="gallery-left">Total Participants</div>
                            <div class="gallery-right">120</div>
                        </div>                         
                        <div class="galler-row">
                            <div class="gallery-left">Your Rank</div>
                            <div class="gallery-right">07</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="gallery">
                    <div class="gallery-img"><img src="assets/images/gallery-img2.png" alt=""></div>
                    <div class="gallry-bottom">
                        <h3>Daily Contest</h3>
                        <div class="galler-row">
                            <div class="gallery-left">Date Of Contest</div>
                            <div class="gallery-right">30/01/22</div>
                        </div>                            
                        <div class="galler-row">
                            <div class="gallery-left">Total Participants</div>
                            <div class="gallery-right">120</div>
                        </div>                         
                        <div class="galler-row">
                            <div class="gallery-left">Your Rank</div>
                            <div class="gallery-right">07</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="gallery">
                    <div class="gallery-img"><img src="assets/images/gallery-img-3.png" alt=""></div>
                    <div class="gallry-bottom">
                        <h3>Daily Contest</h3>
                        <div class="galler-row">
                            <div class="gallery-left">Date Of Contest</div>
                            <div class="gallery-right">30/01/22</div>
                        </div>                            
                        <div class="galler-row">
                            <div class="gallery-left">Total Participants</div>
                            <div class="gallery-right">120</div>
                        </div>                         
                        <div class="galler-row">
                            <div class="gallery-left">Your Rank</div>
                            <div class="gallery-right">07</div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
          </div>
          <div class="load-more">
            <div class="row">
              <div class="col-lg-4 col-sm-6">
                <div class="gallery">
                    <div class="gallery-img"><img src="assets/images/gallery-img2.png" alt=""></div>
                    <div class="gallry-bottom">
                        <h3>Daily Contest</h3>
                        <div class="galler-row">
                            <div class="gallery-left">Date Of Contest</div>
                            <div class="gallery-right">30/01/22</div>
                        </div>                            
                        <div class="galler-row">
                            <div class="gallery-left">Total Participants</div>
                            <div class="gallery-right">120</div>
                        </div>                         
                        <div class="galler-row">
                            <div class="gallery-left">Your Rank</div>
                            <div class="gallery-right">07</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="gallery">
                    <div class="gallery-img"><img src="assets/images/gallery-img-3.png" alt=""></div>
                    <div class="gallry-bottom">
                        <h3>Daily Contest</h3>
                        <div class="galler-row">
                            <div class="gallery-left">Date Of Contest</div>
                            <div class="gallery-right">30/01/22</div>
                        </div>                            
                        <div class="galler-row">
                            <div class="gallery-left">Total Participants</div>
                            <div class="gallery-right">120</div>
                        </div>                         
                        <div class="galler-row">
                            <div class="gallery-left">Your Rank</div>
                            <div class="gallery-right">07</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="gallery">
                    <div class="gallery-img"><img src="assets/images/gallery-img.png" alt=""></div>
                    <div class="gallry-bottom">
                        <h3>Daily Contest</h3>
                        <div class="galler-row">
                            <div class="gallery-left">Date Of Contest</div>
                            <div class="gallery-right">30/01/22</div>
                        </div>                            
                        <div class="galler-row">
                            <div class="gallery-left">Total Participants</div>
                            <div class="gallery-right">120</div>
                        </div>                         
                        <div class="galler-row">
                            <div class="gallery-left">Your Rank</div>
                            <div class="gallery-right">07</div>
                        </div>
                    </div>
                </div>
            </div> 
            </div>
          </div>

          
          <div class="load-more">
            <div class="row">
              <div class="col-lg-4 col-sm-6">
                <div class="gallery">
                    <div class="gallery-img"><img src="assets/images/gallery-img.png" alt=""></div>
                    <div class="gallry-bottom">
                        <h3>Daily Contest</h3>
                        <div class="galler-row">
                            <div class="gallery-left">Date Of Contest</div>
                            <div class="gallery-right">30/01/22</div>
                        </div>                            
                        <div class="galler-row">
                            <div class="gallery-left">Total Participants</div>
                            <div class="gallery-right">120</div>
                        </div>                         
                        <div class="galler-row">
                            <div class="gallery-left">Your Rank</div>
                            <div class="gallery-right">07</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="gallery">
                    <div class="gallery-img"><img src="assets/images/gallery-img2.png" alt=""></div>
                    <div class="gallry-bottom">
                        <h3>Daily Contest</h3>
                        <div class="galler-row">
                            <div class="gallery-left">Date Of Contest</div>
                            <div class="gallery-right">30/01/22</div>
                        </div>                            
                        <div class="galler-row">
                            <div class="gallery-left">Total Participants</div>
                            <div class="gallery-right">120</div>
                        </div>                         
                        <div class="galler-row">
                            <div class="gallery-left">Your Rank</div>
                            <div class="gallery-right">07</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="gallery">
                    <div class="gallery-img"><img src="assets/images/gallery-img-3.png" alt=""></div>
                    <div class="gallry-bottom">
                        <h3>Daily Contest</h3>
                        <div class="galler-row">
                            <div class="gallery-left">Date Of Contest</div>
                            <div class="gallery-right">30/01/22</div>
                        </div>                            
                        <div class="galler-row">
                            <div class="gallery-left">Total Participants</div>
                            <div class="gallery-right">120</div>
                        </div>                         
                        <div class="galler-row">
                            <div class="gallery-left">Your Rank</div>
                            <div class="gallery-right">07</div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
          </div>
          <div class="load-more">
            <div class="row">
              <div class="col-lg-4 col-sm-6">
                <div class="gallery">
                    <div class="gallery-img"><img src="assets/images/gallery-img2.png" alt=""></div>
                    <div class="gallry-bottom">
                        <h3>Daily Contest</h3>
                        <div class="galler-row">
                            <div class="gallery-left">Date Of Contest</div>
                            <div class="gallery-right">30/01/22</div>
                        </div>                            
                        <div class="galler-row">
                            <div class="gallery-left">Total Participants</div>
                            <div class="gallery-right">120</div>
                        </div>                         
                        <div class="galler-row">
                            <div class="gallery-left">Your Rank</div>
                            <div class="gallery-right">07</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="gallery">
                    <div class="gallery-img"><img src="assets/images/gallery-img-3.png" alt=""></div>
                    <div class="gallry-bottom">
                        <h3>Daily Contest</h3>
                        <div class="galler-row">
                            <div class="gallery-left">Date Of Contest</div>
                            <div class="gallery-right">30/01/22</div>
                        </div>                            
                        <div class="galler-row">
                            <div class="gallery-left">Total Participants</div>
                            <div class="gallery-right">120</div>
                        </div>                         
                        <div class="galler-row">
                            <div class="gallery-left">Your Rank</div>
                            <div class="gallery-right">07</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="gallery">
                    <div class="gallery-img"><img src="assets/images/gallery-img.png" alt=""></div>
                    <div class="gallry-bottom">
                        <h3>Daily Contest</h3>
                        <div class="galler-row">
                            <div class="gallery-left">Date Of Contest</div>
                            <div class="gallery-right">30/01/22</div>
                        </div>                            
                        <div class="galler-row">
                            <div class="gallery-left">Total Participants</div>
                            <div class="gallery-right">120</div>
                        </div>                         
                        <div class="galler-row">
                            <div class="gallery-left">Your Rank</div>
                            <div class="gallery-right">07</div>
                        </div>
                    </div>
                </div>
            </div> 
            </div>
          </div>

          
          <div class="load-more">
            <div class="row">
              <div class="col-lg-4 col-sm-6">
                <div class="gallery">
                    <div class="gallery-img"><img src="assets/images/gallery-img.png" alt=""></div>
                    <div class="gallry-bottom">
                        <h3>Daily Contest</h3>
                        <div class="galler-row">
                            <div class="gallery-left">Date Of Contest</div>
                            <div class="gallery-right">30/01/22</div>
                        </div>                            
                        <div class="galler-row">
                            <div class="gallery-left">Total Participants</div>
                            <div class="gallery-right">120</div>
                        </div>                         
                        <div class="galler-row">
                            <div class="gallery-left">Your Rank</div>
                            <div class="gallery-right">07</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="gallery">
                    <div class="gallery-img"><img src="assets/images/gallery-img2.png" alt=""></div>
                    <div class="gallry-bottom">
                        <h3>Daily Contest</h3>
                        <div class="galler-row">
                            <div class="gallery-left">Date Of Contest</div>
                            <div class="gallery-right">30/01/22</div>
                        </div>                            
                        <div class="galler-row">
                            <div class="gallery-left">Total Participants</div>
                            <div class="gallery-right">120</div>
                        </div>                         
                        <div class="galler-row">
                            <div class="gallery-left">Your Rank</div>
                            <div class="gallery-right">07</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="gallery">
                    <div class="gallery-img"><img src="assets/images/gallery-img-3.png" alt=""></div>
                    <div class="gallry-bottom">
                        <h3>Daily Contest</h3>
                        <div class="galler-row">
                            <div class="gallery-left">Date Of Contest</div>
                            <div class="gallery-right">30/01/22</div>
                        </div>                            
                        <div class="galler-row">
                            <div class="gallery-left">Total Participants</div>
                            <div class="gallery-right">120</div>
                        </div>                         
                        <div class="galler-row">
                            <div class="gallery-left">Your Rank</div>
                            <div class="gallery-right">07</div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
          </div>
          <div class="load-more">
            <div class="row">
              <div class="col-lg-4 col-sm-6">
                <div class="gallery">
                    <div class="gallery-img"><img src="assets/images/gallery-img2.png" alt=""></div>
                    <div class="gallry-bottom">
                        <h3>Daily Contest</h3>
                        <div class="galler-row">
                            <div class="gallery-left">Date Of Contest</div>
                            <div class="gallery-right">30/01/22</div>
                        </div>                            
                        <div class="galler-row">
                            <div class="gallery-left">Total Participants</div>
                            <div class="gallery-right">120</div>
                        </div>                         
                        <div class="galler-row">
                            <div class="gallery-left">Your Rank</div>
                            <div class="gallery-right">07</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="gallery">
                    <div class="gallery-img"><img src="assets/images/gallery-img-3.png" alt=""></div>
                    <div class="gallry-bottom">
                        <h3>Daily Contest</h3>
                        <div class="galler-row">
                            <div class="gallery-left">Date Of Contest</div>
                            <div class="gallery-right">30/01/22</div>
                        </div>                            
                        <div class="galler-row">
                            <div class="gallery-left">Total Participants</div>
                            <div class="gallery-right">120</div>
                        </div>                         
                        <div class="galler-row">
                            <div class="gallery-left">Your Rank</div>
                            <div class="gallery-right">07</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="gallery">
                    <div class="gallery-img"><img src="assets/images/gallery-img.png" alt=""></div>
                    <div class="gallry-bottom">
                        <h3>Daily Contest</h3>
                        <div class="galler-row">
                            <div class="gallery-left">Date Of Contest</div>
                            <div class="gallery-right">30/01/22</div>
                        </div>                            
                        <div class="galler-row">
                            <div class="gallery-left">Total Participants</div>
                            <div class="gallery-right">120</div>
                        </div>                         
                        <div class="galler-row">
                            <div class="gallery-left">Your Rank</div>
                            <div class="gallery-right">07</div>
                        </div>
                    </div>
                </div>
            </div> 
            </div>
          </div>
            
            
            <div class="btn__seeMore">
              <a href="#" id="seeMore"><i class="fa fa-spinner" aria-hidden="true"></i> Show More</a>
            </div>        
        </div>
    </div>
</section>

@endsection
