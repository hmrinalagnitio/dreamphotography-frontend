<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\Models\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;

class RegisterController extends Controller{
 

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    // public function __construct()
    // {
    //     $this->middleware('guest');
    // }
    public function index(){
        
        return view('auth.register');
    }
    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\Models\User
     */
  

    public function create(Request $request){

    	$validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required',
        ]);

        if ($validator->passes()) {
            $addUser = new User;
            $addUser->name = $request->name;
            $addUser->email = $request->email;
            $password = $request->password;
            $h_password = Hash::make($password);
            $addUser->password = $h_password;
            $addUser->user_id = "U".time();
            $addUser->save();
            return response()->json(['success'=>'Added new records.']);
        }
     
        return response()->json(['error'=>$validator->errors()->all()]);
        
       
    }

      //email available
    public function check(Request $request) {
        if($request->get('email')){
            $email = $request->get('email');
            $data = User::where('email', $email)->count();
            if($data > 0){
                echo "not unique";
            }else{
                echo "unique";
            }

        }
    }
    

}
