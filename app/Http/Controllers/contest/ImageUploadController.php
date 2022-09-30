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
        $contest_id = $request->contest_id;
        $user_id = Auth::id();
        $contest_image_list = DB::table('contests')->where('contest_id', $contest_id)->get();
        
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
        $contest_name = $request->contest_name;
        $cat_name = $request->category;
        $img_no = $request->img_no;
        $con_id = $request->con_id; 
        $user_id = Auth::id();
    

        $validator = Validator::make($request->all(),[
            'title' => 'required|regex:/^[a-zA-Z]+$/u',
            'image' => 'required|image|mimes:jpg,png,jpeg,gif,svg|max:2048',
        ]);
        if($validator->fails()) {
            return back()->withErrors($validator);

        }else{
            $image = $request->file('image'); 
            $ext = $image->extension();
        	$image_name = time().'.'.$ext;
			
        	
        	$image->storeAs("public/"."media/"."uploadimage/".$contest_name.'/'.$user_id.'/'.$con_id.'/'.$cat_name.'/'.$img_no.'/',$image_name); //Pass the date and time folder name
            $image_path = ($contest_name.'/'.$user_id.'/'.$con_id.'/'.$cat_name.'/'.$img_no.'/'.$image_name);
           
            $title = $request->title;
            $query = DB::table('contest_images')->insert(
                [
                    'title' => $title,
                    'user_id' => $user_id,
                    'contest_id' => $con_id,
                    'category_name' => $cat_name,
                    'img_no' => $img_no,
                    'path' => $image_path,
                    "created_at" =>  \Carbon\Carbon::now(), # new \Datetime()
                    "updated_at" => \Carbon\Carbon::now(),  # new \Datetime()
                    
                ]
            );
            if($query){
                
                return redirect()->route('imgUploadSuccess');
            

            }else{
                echo "failed";
            }
        }

       
      

        

      

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
