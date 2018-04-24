<?php

namespace App\Http\Controllers;

use App\Banner;
use App\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
        $requests = $request->all();

        $post = new Post();

        $post->sender_id = Auth::user()->id;
        $post->content = $requests['content'];
        $post->banner_id = ($this->processFile($request))['id'];

        if($post->save()){
            Session::flash('flash_message','Your Post has been shared on timeline');
         return redirect('/home');
        }
        else{
            Session::flash('flash_message','Some Error Occured !!!');
            return redirect('/home');
        }
    }
    public function processFile($req){
        $file = $req->file('banner_id');

        //Display File Name
//        echo 'File Name: '.$file->getClientOriginalName();
//        echo '<br>';

        //Display File Extension
//        echo 'File Extension: '.$file->getClientOriginalExtension();
//        echo '<br>';

        //Display File Real Path
//        echo 'File Real Path: '.$file->getRealPath();
//        echo '<br>';

        //Display File Size
//        echo 'File Size: '.$file->getSize();
//        echo '<br>';

        //Display File Mime Type
//        echo 'File Mime Type: '.$file->getMimeType();

        //Move Uploaded File
        $destinationPath = './img/banners';
        $name =str_replace(' ', '', $file->getClientOriginalName());
        $file->move($destinationPath,$name);

        return $this->saveToBanner($destinationPath,$name);
    }

    public function saveToBanner($path,$name){
        $full = $path.'/'.$name;

        $banner = new Banner();

        return $banner->create(['name'=>'Post poster','src'=>$full,'banner_type_id'=>1]);
    }
    /**
     * Display the specified resource.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {
        //
    }
}
