<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class FriendRequest extends Model
{
    protected $fillable=[
        'sender_id',
        'reciever_id',
        'request_type_id'
    ];
    //Foreign key relationships
    public function request_type(){
        return $this->belongsTo(RequestType::class);
    }
    //
    public function sender(){
        return $this->belongsTo(User::class,'sender_id');
    }
    public function reciever(){
        return $this->belongsTo(User::class,'reciever_id');
    }
}
