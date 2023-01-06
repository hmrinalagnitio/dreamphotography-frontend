<div class="row">
  
          @if(!$gallery_data->isEmpty())
          <div class="load-more">
            <div class="row">
             <?php $i = 0;?> 
            @foreach($gallery_data as $img_upload_gallery)
            <?php 
                // echo "<pre>";
                // print_r($img_upload_gallery);
               
                $user_id = $img_upload_gallery->user_id;
                $contest_unique_id[] = $img_upload_gallery->contest_unique_id;
                $imageShow_id[] = $img_upload_gallery->imageShow_id;
                $current_user_id = Auth::id();
                $q = DB::table('users')->where('id', $user_id)->first();
                $user_img_id = $q->user_id; 

                $gallery_images = DB::table('contest_gallery_imges')
                      ->where('user_id', $current_user_id)
                      ->get();
                    
                 foreach ($gallery_images as $value) {
                      $user_id = $value->user_id;

                 }     
                 

             
                
            ?>
              @if(isset($user_id))
           
              <div class="col-lg-4 col-sm-6">
                <div class="gallery">
                    <div class="gallery-img">
                      <img src="{{ asset('/storage/media/galleryImage/'.$user_img_id.'/'.$img_upload_gallery->image_path)}}" alt="">
                    </div>
                  
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
              @else
              <div class="empty">
                No Data Available
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
      
  
