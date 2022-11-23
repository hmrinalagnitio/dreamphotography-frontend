<?php

namespace App\Http\Controllers\contest;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use DB;

class GalleryController extends Controller
{
    //
    public function index(){
  
     
        return view('contest.gallery_load');

    }


    public function addToGallery(Request $request){
        
        $user_id = Auth::id();
        $imageShow_id = $request->imageShow_id;
        $contest_unique_id = $request->contest_unique_id;

        $gallery_check= DB::table('contest_gallery_imges')
                            ->where('user_id', $user_id)
                            ->where('gallery_image_show_id', $imageShow_id)
                            ->where('gallery_contest_unique_id',$contest_unique_id)
                            ->count();
       
        if($gallery_check == 0){

                $add_gallery_query = DB::table('contest_gallery_imges')->insert(
                    [
                        'user_id'=>$user_id,
                        'gallery_image_show_id'=>$imageShow_id,
                        'gallery_contest_unique_id'=>$contest_unique_id,
                        "created_at" =>  \Carbon\Carbon::now(), # new \Datetime()
                        "updated_at" => \Carbon\Carbon::now(),  # new \Datetime()
                    ]);
        
                    return response()->json(['status'=> 'Gallery added successfully']);
          
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
            
            }
        
        $gallery_data = DB::table('contest_image_uploads')
        ->whereIn('user_id', $g_user_id)
        ->whereIn('contest_unique_id', $g_con_unique_id)
        ->whereIn('imageShow_id', $g_img_show_id)
        ->orderBy('id', 'desc')
        ->limit(3)
        ->get();

      

       if($request->ajax()){
            if($request->id){
                $gallery_data = DB::table('contest_image_uploads')
                ->where('id','<',$request->id)
                ->where('user_id', $g_user_id)
                ->whereIn('contest_unique_id', $g_con_unique_id)
                ->whereIn('imageShow_id', $g_img_show_id)
                ->orderBy('id', 'desc')
                ->limit(3)
                ->get();

               
          
            }else{
              
                $gallery_data = DB::table('contest_image_uploads')
                ->where('user_id', $g_user_id)
                ->whereIn('contest_unique_id', $g_con_unique_id)
                ->whereIn('imageShow_id', $g_img_show_id)
                ->orderBy('id', 'desc')
                ->limit(3)
                ->get();
               
            }
       }
       return view('contest.gallery_load_more', ['gallery_data'=>$gallery_data]);

       
    }


   

}
