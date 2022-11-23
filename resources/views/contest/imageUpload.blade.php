@extends('layouts.app')

@section('content')


<section class="banner-section breadcrumbs">
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
        </div>
    </div>
</section>
<div class="mobile-support">
    <div class="support-logo">
        <ul class="clearfix">
            <li><a href="#" target="_blank"><img src="{{ asset('') }}assets/images/support-1.png"
                        alt=""></a></li>
            <li><a href="#" target="_blank"><img src="{{ asset('') }}assets/images/support-2.png"
                        alt=""></a></li>
            <li><a href="#" target="_blank"><img src="{{ asset('') }}assets/images/support-3.png"
                        alt=""></a></li>
            <li><a href="#" target="_blank"><img src="{{ asset('') }}assets/images/support-4.png"
                        alt=""></a></li>
            <li><a href="#" target="_blank"><img src="{{ asset('') }}assets/images/support-5.png"
                        alt=""></a></li>
        </ul>
    </div>
</div>



<section class="image-upload-top">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h3>Upload image One By One</h3>
                <p>In blank field named "Title" write the name of the photo - <span>Use ONLY the English Alphabet
                        A-Z</span></p>
                <h3>PLEASE DO NOT USE:</h3>
                <p>! @ # $ % ^ } & * ] ’ ( [ ) _ + / ~ : > { < ? ” | . , ;</p>
                        <h3>Wait in an empty box appears photo (that means we are received this photo and go to next
                            image upload.</h3>
                        <p><span>Please, upload your photos In "Jpg" format. Make sure that each Me Is no larger than 2
                      MB.</span>
                        </p>
            </div>
        </div>
    </div>
</section>




<div class="payment">
    @foreach($contest_image_list as $key => $image_list)
    <?php $con_unique_id = $image_list->contest_unique_id; ?>
    @endforeach
    <div class="payment_btn">
        @php
        $user_id = Auth::id();
      
            $q = DB::table('contest_payments')->where('contest_unique_id', $con_unique_id)->get();
                foreach ($q as  $value) {
                    $p_user_id = $value->user_id;
                    $paid_con_unique_id = $value->contest_unique_id;
                    $payment_status = $value->payment_status;
                } 
                @endphp

                @if($q->count() == 0)
                <a href="{{route('payment', ['id'=>$con_unique_id])}}" class="btn btn-primary">Pay Now</a>
                @else
                    @if(($p_user_id == $user_id) && ($con_unique_id == $paid_con_unique_id))
                        @if($payment_status == 'COMPLETED')
                            <button class="btn btn-primary disabled"> Paid</button>
                        @endif
                    @else
                        <a href="{{route('payment', ['id'=>$con_unique_id])}}" class="btn btn-primary">Pay Now</a>
                    @endif
                @endif
          
    </div>
</div>

@foreach($contest_image_list as $key => $image_list)
    @php
        $con_unique_id = $image_list->contest_unique_id;
        $contest_cat_slug_name = $image_list->contest_cat_name;
        $i = 0;
    @endphp

<div class="container">
    <section class="images-upload-section">
        <div class="container">
            <div class="image-upload-box">
                
                <h2>{{ $contest_cat_slug_name }} </h2>
                <div class="row">
                    @php
                        $num_of_img = $image_list->number_of_image;
                    @endphp
                    @for($q= 0; $q < $num_of_img; $q++)
                        @php
                            $uid = $q.$key;
                            $gallery_added_query = DB::table('contest_gallery_imges')->where('gallery_image_show_id', $uid)
                                                    ->where('gallery_contest_unique_id',$con_unique_id)
                                                    ->where('user_id', $user_id )->get();
                            
                        @endphp

                        <div class="col-md-3">
                            <div class="upload-img">
                                <div class="gallery-tooltip">
                                   
                                    @if($gallery_added_query->count() == 0)
                                    @php 
                                    $imgae_check_validation = DB::table('contest_image_uploads')
                                        ->where('user_id', $user_id)
                                        ->where('contest_unique_id',$con_unique_id )
                                        ->where('imageShow_id', $uid)
                                        ->count();
                                     
                                    @endphp
                                  
                                    @endif
                                </div>
                               
                                <?php
                            $user_id = Auth::id(); 
                          
                            $img_data = DB::table('contest_image_uploads')
                                ->where('user_id', $user_id)
                                ->where('contest_unique_id', $con_unique_id)
                                ->where('imageShow_id', $uid)
                                ->get();
                        
                            $img_id = '';
                            $contest_uniq_id = '';

                         if(($img_data)){
                                             
                            foreach ($img_data as $data) {
                                $img_path = $data->image_path;
                                $img_id = $data->imageShow_id; 
                                
    
                            }
                        }
                      
                        ?>

                            </div>

                          
                            <div class="img-title jobDetail">
                                <h3>Title</h3>
                                <input type="hidden" name="contest_unique_id" id="contest_unique_id"
                                    value="{{ $image_list->contest_unique_id }}">
                                <input type="hidden" name="contest_id" id="contest_id"
                                    value="{{ $image_list->contest_id }}">
                                <input type="hidden" name="number_of_image" id="number_of_image{{ $uid }}"
                                    value="{{ $image_list->number_of_image }}">
                                <input type="hidden" name="contest_cat_name" id="contest_cat_name{{ $uid }}"
                                    value="{{ $image_list->contest_cat_name }}">
                                <input type="hidden" name="contest_cat_slug" id="contest_cat_slug{{ $uid }}"
                                    value="{{ $image_list->contest_cat_slug }}">
                                <input type="hidden" name="imageShow_id" id="imageShow_id" value="{{ $uid }}">
                             
                               
                            </div>
                            
                            <form action="" id="upload-image-form" method="POST" enctype="multipart/form-data">
                                @csrf
                               
                                 {{-- drag --}}

                 
<div class="image-upload">
       
    <input type="file" name="" id="imageUpload{{$uid}}"  >
    <input type="hidden" name="" id="imageUpload_id{{$uid}}" value="{{$uid}}"  >
    <input type="hidden" name="" id="delete_con_unique_id" value="{{$con_unique_id}}">
    <label for="logo" class="upload-field" id="file-label">
        <div class="file-thumbnail">
            @if($img_id == $uid)
            <img src="{{ asset('/storage/media/uploadimage/'.$img_path ) }}" 
            id="image-preview{{$uid}}" name="picture" alt="">
            <div class="del-icon delete_id{{ $img_id }}">
                <input type="hidden" name="delete_img_id" id="delete_img_id{{ $img_id }}" value="{{ $img_id }}">
                <i class="fa fa-trash" aria-hidden="true"></i>
            </div> 
            <div class="plus-icon add_gallery_id{{ $img_id }}">
                <input type="hidden" name="add_to_gallery" id="add_to_gallery{{ $img_id }}" value="{{ $img_id }}">
                <i class="fa fa-plus" aria-hidden="true"></i>
            </div> 
            <div class="minus-icon remove_gallery_id{{ $img_id }}">
                <input type="hidden" name="remove_to_gallery" id="remove_to_gallery{{ $img_id }}" value="{{ $img_id }}">
                <i class="fa fa-minus" aria-hidden="true"></i>
            </div> 
            @else
            <img id="image-preview{{$uid}}" src="https://www.btklsby.go.id/images/placeholder/basic.png" alt="" class="defult-img">
            <h3 id="filename{{$uid}}">
                <div class="drag{{$uid}}">
                    Drag and Drop
                </div>
              
            </h3>
            <span class="text-danger" id="imageChecked{{ $uid }}"> </span>
            <div class="support{{$uid}}">
                <p>Supports JPG, PNG, SVG</p>
            </div>
            @endif
           
        </div>
    </label>
</div>

        {{-- drag img end --}}
                              
        </form>                     
    </div>

                        <!---itemlist--->
                        <script>


                            
                            $(document).ready(function () {
                                //name field 
                                var title = $("#title{{ $uid }}").val();
                                var image_id = $("#imagePreview{{ $uid }}").val();
                                if (title == '' && image_id == '') {
                                    $(".img-button{{ $uid }}").hide();
                                }
                                //image file 00000
                                $('#image-msg{{ $uid }}').hide();
                                $('#size-msg{{ $uid }}').hide();
                                $("#imageUpload{{ $uid }}").change(function (e) {
                                  
                                    const file = e.target.files[0];
                                    let url = window.URL.createObjectURL(file);
                                    var numb = $(this)[0].files[0].size / 1024 / 1024;
                                    
                                    numb = numb.toFixed(2);
                                    var extension = $(this).val().split('.').pop().toLowerCase();
                                    var validFileExtensions = ['jpeg', 'jpg', 'PNG', 'png', 'svg'];
                                    if (numb >= 2) {
                                        
                                        $('#imageChecked{{ $uid }}').show();
                                        $("#imageChecked{{ $uid }}").addClass("border-error");
                                        $("#imageChecked{{ $uid }}").html(
                                            "Please select image less then 2MB");
                                        $("#image-preview{{ $uid }}").attr('src', url).hide();
                                       
                                    } else if ($.inArray(extension, validFileExtensions) == -1) {
                                        $(".img-button{{ $uid }}").hide();
                                        $('#imageChecked{{ $uid }}').show();
                                        $("#imageChecked{{ $uid }}").addClass("border-error");
                                        $("#imageChecked{{ $uid }}").html(
                                            "Only 'JPG', 'PNG', 'png', 'JPEG', 'svg' type of file is allowed!"
                                        );
                                        $("#image-preview{{ $uid }}").attr('src', url).hide();
                                    
                                    } else {
                                        $('#imageChecked{{ $uid }}').hide();
                                        $(".img-button{{ $uid }}").show();
                                        $("#image-preview{{ $uid }}").attr('src', url).show();
                                        // ===========================================
                                        //      IMAGE UPLOAD and fetch from database
                                        // ===========================================

                                            $(document).ready(function () {

                                                var _token = $('input[name="_token"]').val();
                                                var imageShow_id = $('#imageUpload_id{{$uid}}').val();
                                                var contest_unique_id = $('#contest_unique_id').val();
                                                var contest_id = $('#contest_id').val();
                                                var category_name = $('#contest_cat_name{{ $uid }}').val();
                                                var image_no = $('#number_of_image{{ $uid }}').val();
                                                var fileName = $('#imageUpload{{ $uid }}').val();
                                                var fileExtension = fileName.substring(fileName.lastIndexOf('.') + 1);
                                                var file_data = $("#imageUpload{{ $uid }}").prop("files")[0];
                                                var title = $('#title{{ $uid }}').val();

                                                fd = new FormData();
                                                fd.append('_token', _token);
                                                fd.append('title', title)
                                                fd.append('file', file_data);
                                                fd.append('imageShow_id', imageShow_id);
                                                fd.append('contest_unique_id', contest_unique_id);
                                                fd.append('contest_id', contest_id);
                                                fd.append('category_name', category_name);
                                                fd.append('image_no', image_no);

                                                $.ajax({
                                                    url: '/insertimage/',
                                                    type: 'post',
                                                    datatype: 'script',
                                                    cache: false,
                                                    data: fd,
                                                    contentType: false,
                                                    processData: false,
                                                    success: function (res) {
                                                        location.reload();
                                                    
                                                    }
                                                });
                                            });
                                            // insert image end
                                    }
                                   
                                });
                                // for image upload 
                            });

                         
                            // add to gallery 
                            $('.addedgallery').hide();
                            $(document).on('click', '.add_gallery_id{{$uid}}', function(){
                                
                                var imageShow_id =$('#add_to_gallery{{$uid}}').val();
                                var _token = $('input[name="_token"]').val();
                                var contest_unique_id = $('#contest_unique_id').val();
                                $.ajax({
                                    method: "POST",
                                    url: "{{route('addtogallery')}}",
                                    data:{
                                        '_token':_token,
                                        'imageShow_id':imageShow_id,
                                        'contest_unique_id':contest_unique_id,
                                    },
                                    success:function(res){
                                            // console.log(res);
                                            location.reload();       
                                    }
                                });               
                                                        
                            });

                            // delete image 
                            $(document).on('click', '.delete_id{{$uid}}', function(){
                                var delete_image_id = $('#delete_img_id{{$uid}}').val();
                                var delete_con_unique_id = $('#delete_con_unique_id').val();
                              
                                $.ajax({
                                    method:"post",
                                    url:"/deleteImage",
                                    data:{
                                        'delete_image_id':delete_image_id,
                                        'delete_con_unique_id':delete_con_unique_id
                                    },
                                    success:function(response){
                                        // console.log(response);
                                        location.reload();

                                    }
                                });

                            })
                              
                        
                            
                  
                        </script>

                    @endfor


                    @php
                        $i++;
                    @endphp
                </div>
            </div>
    </section>
@endforeach

@endsection


