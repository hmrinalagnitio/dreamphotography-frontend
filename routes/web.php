<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\auth\{
    LoginController,
    RegisterController,
    };
use App\Http\Controllers\HomeController;
use App\Http\Controllers\contest\{
    ViewDetailsController,
    ImageUploadController,
    ImageUploadSuccessController,
};



// Route::get('/', function () {
//     return view('welcome');
// }); 

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
Route::get('/',[HomeController::class,'index'])->name('homepage');
Route::post('/loadmore', [HomeController::class, 'load_data'])->name('loadmore.load_data');

Route::get('/contestListSorting',[HomeController::class, 'contestListSorting'])->name('contestListSorting');
// for View details page 
Route::get('/viewdetails/{contest_id}',[ViewDetailsController::class, 'index'])->name('viewdetails');

// for image Upload page 
Route::group(['middleware'=>['CustomAuth']], function(){
    Route::get('/imageupload',[ImageUploadController::class, 'index'])->name('imageupload');
    Route::post('/insertimage',[ImageUploadController::class, 'create'])->name('insertimage');
    Route::get('/imgUploadSuccess', [ImageUploadSuccessController::class, 'index'])->name('imgUploadSuccess');
});



