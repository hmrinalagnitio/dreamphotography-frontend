<?php

namespace App\Http\Controllers\contest;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Session;
use Auth;
use DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Storage;
use Str;
use Illuminate\Support\Facades\File;


class ImageUploadController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        // 
        $id = $request->con_id;
        $user_id = Auth::id();
        $contest_image_list = DB::table('contest_categories')->where('contest_unique_id', $id)->get();
        return view('contest.imageUpload', ['contest_image_list'=>$contest_image_list]);
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        //
        $contest_id = $request->contest_id;
        $user_id = Auth::id();
        $contest_image_list = DB::table('contest_categories')->where('contest_unique_id', $contest_id)->get();
       
        return view('contest.imageUpload', ['contest_image_list'=>$contest_image_list]);
        
    
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $c_user_id = Auth::id();
        $user_data = DB::table('users')->where('id',$c_user_id)->first();
        $user_name = $user_data->name;
        $first_four_letter = substr($user_name, 0, 4);
        $user_id =  $user_data->user_id; 
        $imageShow_id = $request->imageShow_id;           
        $contest_name = $request->contest_name;
        $contest_unique_id = $request->contest_unique_id;
        $contest_id = $request->contest_id;
        $category_name = $request->category_name;
        $catgory_slug_name = Str::slug($category_name);
        $image_no = $request->image_no; 
        $file = $request->file('file');
       
        $path = 'public/media/uploadimage/'.$contest_id.'/'.$user_id.'/'.$category_name.'/'.$image_no.'/'.$imageShow_id;

        if(!Storage::exists($path)) {
                    echo "not exit path";
                    $c_user_id = Auth::id();
                    $user_data = DB::table('users')->where('id',$c_user_id)->first();
                    $user_name = $user_data->name;
                    $first_four_letter = substr($user_name, 0, 4);
                    $user_id =  $user_data->user_id; 
                    $contest_name = $request->contest_name;
                    $imageShow_id = $request->imageShow_id;
                    $contest_unique_id = $request->contest_unique_id;
                    $contest_id = $request->contest_id;
                    $category_name = $request->category_name;
                    $catgory_slug_name = Str::slug($category_name);
                    $image_no = $request->image_no; 
                    $file = $request->file('file');
                    $ext = $file->extension();
                    $filename = time().'-'.$contest_id.'-'.$user_id.'-'.$first_four_letter.'-'.$catgory_slug_name.'-'.$image_no.'.'.$ext;
                    
                    $file->storeAs("public/media/uploadimage/".$contest_id.'/'.$user_id.'/'.$category_name.'/'.$image_no.'/'.$imageShow_id.'/',$filename); //Pass the date and time folder name
                    $image_path = ($contest_id.'/'.$user_id.'/'.$category_name.'/'.$image_no.'/'.$imageShow_id.'/'.$filename);
                    
                    $q =  DB::table('contest_image_uploads')->insert(
                        [
                            'contest_unique_id'=> $contest_unique_id,
                            'user_id'=> $c_user_id,
                            'image_path'=> $filename,
                            'contest_id' => $contest_id,
                            'category_name' => $category_name,
                            'image_no' => $image_no,
                            'imageShow_id' => $imageShow_id,
                            "created_at" =>  \Carbon\Carbon::now(), # new \Datetime()
                            "updated_at" => \Carbon\Carbon::now(),  # new \Datetime()     
                        ]); 
            
        }else{
            $del_img_q = DB::table('contest_image_uploads')
                    ->where('imageShow_id', $imageShow_id)
                    ->where('user_id',$c_user_id )
                    ->count();

        
            if($del_img_q > 0 ){ 
           
                $user_Image_upload_data = DB::table('contest_image_uploads')
                    ->where('user_id',$c_user_id)
                    ->where('imageShow_id',$imageShow_id)
                    ->where('contest_unique_id', $contest_unique_id)
                    ->first();
            
            $newimg = $user_Image_upload_data->image_path; 
            // print_r($newimg);
            // exit; 

                if($newimg ){
                    // unlink("public/storage/media/uploadimage/".$contest_id.'/'.$user_id.'/'.$category_name.'/'.$image_no.'/'.$imageShow_id.'/'.$newimg);
                    unlink("storage/media/uploadimage/".$contest_id.'/'.$user_id.'/'.$category_name.'/'.$image_no.'/'.$imageShow_id.'/'.$newimg); 
                    $c_user_id = Auth::id();
                    $user_data = DB::table('users')->where('id',$c_user_id)->first();
                    $user_name = $user_data->name;
                    $first_four_letter = substr($user_name, 0, 4);
                    $user_id =  $user_data->user_id; 
                    $contest_name = $request->contest_name;
                    $imageShow_id = $request->imageShow_id;
                    $contest_unique_id = $request->contest_unique_id;
                    $contest_id = $request->contest_id;
                    $category_name = $request->category_name;
                    $catgory_slug_name = Str::slug($category_name);
                    $image_no = $request->image_no; 
                    $file = $request->file('file');
                    $ext = $file->extension();
                    
                    $filename = time().'-'.$contest_id.'-'.$user_id.'-'.$first_four_letter.'-'.$catgory_slug_name.'-'.$image_no.'.'.$ext;
                  
                    $file->storeAs("public/media/uploadimage/".$contest_id.'/'.$user_id.'/'.$category_name.'/'.$image_no.'/'.$imageShow_id.'/',$filename); //Pass the date and time folder name
                    $image_path = ($contest_id.'/'.$user_id.'/'.$category_name.'/'.$image_no.'/'.$imageShow_id.'/'.$filename);
                    
                    $q =  DB::table('contest_image_uploads')
                            ->where('contest_unique_id', $contest_unique_id)
                            ->where('user_id', $c_user_id)
                            ->where('imageShow_id', $imageShow_id)
                            ->update(
                            [
                            'contest_unique_id'=> $contest_unique_id,
                            'user_id'=> $c_user_id,
                            'image_path'=> $filename,
                            'contest_id' => $contest_id,
                            'category_name' => $category_name,
                            'image_no' => $image_no,
                            'imageShow_id' => $imageShow_id,
                            "created_at" =>  \Carbon\Carbon::now(), # new \Datetime()
                            "updated_at" => \Carbon\Carbon::now(),  # new \Datetime()
                                    
                        ]); 

                }
            }

                
               
            
               
              
            

        }

      
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
   

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    // for delete image when delete button click

    public function destroy(Request $request)
    {
       
        $contest_id = $request->contest_id;
        $user_random_id = $request->user_random_id;
        $category_name = $request->category_name;
        $imageShow_id = $request->delete_image_id;
        $delete_image_id = $request->delete_image_id;
        $delete_con_unique_id = $request->delete_con_unique_id; 
        $user_id = Auth::id();
        $image_no = $request->image_no; 
   
        $user_Image_uploaded_data = DB::table('contest_image_uploads')
                        ->where('user_id',$user_id)
                        ->where('imageShow_id',$delete_image_id)
                        ->first();
                      
        $d_path = public_path('storage/media/uploadimage/'.$contest_id.'/'.$user_random_id.'/'.$category_name.'/'.$image_no.'/'.$imageShow_id);
        
        if($user_Image_uploaded_data->image_path){
            if(File::exists($d_path)){
                $delete_query = DB::table('contest_image_uploads')  
                                ->where('contest_unique_id', $delete_con_unique_id)
                                ->where('imageShow_id', $delete_image_id)
                                ->where('user_id', $user_id)
                                ->delete(); 
        
                if($delete_query){
                    $folderDetails = File::deleteDirectory($d_path);
                    return response()->json(['status'=>"image deleted successfully !"]);
                }
            }
        }

      
    }
}
