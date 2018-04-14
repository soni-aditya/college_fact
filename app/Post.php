<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $fillable=[
        'sender_id',
        'content',
        'banner_id'
    ];
    //foreign Key Relationships
    public function sender(){
        return $this->belongsTo(User::class,'sender_id');
    }
    public function banner(){
        return $this->belongsTo(Banner::class,'banner_id');
    }
    //
    public function comments(){
        return $this->hasMany(PostComment::class);
    }
        //
    public function post_likes(){
        return $this->hasMany(PostLike::class);
    }
        //
    public function post_shares(){
        return $this->hasMany(PostShare::class);
    }
}
