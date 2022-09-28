@extends('layouts.app')

@section('content')

<section class="banner-img-section">
    <img src="{{ asset('') }}assets/images/banner.png" alt="" class="banner-bg">
    <div class="banner-text">
        <div>
            <div class="container">Image Upload Successful</div>
        </div>
    </div>
</section>
<div class="mobile-support">
    <div class="support-logo">
        <ul class="clearfix">
            <li>
              <a href="#" target="_blank">
               <img src="{{ asset('') }}assets/images/support-1.png"alt="">
              </a>
            </li>
            <li>
              <a href="#" target="_blank">
              <img src="{{ asset('') }}assets/images/support-2.png"alt="">
            </a>
          </li>
            <li>
              <a href="#" target="_blank">
                <img src="{{ asset('') }}assets/images/support-3.png"alt="">
                      </a>
                    </li>
            <li>
              <a href="#" target="_blank">
                <img src="{{ asset('') }}assets/images/support-4.png"alt="">
              </a>
            </li>
            <li>
              <a href="#" target="_blank">
                <img src="{{ asset('') }}assets/images/support-5.png"alt="">
              </a>
            </li>
        </ul>
    </div>
</div>
<section class="image-upload-top">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h3>successful upload image</h3>
            </div>
        </div>
    </div>
</section>

<section class="images-upload-section">
    <div class="container">
        <div class="image-upload-box">
         
            <div class="contest_name">
              <h3>Contest Name</h3>
            </div>
            <div class="contest_cat_name">
              <h2>Daily Contest</h2>
            </div>
           
            <div class="row">
                <div class="col-md-3">
                    <div class="upload-img"><img src="{{ asset('') }}assets/images/img.png" alt="">
                    </div>
                </div>
            </div>
            <div class="Payment-div">
                <a href="payment-now.html" class="btn-img-upload">Payment New</a>
            </div>
        </div>

        <div class="image-upload-box">
            <h2>Weekly Contest</h2>
            <div class="row">
                <div class="col-md-3">
                    <div class="upload-img">
                        <img src="{{ asset('') }}assets/images/img.png" alt="">
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="upload-img">
                        <img src="{{ asset('') }}assets/images/img-up.jpg" alt="">
                    </div>
                </div>
            </div>
            <div class="Payment-div">
                <a href="payment-now.html" class="btn-img-upload">Payment New</a>
            </div>
        </div>


        <div class="image-upload-box">
            <h2>Monthly Contest</h2>
            <div class="row">
                <div class="col-md-3">
                    <div class="upload-img">
                        <img src="{{ asset('') }}assets/images/img.png" alt="">
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="upload-img">
                        <img src="{{ asset('') }}assets/images/img-up.jpg" alt="">
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="upload-img">
                        <img src="{{ asset('') }}assets/images/img.png" alt="">
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="upload-img">
                        <img src="{{ asset('') }}assets/images/img-up.jpg" alt="">
                    </div>
                </div>
            </div>
            <div class="Payment-div">
                <a href="payment-now.html" class="btn-img-upload">Payment New</a>
            </div>
        </div>
    </div>
</section>



@endsection
