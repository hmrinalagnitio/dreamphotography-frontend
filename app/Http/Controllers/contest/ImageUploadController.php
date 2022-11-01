<?php

namespace App\Http\Controllers\contest;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Session;
use Auth;
use DB;
use Illuminate\Support\Facades\Validator;

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
           
            

        $contest_name = $request->contest_name;
        $imageShow_id = $request->imageShow_id;
        $contest_unique_id = $request->contest_unique_id;
        $contest_id = $request->contest_id;
        $category_name = $request->category_name;
        $image_no = $request->image_no; 
        $user_id = Auth::id();
        $title = $request->title;

        $file = $request->file('file');
        $filename = time().'_'.$file->getClientOriginalName();
        $file->storeAs("public/"."media/"."uploadimage/".$contest_name.'/'.$user_id.'/'.$contest_id.'/'.$category_name.'/'.$image_no.'/',$filename); //Pass the date and time folder name
        $image_path = ($contest_name.'/'.$user_id.'/'.$contest_id.'/'.$category_name.'/'.$image_no.'/'.$filename);
        $q =  DB::table('contest_image_uploads')->insert(
            [
                'contest_unique_id'=> $contest_unique_id,
                'user_id'=> $user_id,
                'image_path'=> $image_path,
                'contest_id' => $contest_id,
                'category_name' => $category_name,
                'image_no' => $image_no,
                'imageShow_id' => $imageShow_id,
                'title' => $title,
                "created_at" =>  \Carbon\Carbon::now(), # new \Datetime()
                "updated_at" => \Carbon\Carbon::now(),  # new \Datetime()
                        
              
            ]);

      
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

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
    public function destroy($id)
    {
        //
    }
}
