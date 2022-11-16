 


        <div class="row">
          @if(!$gallery_data->isEmpty())
          <div class="load-more">
            <div class="row">
              
              <?php $i = 0;?>
            @foreach($gallery_data as $img_upload_gallery)
            <?php 
                $user_id = $img_upload_gallery->user_id;
                $current_user_id = Auth::id();

            ?>
            @if($current_user_id == $user_id)
              <div class="col-lg-4 col-sm-6">
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
           
           
            </div>
          </div>
           
    
          <div class="btn__seeMore">
            @php
             $lastId = $img_upload_gallery->id;   
            @endphp
              <a href="" id="seeMore" data-id="{{$lastId}}"><i class="fa fa-spinner" aria-hidden="true"></i> Show More</a>
            </div>  
            
            @else
            <span>No more data</span>
          @endif
        </div>
  
