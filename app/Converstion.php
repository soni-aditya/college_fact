<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Converstion extends Model
{
    protected $fillable=[
        'user_one',
        'user_two'
    ];

    //Relationships
    public function user_one(){
        return $this->belongsTo(User::class,'user_one');
    }
    public function user_two(){
        return $this->belongsTo(User::class,'user_two');
    }

    public function messages(){
        return $this->hasMany(Message::class);
    }
}
