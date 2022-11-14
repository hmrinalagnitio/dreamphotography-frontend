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
  
 
        $myGallery= DB::table('contest_gallery_imges')
                    ->select(
                        'contest_gallery_imges.user_id',
                        'contest_gallery_imges.gallery_image_show_id',
                        'contest_gallery_imges.gallery_contest_unique_id',
                        'contest_image_uploads.user_id',
                        'contest_image_uploads.*')
                        ->join('contest_image_uploads', 
                        'contest_image_uploads.contest_unique_id', '=', 'contest_gallery_imges.gallery_contest_unique_id')
                        ->where('contest_image_uploads.user_id', '=' ,'contest_gallery_imges.user_id')
                        ->get();
                    
                  
   
              
        // echo "<pre>";
        // print_r($myGallery);
        // exit;


        return view('contest.gallery');

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
}
