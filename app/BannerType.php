<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BannerType extends Model
{
    protected $fillable =[
        'type_name'
    ];
    public function banners(){
        return $this->hasMany(Banner::class);
    }
}
