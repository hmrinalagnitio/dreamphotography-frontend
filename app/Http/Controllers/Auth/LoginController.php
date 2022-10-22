<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\User;
use Session;
use Illuminate\Support\Facades\Hash;

class LoginController extends Controller
{
    public function login(){
        // for login page
        return view('auth.login');
    }

    public function create(Request $request){
      
        $user = User::where('email', '=', $request->email)->first();
        if(!$user){
            return response()->json(['error'=>'User is not registered ']);
        }
        if(empty($request->email) || empty($request->password)){
            return response()->json(['error'=>'email and password required']);
        }
        if(!\Hash::check($request->password, $user->password)){
            return response()->json(['error'=>' Password not matched !']);
        }
        if(\Auth::attempt($request->only('email', 'password'))){
            return response()->json(['success'=>'login succesfull']);
           
        }
        return response()->json(['error'=>'Invalid email or password !']);  
      
    }

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
}
