<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Laravel\Passport\HasApiTokens;

class User extends Authenticatable
{
    use Notifiable,HasApiTokens;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'email',
        'password',
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

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    //foreign Key Relationships
    public function banner(){
        return $this->belongsTo(Banner::class);
    }
    public function course(){
        return $this->belongsTo(Course::class);
    }
    public function user_type(){
        return $this->belongsTo(UserType::class);
    }
    public function institution(){
        return $this->belongsTo(Institution::class);
    }
        //
    public function user_career(){
        return $this->hasOne(UserCareer::class);
    }
        //
    public function friend_request_sender(){
        return $this->hasMany(FriendRequest::class,'sender_id');
    }
    public function friend_request_reciever(){
        return $this->hasMany(FriendRequest::class,'reciever_id');
    }
        //
    public function posts(){
        return $this->hasMany(Post::class,'sender_id');
    }
        //
    public function post_commnets(){
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
        //
    public function events(){
        return $this->hasMany(Event::class,'inviter_id');
    }
}
