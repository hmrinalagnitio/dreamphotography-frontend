@extends('layouts.app')

@section('content')


<section class="banner-section breadcrumbs">
    <div class="banner-overlay">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="link-page">
                        <ul>
                            <li><a href="{{ route('homepage') }}">Home</a> ></li>
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
                                MB.</span></p>
            </div>
        </div>
    </div>
</section>


@foreach($contest_image_list as $image_list)
    @php
        $contest_cat_slug_name = json_decode($image_list->contest_cat_slug);
        $i = 0;
    @endphp


    <section class="images-upload-section">

        @foreach($contest_cat_slug_name as $cat_name)


            <div class="container">
                <div class="image-upload-box">
                    <h2>{{ $cat_name }}</h2>

                    <div class="row">
                        @php


                            $num_of_img = json_decode($image_list->number_of_image);
                        @endphp
                        @for($q= 0; $q < $num_of_img[$i]; $q++)
                            @php
                                $uid = $cat_name.$q;
                            @endphp
                            <div class="col-md-3">
                                <div class="upload-img">
                                    <img src="" id="imagePreview{{ $uid }}" name="picture" alt="">
                                </div>
                                <button class="btn-img-upload apply4job">Upload Image</button>

                                <div class="img-title jobDetail">
                                    <h3>Title</h3>

                                    <form action="{{route('insertimage')}}" id="upload-image-form" method="POST" enctype="multipart/form-data">
                                        @csrf
                                        <input type="hidden" name="contest_name" id="contest_name" value="{{ $image_list->contest_name }}">
                                        <input type="hidden" name="category" id="category" value="{{ $cat_name }}">
                                        <input type="hidden" name="img_no" id="img_no" value="{{ $q+1 }}">
                                        <input type="hidden" name="con_id" id="con_id"
                                            value="{{ $image_list->contest_id }}">
                                        <input type="text" name="title" placeholder="Title" id="title{{ $uid }}"
                                            class="AlphabetsOnly">
                                        <input type="file" name="image" id="imageUpload{{ $uid }}"
                                            class="file-upload" />
                                        <span class="text-danger" id="imageChecked{{ $uid }}"> </span>
                                        {{-- <div id="image-msg{{$uid }}" class="image-msg">Please
                                        select image less then 5MB
                                </div> --}}
                                {{-- <span id="size-msg{{$uid }}" class="size-msg">Only 'JPG' type
                                of file is allowed!</span> --}}
                                <button type="submit" class="btn-img-upload img-button{{ $uid }}"
                                    id="upload_img">Upload</button>
                                </form>

                            </div>
                    </div>

                    <!---itemlist--->

                    <script>
                        $(document).ready(function () {
                            //name field 

                            var tt = $("#title{{ $uid }}").val();
                            var ii = $("#imagePreview{{ $uid }}").val();

                            if (tt == '' && ii == '') {
                                $(".img-button{{ $uid }}").hide();
                            }


                            //image file 
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

                                } else if ($.inArray(extension, validFileExtensions) == -1) {
                                    $(".img-button{{ $uid }}").hide();
                                    $('#imageChecked{{ $uid }}').show();
                                    $("#imageChecked{{ $uid }}").addClass("border-error");
                                    $("#imageChecked{{ $uid }}").html(
                                        "Only 'JPG', 'PNG', 'png', 'JPEG', 'svg' type of file is allowed!"
                                    );

                                } else {
                                    $('#imageChecked{{ $uid }}').hide();
                                    $(".img-button{{ $uid }}").show();
                                }
                                $("#imagePreview{{ $uid }}").attr('src', url);
                                // let fd = new FormData();
                                // fd.append('picture',file);
                            });

                            // for image upload 

                        });

                    </script>

        @endfor
        @php
            $i++
        @endphp
        </div>

        </div>

        </div>

@endforeach
</section>
@endforeach


@endsection
