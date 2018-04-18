<?php

namespace App\Http\Controllers;

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
            $details= $details->find($user->id);
            if($details == NULL){
                return view('user.get_details');
            }
            else{
                $posts = array_reverse($this->getPosts()->toArray());
//                return $posts;
                return view('user.user_home',compact('posts'));
            }
        }
        else{
            return redirect('/');
        }
    }
    public function getPosts(){
        $user = Auth::user();
        $posts= [];
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

        $posts = $posts[0];

        foreach ($posts as $post){

            $post=$this->addSender($post);
        }
        return $posts;
    }
    public function addSender($p){
        $user = new User();
        $name = $user->find($p->sender_id);

        $p['sender_name'] = $name;
        return $p;
    }
}
