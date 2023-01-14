<?php

namespace App\Http\Controllers\contest;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;


class GalleryController extends Controller
{
    //
    public function index(){
        return view('contest.gallery_load');
    }

    // for addd to gallery 
    public function addToGallery(Request $request){

    
        $user_id = Auth::id();
        $imageShow_id = $request->imageShow_id;
        $contest_unique_id = $request->contest_unique_id;
        $add_gallery_contest_id = $request->add_gallery_contest_id;
        $add_gallery_category_name = $request->add_gallery_category_name;
        $add_gallery_image_no = $request->add_gallery_image_no;
        $add_gallery_user_random_id = $request->add_gallery_user_random_id;
        $add_gallery_image_upload_id = $request->add_gallery_image_upload_id;


        $gallery_check = DB::table('contest_gallery_imges')
                            ->where('user_id', $user_id)
                            ->where('gallery_image_show_id', $imageShow_id)
                            ->where('gallery_contest_unique_id',$contest_unique_id)
                            ->count();
       
        if($gallery_check == 0){
            $source = "storage/media/uploadimage/".$add_gallery_contest_id.'/'.$add_gallery_user_random_id.'/'.$add_gallery_category_name.'/'.$add_gallery_image_no.'/'.$imageShow_id;
            $destination = "storage/media/galleryImage/".$add_gallery_user_random_id;
          
             \File::copyDirectory($source, $destination);

                $add_gallery_query = DB::table('contest_gallery_imges')->insert(
                    [
                        'user_id'=>$user_id,
                        'gallery_image_show_id'=>$imageShow_id,
                        'gallery_contest_unique_id'=>$contest_unique_id,
                        'gallery_image_upload_id'=>$add_gallery_image_upload_id,
                        "created_at" =>  \Carbon\Carbon::now(), # new \Datetime()
                        "updated_at" => \Carbon\Carbon::now(),  # new \Datetime()
                    ]);
        
                    // print_r($add_gallery_query); 
                    // exit; 
                    return response()->json(['status'=> 'Gallery added successfully']);
          
        }
    }

    public function removeGalleryImage(Request $request)
    {
        $user_id = Auth::id();
        $remove_gallery_id = $request->remove_gallery_id;
        $remove_con_unique_id = $request->remove_con_unique_id;
        $remove_gallery_contest_id = $request->remove_gallery_contest_id;
        $remove_gallery_category_name = $request->remove_gallery_category_name; 
        $remove_gallery_image_no = $request->remove_gallery_image_no;
        $remove_gallery_user_random_id = $request->remove_gallery_user_random_id;

        $delete_img = DB::table('contest_image_uploads')
        ->where('user_id', $user_id)
        ->where('contest_unique_id',$remove_con_unique_id )
        ->where('imageShow_id', $remove_gallery_id)
        ->first();


        $remove_image_q = DB::table('contest_gallery_imges')
                            ->where('user_id', $user_id)
                            ->where('gallery_image_show_id', $remove_gallery_id)
                            ->where('gallery_contest_unique_id', $remove_con_unique_id)
                            ->delete();
                        
                 
        if($remove_image_q){
            
            $path = "storage/media/galleryImage/".$remove_gallery_user_random_id.'/'.$delete_img->image_path;
            if(File::exists($path)){
                unlink($path); 
            }
           
            return response()->json(['status'=>'Gallery image remove successfully !']);
        }

       

    }

       // for load more btn 
    public function load_more_data(Request $request){
        $user_id = Auth::id();
        $myGallery= DB::table('contest_gallery_imges')->get();
       
        foreach($myGallery as $gallery){
                $g_con_unique_id[] = $gallery->gallery_contest_unique_id;
                $g_img_show_id[] = $gallery->gallery_image_show_id;
                $g_user_id[] = $gallery->user_id;
                $g_image_upload_id[] = $gallery->gallery_image_upload_id;
                

            }
            
     
       if($request->ajax()){
            if($request->id){
                
                $gallery_data = DB::table('contest_image_uploads')
                    ->where('id','<',$request->id)
                    ->where('user_id', $user_id)
                    ->whereIn('contest_unique_id', $g_con_unique_id)
                    ->whereIn('imageShow_id', $g_img_show_id)
                    ->whereIn('id', $g_image_upload_id)
                    ->orderBy('id', 'desc')
                    ->limit(3)
                    ->get();

                // echo "<pre>";
                // print_r($gallery_data); 
                // exit; 

            }else{
              
                $gallery_data = DB::table('contest_image_uploads')
                ->where('user_id', $user_id)
                ->whereIn('contest_unique_id', $g_con_unique_id)
                ->whereIn('imageShow_id', $g_img_show_id)
                ->whereIn('id', $g_image_upload_id)
                ->orderBy('id', 'desc')
                ->limit(3)
                ->get();
                
               
            }
       }
       return view('contest.gallery_load_more', ['gallery_data'=>$gallery_data]);

       
    }


   
}
