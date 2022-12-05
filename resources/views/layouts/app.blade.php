
<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Dreamphotography</title>
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link
        href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">

    <!-- font-family: 'Mulish', sans-serif;
    font-family: 'Poppins', sans-serif; -->
    <!-- Bootstrap CSS -->
    <link href="{{ asset('') }}assets/css/bootstrap.css" rel="stylesheet">
    <!-- slick CSS -->
    <link rel="stylesheet" href="{{ asset('') }}assets/css/slick.css" type="text/css">
    <link rel="stylesheet" href="{{ asset('') }}assets/css/slick-theme.css" type="text/css">
    <link href="{{ asset('') }}assets/css/style.css" rel="stylesheet">
  

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.18/css/intlTelInput.css"
        integrity="sha512-gxWow8Mo6q6pLa1XH/CcH8JyiSDEtiwJV78E+D+QP0EVasFs8wKXq16G8CLD4CJ2SnonHr4Lm/yY2fSI2+cbmw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    {{-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> --}}
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"
        integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>

        {{-- for country code with phone number --}}
        <link rel="stylesheet" href="{{asset('assets/phonenumber/build/css/demo.css')}}">
        <link rel="stylesheet" href="{{asset('assets/phonenumber/build/css/intlTelInput.css')}}">
     
     

</head>
<body>
    
    @include('layouts.navbar')
    <main class="py-4">
        @yield('content')
    </main>
    {{-- @yield('content') --}}
    

    
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-instagram"></i></a>
            <a href="#"><i class="fa fa-facebook"></i></a>
          </div>
          <div class="col-md-8">
            <p>&copy; Copyright Dream Photography. All Rights Reserved</p>
          </div>
        </div>
      </div>
    </footer>
  
 

    <script src="{{ asset('') }}assets/js/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="{{ asset('') }}assets/js/slick.min.js" type="text/javascript"></script>
    <script src="{{ asset('') }}assets/js/custom.js" type="text/javascript"></script>
    <script src="{{ asset('') }}assets/js/function.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.18/js/intlTelInput.min.js"
        integrity="sha512-hpJ6J4jGqnovQ5g1J39VtNq1/UPsaFjjR6tuCVVkKtFIx8Uy4GeixgIxHPSG72lRUYx1xg/Em+dsqxvKNwyrSg=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.13.2/jquery-ui.min.js" integrity="sha512-57oZ/vW8ANMjR/KQ6Be9v/+/h6bq9/l3f0Oc7vn6qMqyhvPd1cvKBRWWpzu0QoneImqr2SkmO4MSqU+RpHom3Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    {{-- for phone number validation with country code --}}
    <script src="{{asset('assets/phonenumber/build/js/intlTelInput.js')}}"></script>
   {{-- for phone number validation with country code --}}
<script>
    
// for mobile number validation with country code 

var input = document.querySelector("#mobile_no"),
    errorMsg = document.querySelector("#error-msg"),
    validMsg = document.querySelector("#valid-msg");
    $('#valid-msg').hide();

// here, the index maps to the error code returned from getValidationError - see readme
var errorMap = ["Invalid number", "Invalid country code", "Too short", "Too long", "Invalid number"];

// initialise plugin
var iti = window.intlTelInput(input, {
    utilsScript: "{{asset('')}}assets/phonenumber/build/js/utils.js?1638200991544"  
});



var reset = function() {
    input.classList.remove("error");
    errorMsg.innerHTML = "";
    errorMsg.classList.add("hide");
    validMsg.classList.add("hide");
};

// on blur: validate
input.addEventListener('blur', function() {

    reset();
    if (input.value.trim()) {
        if (iti.isValidNumber()) {
            validMsg.classList.remove("hide");
            $('#valid-msg').show();
            $('#update').prop("disabled", false);
        } else {
            input.classList.add("error");
            var errorCode = iti.getValidationError();
            errorMsg.innerHTML = errorMap[errorCode];
            errorMsg.classList.remove("hide");
            $('#valid-msg').hide();
            $('#update').prop("disabled", true);
        }
    }
});

// on keyup / change flag: reset
input.addEventListener('change', reset);
input.addEventListener('keyup', reset);




</script>

</body>
</html>
