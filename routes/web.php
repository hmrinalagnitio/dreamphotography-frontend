<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\{
    LoginController,
    RegisterController,
    };
use App\Http\Controllers\HomeController;
use App\Http\Controllers\contest\{
    ViewDetailsController,
    ImageUploadController,
    ImageUploadSuccessController,
};

use App\Http\Controllers\payment\{
    PaymentController,
    RazorPayController,
    PaypalController,


 };



// Route::get('/', function () {
//     return view('welcome');
// }); 

Route::get('/linkstorage', function () {
    Artisan::call('storage:link');
});
Auth::routes();

// Route::get('/home', [HomeController::class, 'index'])->name('home');

// for my code
// Route::get('/',[HomeController::class,'homepage'])->name('homepage');
// for login page 
Route::get('/login',[LoginController::class,'login'])->name('login');
Route::post('/create',[LoginController::class, 'create'])->name('create');

// for registetion page
Route::get('/adduser',[RegisterController::class, 'index'])->name('register');
Route::post('/createuser',[RegisterController::class, 'create'])->name('createuser');
Route::get('/checkEmaildata',[RegisterController::class, 'check'])->name('checkEmaildata');
Route::post('/checkEmail',[RegisterController::class, 'check'])->name('checkEmail');


// for homepage 

// Route::post('/home',[HomeController::class, 'homepage'])->name('homepagep');
// for price filter list

// for watching  
Route::post('/watch/{user_id}',[HomeController::class, 'addwatch'])->name('watch');
// for load more
Route::get('/',[HomeController::class,'index'])->name('home');
Route::post('/loadmore', [HomeController::class, 'load_data'])->name('loadmore');

Route::post('/contestListSorting',[HomeController::class, 'contestListSorting'])->name('contestListSorting');

// for View details page 
Route::get('/viewdetails/{id}',[ViewDetailsController::class, 'index'])->name('viewdetails');

// for image Upload page 
Route::group(['middleware'=>['CustomAuth']], function(){
    Route::get('/imageupload/{con_id}',[ImageUploadController::class, 'index'])->name('imageupload');
    Route::get('/uploadimage',[ImageUploadController::class, 'create'])->name('uploadimage');
    Route::post('/insertimage',[ImageUploadController::class, 'store'])->name('insertimage');
    Route::get('/imgUploadSuccess', [ImageUploadSuccessController::class, 'index'])->name('imgUploadSuccess');

    // for payment page 
    Route::get('/makePayment/{id}', [PaymentController::class, 'index'])->name('make_payment');

    // for Razor Pay payment gateway integration 
    Route::get('rpayment/{id}', [RazorPayController::class, 'index'])->name('rpayment'); 
    Route::post('make-rpayment-order', [RazorPayController::class, 'store'])->name('make-rpayment'); 

    // for paypal Payment gateway integration 
    Route::get('paywithpaypal', [PaypalController::class, 'paywithpaypal'])->name('paywithpaypal'); 
    Route::post('paypal', [PaypalController::class, 'postPaymentwithPaypal'])->name('paypal'); 
    Route::get('status', [PaypalController::class, 'getPaymentStatus'])->name('status'); 

});






