<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use DB;
class MyAccountController extends Controller
{
    //
    public function index(){
        $user_id = Auth::id();
        $get_users = DB::table('users')->where('id', $user_id)->get();
        return view('auth.my-account', ['get_users'=>$get_users]);

    }
    
    public function upload_profile_image(Request $request){
        $user_id = Auth::id();
        $file = $request->file('file');
        $filename = time().'_'.$file->getClientOriginalName();
        $image_path = ("public/storage/media/profileImage/".$user_id); // image path
        $get_imag  = DB::table('users')->where('id', $user_id)->first();
        $image = '';
        $image = $get_imag->user_image_path;
       
        if($image != ''){
            unlink("storage/media/profileImage/".$get_imag->user_image_path); 
            $file->storeAs("public/"."media/"."profileImage/".$user_id,$filename); //Pass the date and time folder name
            $image_path = ($user_id.'/'.$filename);
            $q = DB::table('users')->where('id', $user_id)->update([
                'user_image_path'=> $image_path,
            ]);
        }else{
            $file->storeAs("public/"."media/"."profileImage/".$user_id,$filename); //Pass the date and time folder name
            $image_path = ($user_id.'/'.$filename);
            // print_r($image_path); exit;
            $q = DB::table('users')->where('id', $user_id)->update([
                'user_image_path'=> $image_path,
            ]);
        }
 
    }

    public function edit_profile($id){
        
        $user_data = DB::table('users')->where('id', $id)->first();
        return response()->json([
            'status'=>200,
            'user_data'=>$user_data,
           
        ]);


    }

    
    
}
