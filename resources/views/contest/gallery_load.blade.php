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

<div class="galleryData"></div>
</div>
</section>
@endsection