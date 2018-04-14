<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    protected $fillable=[
        'course_name'
    ];
    //Foreign key relationships
    public function user(){
        return $this->hasMany(User::class);
    }
}
