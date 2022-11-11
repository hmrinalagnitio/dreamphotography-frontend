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
    PaypalController,

 };

 header('Access-Control-Allow-Origin: http://localhost:8080');
 header('Access-Control-Allow-Headers: origin, x-requested-with, content-type');
 header('Access-Control-Allow-Methods: PUT, GET, POST, DELETE, OPTIONS');

// Route::get('/', function () {
//     return view('welcome');
// }); 

Route::get('/linkstorage', function () {
    Artisan::call('storage:link');
});
Auth::routes();




// for login page 
Route::get('/login',[LoginController::class,'login'])->name('login');
Route::post('/create',[LoginController::class, 'create'])->name('create');

// for registetion page

Route::post('/createuser',[RegisterController::class, 'create'])->name('createuser');
Route::get('/checkEmaildata',[RegisterController::class, 'check'])->name('checkEmaildata');
Route::post('/checkEmail',[RegisterController::class, 'check'])->name('checkEmail');



// for price filter list

// for watching  
Route::post('/watch/{user_id}',[HomeController::class, 'addwatch'])->name('watch');
// for load more
Route::get('/',[HomeController::class,'index'])->name('home');
Route::get('/contestlist',[HomeController::class,'index'])->name('contestlist');

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


 
    // for paypal payment page 
    Route::get('/payment/{id}', [PaymentController::class, 'index'])->name('payment'); 
    Route::post('/makepaypal', [PaymentController::class, 'place_order'])->name('placeorder');

    
    

});






