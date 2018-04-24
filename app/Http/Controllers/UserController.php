<?php

namespace App\Http\Controllers;

use App\Banner;
use App\Post;
use App\User;
use App\UserDetail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    public function index(){
        if(Auth::check()){
            $user = Auth::user();
            $details = new UserDetail();
            $details= $details->where(['user_id'=>$user->id])->first();
//            dd($details);
            if($details == NULL){
                return view('user.get_details');
            }
            else{
                $posts = $this->getPosts();
                if(isset($posts[0]))
                    $posts = array_reverse($posts);


                $banner = $this->getBanner();
//                return $posts;
                return view('user.user_home',compact('posts','banner'));
            }
        }
        else{
            return redirect('/');
        }
    }
    public function getBanner(){
        $banner_id=Auth::user()->user_details->banner_id;
        $banner= new Banner();
        $banner=$banner->find($banner_id)->first();
        return $banner->src;
    }
    public function getPosts(){
        $user = Auth::user();
        $posts= [];
        $all_posts=[];
        $post = new Post();
        $details=new UserDetail();
        $institution = $user->user_details['institution_id'];

        $circle = $details->where(['institution_id'=>$institution])->get();
        foreach ($circle as $member){
            $p =$post->where(['sender_id'=>$member['user_id']])->get();
            if(sizeof($p) != 0){
                array_push($posts,$p);
            }
        }

        foreach ($posts as $post){

            foreach ($post as $p){
                array_push($all_posts,$this->addSender($p));
            }

        }
        return $all_posts;
    }
    public function addSender($p){
        $user = new User();
        $name = $user->find($p->sender_id);

        $p['sender_name'] = $name;

        $this->addBanner($p);

        return $p;
    }
    public function addBanner($post){
        $post['banner'] = $post->banner;
    }
}
