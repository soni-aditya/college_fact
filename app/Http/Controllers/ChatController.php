<?php

namespace App\Http\Controllers;

use App\Converstion;
use App\Message;
use App\UserDetail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ChatController extends Controller
{
    public function index(){
        $user = Auth::user();
        $users=new UserDetail();
        $institution = $user->user_details['institution_id'];
        $members = [];

        $circle = $users->where(['institution_id'=>$institution])->get();
        foreach ($circle as $member){
            array_push($members, $member->user);
        }
//        return $members ;
        return view('user.chat',compact('members'));
    }
    public function startChat(Request $request){
        $input = $request->all();
        $user_one = $input['user_one'];
        $user_two = $input['user_two'];

        $conv = new Converstion();
        $check=null;

        $check = $conv->where([['user_one','=',$user_one],['user_two','=',$user_two]])
            ->orWhere([['user_one','=',$user_two],['user_two','=',$user_one]])->get();

        if(sizeof($check))
        {
//            $msg = $check[0]->messages->reverse();
            $msg = $check[0]->messages;
            $size = sizeof($msg);
            if(sizeof($msg)){
                $msg['size']=$size;
                $msg['conv_id']=$check[0]->id;
            }
            else{
                $msg['size'] = 0;
                $msg['conv_id']=$check[0]->id;
            }
            return ($msg);
        }
        else
        {
            $conv->user_one = $user_one;
            $conv->user_two = $user_two;

            if ($conv->save())
            {
                $messages =  $conv->messages;
                $size = sizeof($messages);
                if(sizeof($messages))
                {
                    $messages['size'] = $size;
                    $messages['conv_id']=$check[0]->id;
                }
                else{
                    $messages['size'] = 0;
                    $messages['conv_id']=$check[0]->id;
                }
                return ($messages);
            }
            else
            {
                return redirect('chat');
            }
        }
    }

    public function createChat(Request $request){
        $inputs = $request->all();

        $user_from = $inputs['user_one'];
        $user_to = $inputs['user_two'];
        $conv_id = $inputs['conv'];
        $msg = $inputs['msg'];

        $message = new Message();
        $message->converstion_id = $conv_id;
        $message->user_to = $user_to;
        $message->user_from = $user_from;
        $message->message = $msg;

        if($message->save()){
            return ['success'=>1];
        }
        else{
            return ['success'=>0];
        }
    }
}
