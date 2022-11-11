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
         
             <?php

                $user_id = Auth::id(); 
            
                $user_query = DB::table('users')->where('id',$user_id )->get();
                foreach ($user_query as $users) {
                   $usersname = $users->name; 
                   $email = $users->email;
                }

                  ?>
              
                <div class="form-group row">
                    <label for="formGroupExampleInput" class="col-sm-2 col-form-label">Name : </label>
                    <div class="col-sm-10">

                        <input type="text" class="form-control" id="name" name="name" value="{{ $usersname }}" readonly>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="formGroupExampleInput" class="col-sm-2 col-form-label">Email : </label>
                    <div class="col-sm-10">

                        <input type="text" class="form-control" id="email" name="email" value="{{ $email }}" readonly>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="formGroupExampleInput" class="col-sm-2 col-form-label">Contest Id : </label>
                    <div class="col-sm-10">

                        <input type="text" class="form-control" id="contest_id" name="contest_id"
                            value="{{ $contest_id }}" readonly>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="formGroupExampleInput" class="col-sm-2 col-form-label">Contest Type Name</label>
                    <div class="col-sm-10">

                        <input type="text" class="form-control" id="contest_type_name" name="contest_type_name"
                            value="{{ $contest_type_name }}" readonly>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="formGroupExampleInput" class="col-sm-2 col-form-label">Contest Name</label>
                    <div class="col-sm-10">

                        <input type="text" class="form-control" id="contest_name" name="contest_name"
                            value="{{ $contest_name }}" readonly>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="formGroupExampleInput" class="col-sm-2 col-form-label">Opening Date</label>
                    <div class="col-sm-10">

                        <input type="text" class="form-control" id="opening_date" name="opening_date"
                            value="{{ $opening_date }}" readonly>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="formGroupExampleInput" class="col-sm-2 col-form-label">Closing Date</label>
                    <div class="col-sm-10">

                        <input type="text" class="form-control" id="closing_date" name="closing_date"
                            value="{{ $closing_date }}" readonly>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="formGroupExampleInput" class="col-sm-2 col-form-label">Opening Time </label>
                    <div class="col-sm-10">

                        <input type="text" class="form-control" id="opening_time" name="opening_time"
                            value="{{ $opening_time }}" readonly>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="formGroupExampleInput" class="col-sm-2 col-form-label">Closing Time</label>
                    <div class="col-sm-10">

                        <input type="text" class="form-control" id="closing_time" name="closing_time"
                            value="{{ $closing_time }}" readonly>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="formGroupExampleInput" class="col-sm-2 col-form-label">Entry Fees</label>
                    <div class="col-sm-10">

                        <input type="text" class="form-control" id="amount" name="entry_fees"
                            value="1" readonly>
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
                                <form action="" method="POST">
                                    @csrf
                                   
                                    <input type="hidden" name="contest_unique_id" id="contest_unique_id" value="{{$contest_unique_id}}">
                                    <input type="hidden" name="usersname" id="usersname" value="{{$usersname}}">
                                    <div style="text-align: left;">
                                        <div id="paypal-button-container"></div>
                                        {{-- <button type="submit" class="btn btn-primary">Pay With Paypal</button> --}}
                                    </div>

                                 
                            </form>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col">
                    <div class="card ">
                        <div class="des">
                            <h3> For Indian users</h3>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>





     
    </div>
</div>

</div>


<script src="https://www.paypal.com/sdk/js?client-id=Ac5u_ncPJm__LcLeBe92dX_Z7Nsikew_oZO6smuEZq8EARhcpoEu7_7dotsajZAkJDwjAHFB5e5ai4Ub&currency=USD"></script>
<script>

  


    paypal.Buttons({
      // Sets up the transaction when a payment button is clicked
      createOrder: (data, actions) => {
        return actions.order.create({
          purchase_units: [{
            amount: {
              value: '1.0' // Can also reference a variable or function
            }
          }]
        });
      },
      // Finalize the transaction after payer approval
      onApprove: (data, actions) => {
        return actions.order.capture().then(function(orderData) {
          // Successful capture! For dev/demo purposes:
         
          console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));
          const transaction = orderData.purchase_units[0].payments.captures[0];
        //   alert(`Transaction ${transaction.status}: ${transaction.id}\n\nSee console for all available details`);
        //  console.log(orderData.status);

        var pay_contest_unique_id = $('#contest_unique_id').val();
        var user_id = $('#user_id').val();
        var amount = $('#amount').val();
        var pay_contest_id = $('#contest_id').val();
        var pay_contest_type_name = $('#contest_type_name').val();
        var pay_contest_name = $('#contest_name').val();
        var pay_contest_opening_date = $('#opening_date').val();
        var pay_contest_closing_date = $('#closing_date').val();
        var pay_contest_opening_time = $('#opening_time').val();
        var pay_contest_closing_time = $('#closing_time').val();
        var email = $('#email').val();
        var usersname = $('#usersname').val();
        
          $.ajax({
            method: "POST",
            url: "/makepaypal",
            data: {
                'user_id': user_id,
                'amount': amount,
                'pay_contest_unique_id':pay_contest_unique_id,
                'pay_contest_id': pay_contest_id,
                'pay_contest_type_name' : pay_contest_type_name,
                'pay_contest_name': pay_contest_name,
                'pay_contest_opening_date': pay_contest_opening_date,
                'pay_contest_closing_date':pay_contest_closing_date,
                'pay_contest_opening_time': pay_contest_opening_time,
                'pay_contest_closing_time' : pay_contest_closing_time,
                'email': email,
                'usersname' : usersname,
                'payment_mode': "Paid by Paypal",
                "payment_id": orderData.id,
                "payment_status": orderData.status,
            },
            headers: {
            'X-CSRF-Token': '{{ csrf_token() }}',
            },
            success: function(response){
                const element = document.getElementById('paypal-button-container');
                element.innerHTML = '<h3>Your payment successfull !</h3>';
          // Or go to another URL:  actions.redirect('thank_you.html');
            }
        
      
        });


          
          // When ready to go live, remove the alert and show a success message within this page. For example:
          // const element = document.getElementById('paypal-button-container');
          // element.innerHTML = '<h3>Thank you for your payment!</h3>';
          // Or go to another URL:  actions.redirect('thank_you.html');

        });
      }
    }).render('#paypal-button-container');
  </script>
@endsection
