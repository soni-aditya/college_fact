<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Banner extends Model
{
    protected $fillable=[
        'name',
        'src',
        'banner_type_id'
    ];

    //Foreign key relationships
    public function banner_type(){
       return $this->belongsTo(BannerType::class);
    }
    //
    public function user(){
        return $this->hasMany(UserDetail::class);
    }
    public function posts(){
        return $this->hasOne(Post::class);
    }
    public function events(){
        return $this->hasMany(Event::class,'poster');
    }
}

