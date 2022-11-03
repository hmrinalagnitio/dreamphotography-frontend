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
<div class="container mt-5">
    <div class="card ">
        <div class="card-header">
            Make Payment
        </div>
        <div class="card-body">
            <form action="{{ route('make-rpayment') }}" method="post">
                @csrf
                @foreach($contest_payment_amount as $payment_amount)
                    <?php

                 $entry_amount = $payment_amount->entry_fees;
                 $pay_contest_id = $payment_amount->contest_id;
                 $pay_contest_type_name = $payment_amount->contest_type_name;
                 $pay_contest_name = $payment_amount->contest_name;
                 $pay_contest_opening_date = $payment_amount->opening_date;
                 $pay_contest_closing_date = $payment_amount->closing_date;
                 $pay_contest_opening_time = $payment_amount->opening_time;
                 $pay_contest_closing_time = $payment_amount->closing_time;


                $user_id = Auth::id(); 
                $user_query = DB::table('users')->where('id',$user_id )->get();
                foreach ($user_query as $users) {
                   $usersname = $users->name; 
                   $email = $users->email;
                }

                  ?>
                @endforeach
                <div class="form-group row">
                    <label for="formGroupExampleInput" class="col-sm-2 col-form-label">Name : </label>
                    <div class="col-sm-10">

                        <input type="text" class="form-control" id="name" name="name"
                            value="{{ $usersname }}" readonly>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="formGroupExampleInput" class="col-sm-2 col-form-label">Email : </label>
                    <div class="col-sm-10">

                        <input type="text" class="form-control" id="email" name="email"
                            value="{{ $email }}" readonly>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="formGroupExampleInput" class="col-sm-2 col-form-label">Contest Id : </label>
                    <div class="col-sm-10">

                        <input type="text" class="form-control" id="contest_id" name="contest_id"
                            value="{{ $pay_contest_id }}" readonly>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="formGroupExampleInput" class="col-sm-2 col-form-label">Contest Type Name</label>
                    <div class="col-sm-10">

                        <input type="text" class="form-control" id="contest_type_name" name="contest_type_name"
                            value="{{ $pay_contest_type_name }}" readonly>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="formGroupExampleInput" class="col-sm-2 col-form-label">Contest Name</label>
                    <div class="col-sm-10">

                        <input type="text" class="form-control" id="contest_name" name="contest_name"
                            value="{{ $pay_contest_name }}" readonly>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="formGroupExampleInput" class="col-sm-2 col-form-label">Opening Date</label>
                    <div class="col-sm-10">

                        <input type="text" class="form-control" id="opening_date" name="opening_date"
                            value="{{ $pay_contest_opening_date }}" readonly>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="formGroupExampleInput" class="col-sm-2 col-form-label">Closing Date</label>
                    <div class="col-sm-10">

                        <input type="text" class="form-control" id="closing_date" name="closing_date"
                            value="{{ $pay_contest_closing_date }}" readonly>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="formGroupExampleInput" class="col-sm-2 col-form-label">Opening Time </label>
                    <div class="col-sm-10">

                        <input type="text" class="form-control" id="opening_time" name="opening_time"
                            value="{{ $pay_contest_opening_time }}" readonly>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="formGroupExampleInput" class="col-sm-2 col-form-label">Closing Time</label>
                    <div class="col-sm-10">

                        <input type="text" class="form-control" id="closing_time" name="closing_time"
                            value="{{ $pay_contest_closing_time }}" readonly>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="formGroupExampleInput" class="col-sm-2 col-form-label">Entry Fees</label>
                    <div class="col-sm-10">

                        <input type="text" class="form-control" id="entry_fees" name="entry_fees"
                            value="{{ $entry_amount }}" readonly>
                    </div>
                </div>

        </div>

        <br>
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="card">
                        <div class="des">
                            <h3> For non Indian users</h3>
                        </div>
                        
                           
                                <div id="smart-button-container">
                                    <div class="row">
                                    <div style="text-align: left;">
                                        <div id="paypal-button-container">
                                            <button type="submit" class="btn btn-warning"> Paywith paypal </button>
                                        </div>
                                    </div>
                               
                                <div id="smart-button-container">
                                    <div style="text-align: center;">
                                        <div id="paypal-button-container">
                                            <button type="submit" class="btn btn-primary"> Paywith Stripe </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col">
                    <div class="card ">
                        <div class="des">
                            <h3> For Indian users</h3>
                        </div>
                        <div class="form-group ">
                            <button type="submit" class="btn btn-primary"> Pay Now</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>





        </form>
    </div>
</div>

</div>

@endsection
@section('scripts')

<script src="https://www.paypal.com/sdk/js?client-id=ASHgTgwXbk2yZrmGET7B3Eyd9M7m3cYRPuaUIgaO8pixsu3_JWGEWIp9JLrz5PGocSXMPCkOP1MKp1sg&currency=USD"></script>


<script>
    paypal.Buttons({
      // Sets up the transaction when a payment button is clicked
      createOrder: (data, actions) => {
        return actions.order.create({
          purchase_units: [{
            amount: {
              value: '{{$entry_amount}}' // Can also reference a variable or function
            }
          }]
        });
      },
      // Finalize the transaction after payer approval
      onApprove: (data, actions) => {
        return actions.order.capture().then(function(orderData) {
          // Successful capture! For dev/demo purposes:
        //   console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));
          const transaction = orderData.purchase_units[0].payments.captures[0];
        //   alert(`Transaction ${transaction.status}: ${transaction.id}\n\nSee console for all available details`);
          // When ready to go live, remove the alert and show a success message within this page. For example:
          // const element = document.getElementById('paypal-button-container');
          // element.innerHTML = '<h3>Thank you for your payment!</h3>';
          // Or go to another URL:  actions.redirect('thank_you.html');
            var name = $('#name').val();
            alert(name);
            var email = $('#email').val();
            var contest_id = $('#contest_id').val();
            var contest_type_name = $('#contest_type_name').val();
            var contest_name = $('#contest_name').val();
            var opening_date = $('#opening_date').val();
            var closing_date = $('#closing_date').val();
            var opening_time = $('#opening_time').val();
            var closing_time = $('#closing_time').val();
            var entry_fees = $('#entry_fees').val();

          $.ajax({
            method: 'POST',
            url: '/paypal',
            data:{
                'name': name,
                'email': email,
                'contest_id': contest_id,
                'contest_type_name' : contest_type_name,
                'contest_name' : contest_name,
                'opening_date' : opening_date,
                'closing_date' : closing_date,
                'opening_time' : opening_time,
                'closing_time' : closing_time,
                'entry_fees' : entry_fees,
                'payment_mode' : 'Pay by People',
                'payment_id' : transaction.id, 
            }
          })
        });
      }
    }).render('#paypal-button-container');
  </script>
@endsection
