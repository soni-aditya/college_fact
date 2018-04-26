<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserDetail extends Model
{
    protected $fillable=[
        'user_id',
        'username',
        'banner_id',
        'dob',
        'address',
        'institution_id',
        'user_type_id',
        'status',
        'alumini_status',
        'mobile',
        'working_status',
        'year_of_passing',
        'course_id'
    ];

    //foreign Key Relationships
    public function user(){
        return $this->belongsTo(User::class);
    }
    public function course(){
        return $this->belongsTo(Course::class);
    }
    public function banner(){
        return $this->belongsTo(Banner::class);
    }
    public function user_type(){
        return $this->belongsTo(UserType::class);
    }
    public function institution(){
        return $this->belongsTo(Institution::class);
    }
}
