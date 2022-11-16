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
              
                @if(count($con_img_upload_query ) > 0)
            @foreach($con_img_upload_query as $img_upload_gallery)
            <?php 
                $user_id = $img_upload_gallery->user_id;
                $current_user_id = Auth::id();
            ?>
            @if($current_user_id == $user_id)
              <div class="col-lg-4 col-sm-6 galleryData">
                <div class="gallery">
                    <div class="gallery-img"><img src="{{ asset('/storage/media/uploadimage/'.$img_upload_gallery->image_path)}}" alt=""></div>
                    {{-- <div class="gallry-bottom">
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
                    </div> --}}
                </div>
            </div>
            @endif

            @endforeach 
            @endif
           
            </div>
          </div>
            
          <div class="btn__seeMore">
            @php
             $lastId = $img_upload_gallery->imageShow_id;   
            @endphp
              <a href="#" id="seeMore" data-id="{{$lastId}}"><i class="fa fa-spinner" aria-hidden="true"></i> Show More</a>
            </div>      
       
        </div>
    </div>
</section>

@endsection
