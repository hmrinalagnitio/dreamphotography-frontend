<?php

namespace App\Http\Controllers\contest;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Auth;

class ImageUploadSuccessController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $user_id = Auth::id();
        $contest_img_upload_data = DB::table('contest_images')->where('user_id', $user_id)->get();

        foreach($contest_img_upload_data as $contest_cat_name){
            $cat_name[] = $contest_cat_name->category_name;
        }
        foreach($cat_name as $c_data){
            $c_contest = $c_data;
        }
        $contest_cat_data = DB::table('contest_images')->where('category_name', $c_contest)->get();
        foreach($contest_cat_data as $contest_cat){
            $img[] = $contest_cat->img_no;
        }
        foreach($img as $img_number_data){
            $img_number[] = $img_number_data;
        }
        foreach($img_number as $img){
            $c_img = $img;

        }
      
        $q = DB::table('contest_images')->distinct()->get('category_name');
        


        $data = DB::table('contest_images')->whereRaw('created_at IN (select MAX(created_at) FROM contest_images GROUP BY category_name)')->get();
      
       

        echo "<pre>";
        print_r($q);
        exit(); 
     
       
        
  
           

     
    

        // return view('contest.imageUploadSuccess');
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
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
