<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Message extends Model
{
    protected $fillable=[
        'converstion_id',
        'user_to',
        'user_from',
        'message'
    ];
    //Relationships
    public function conversation(){
        return $this->belongsTo(Converstion::class);
    }
    public function sender(){
        return $this->belongsTo(User::class,'user_from');
    }
    public function reciever(){
        return $this->belongsTo(User::class,'user_to');
    }
}
