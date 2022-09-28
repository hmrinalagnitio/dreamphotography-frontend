@extends('layouts.app')

@section('content')

<div class="wrapper">
    <div class="logoPic">
        <img src="{{ asset('') }}assets/images/logo.png" alt="">
    </div>
    <div class="text-center mt-4 name">
        Register Now
    </div>
    <div class="registererror" id="registererror"></div>
    <form action="" method="post" class="p-3 mt-3" id="register_form">

    @csrf
        @if(Session::has('success'))
            <div class="alert alert-success">{{Session::get('success')}}</div>
        @endif
        @if(Session::has('fail'))
            <div class="alert alert-danger">{{Session::get('fail')}}</div>
        @endif
      

        <div class="form-field d-flex align-items-center">
            <span class="fa fa-user"></span>
            <input type="text" name="name" id="name" placeholder="Name" class="AlphabetsOnly">
            {{-- <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" placeholder="name"> --}}
        </div>
       
        <div class="form-field d-flex align-items-center">
            <span class="fa fa-user"></span>
            <input type="email" name="email" id="email" placeholder="Email" value="{{ old('email') }}">
        </div>

        <div class="error_email" id="error_email"> </div>

        <div class="form-field d-flex align-items-center">
            <span class="fa fa-key"></span>
            <input type="password" name="password" id="password" placeholder="Password">
            <i id="toggle" class="fa fa-eye" aria-hidden="true"></i>
        </div>
        <div class="error_password">   </div>
        <div class="" id="strengthMessage"></div>
        <div class="form-field d-flex align-items-center">
            <span class="fa fa-key"></span>
            <input id="c_password" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password" placeholder="Confirm password">
            <i id="toggle_c_pass" class="fa fa-eye" aria-hidden="true"></i>
        </div>
        <div class="show_error"></div>
        <button type="submit" id="register_btn" class="btn mt-3">Register</button>
    </form>
    <div class="text-center fs-6">
        <a href="#">Forget password?</a> or <a href="{{route('login')}}">Login</a>
    </div>
    {{-- <a href="">
    <button class="btn mt-3 btn-danger">
        <i class="fa fa-google"></i>
        Login with Google</button>
    </a> --}}
   
    

</div>
@endsection
