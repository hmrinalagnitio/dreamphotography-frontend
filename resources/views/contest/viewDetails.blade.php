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
                      </ul>
                  </div>
              </div>
          </div>
      </div>
  </div>
</section>



@foreach($contest_query as $contest_data)
           
<section class="view-details__section">
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-6">
        <div class="">
          <h2 class="view-details__tiitle">{{$contest_data->contest_name}}</h2>
          <a href="javascript:void();" class="btn__open">Open</a>
        </div>
      </div>
   
      <div class="col-lg-4 col-md-6">
        <div class="text-align-right">
          <h3 class="contest__id">Contests ID: <a href="#">{{$contest_data->contest_id}}</a></h3>              
          <ul class="guarnteed">
            @php 
              $q = DB::table('wacth_lists')->where('contest_id', $contest_data->contest_id)->count();
             
            @endphp
            <li><img src="{{ asset('')}}/assets/images/Watch__icon.png" alt=""> Watch({{$q}})</li>
          </ul>
          <a href="{{ url('imageupload/'.$contest_data->id) }}" data-id="{{url('viewdetails/'.$contest_data->id)}}" class="btn-submit">Submit Photo</a>
          <input type="hidden" id="next_hidden_url" class="next_hidden_url" value=" {{url('imageupload/'.$contest_data->id)}} ">
        </div>
      </div>
    </div>
  </div>
</section>
<section class="time-line__section">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="submit-design__timeline">
          @php 
          $now =  \Carbon\Carbon::now();
          $end_date = $contest_data->closing_date;
          $end_time = $contest_data->closing_time;
          $cDate = \Carbon\Carbon::parse($end_date);
          $cHours =  \Carbon\Carbon::parse($end_time);
          $end_days = $now->diffInDays($cDate );
          $end_hours = $now->diffInHours($cHours);
          @endphp
          <img src="{{ asset('')}}/assets/images/timeline.png" alt=""> You have {{$end_days}} days,  {{$end_hours}} hour left to Submit Photo
        </div>
      </div>
    </div>
  </div>
</section>
<section class="data-content">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <h3 class="data-content-titel">Contests Details</h3>
        <p>{{$contest_data->description_one}}</p>
      </div>
    </div>
  </div>
</section>
<section class="entry-fee">
  <div class="container">
    <div class="row">
      <div class="col-lg-6">
        <h3 class="data-content-titel-sub">Total Section</h3>
     
            <?php 
               $i = 1;
               ?>
          @foreach($contest_category as $con_cat)
          <?php 
            $con_cat_data = $con_cat->contest_cat_name;
          ?>
              <h4 class="entry-fee___titel">{{$i++}}.{{$con_cat_data}}  </h4>
          @endforeach
           
          <?php 
             $i++;
            ?>
         
    
      
      </div>
      <div class="col-lg-6">
        <h3 class="data-content-titel-sub">Entry Fee</h3>
      
        <h4 class="entry-fee___titel"> <span>${{$contest_data->entry_fees	}}</span></h4>
    
       
      </div>
      <hr>
    </div>
  </div>
</section>

@php


@endphp


<div class="body-view-detele">        
    <div class="container">
        <div class="row">
            <div class="col-md-12">
               
                    
                  <div class="price">
                    
                   @foreach($contest_prize as $con_prize)
                    <div class="price-box">
                      <i class="fa fa-trophy {{$con_prize->prize_description}}" aria-hidden="true"></i>
                      <h3 class="first-prize__titel">{{$con_prize->prize_name}} </h3>
                      <h5> <span class="blueviolet">${{$con_prize->prize_amount}}</span> </h5>
                   
                    </div>
                    @endforeach
                 
                  
                   
                </div>
                    
              <a href="javascript:void(0)" class="banner-add">Banner</a>
            </div>
        </div>
    </div>
</div>
<section class="data-protection__section">
  <div class="container">
    <div class="row">
      <div class="col-sm-12">
        <div class="data-protection">
          <h2 class="data-protection__title">Data Protection</h2>
          <p>{{$contest_data->data_protection}}</p>        
        </div>            
      </div>
    </div>
  </div>
</section>

@endforeach

@endsection

