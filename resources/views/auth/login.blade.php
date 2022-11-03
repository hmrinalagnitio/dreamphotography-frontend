@extends('layouts.app')

@section('content')

<div class="wrapper">
    <div class="logoPic">
        <img src="{{ asset('') }}assets/images/logo.png" alt="">
    </div>
    <div class="text-center mt-4 name">
        Login Now 
    </div>
    <div class="loginerror" id="loginerror"></div>
    <form action="" method="post" class="p-3 mt-3" id="login_form">

    @csrf
        @if(Session::has('success'))
            <div class="alert alert-success">{{Session::get('success')}}</div>
        @endif
        @if(Session::has('fail'))
            <div class="alert alert-danger">{{Session::get('fail')}}</div>
        @endif
        <div class="form-field d-flex align-items-center">
            <span class="fa fa-user"></span>
            <input type="email" name="email" id="email" placeholder="Email" value="{{ old('email') }}">
        </div>
        <div class="error_email">

        </div>
        <div class="form-field d-flex align-items-center">
            <span class="fa fa-key"></span>
            <input type="password" name="password" id="password" placeholder="Password">
            <i id="login_pass" class="fa fa-eye" aria-hidden="true"></i>
        </div>
        <div class="error_password">
          
        </div>
        <button type="submit" id="login_btn" class="btn mt-3">Login</button>
       
    </form>
    <div class="text-center fs-6">
        <a href="">Forget password?</a> or <a href="{{route('register')}}">Sign up</a>
    </div>
    {{-- <a href="">
    <button class="btn mt-3 btn-danger">
        <i class="fa fa-google"></i>
        Login with Google</button>
    </a> --}}
   
    

</div>
@endsection
