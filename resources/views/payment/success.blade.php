@extends('layouts.app')

@section('content')
    <div class="success">
        Your Payment Successfull !

<p>payment id : {{$payment_id}}</p>
<p>payer id : {{$payer_id}}</p>
<p>payer email : {{$payer_email}}</p>
<p>amount : {{$amount}}</p>


        <h4>Your transaction ID : </h4>
        <h3>user id : {{Auth::id()}}</h3>
    </div>
@endsection