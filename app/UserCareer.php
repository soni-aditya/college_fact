<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserCareer extends Model
{
    protected $fillable=[
        'user_id',
        'organization',
        'position',
        'location',
        'started_in',
        'worked_upto',
        'review'
    ];
    //foreign Key Relationships
    public function user(){
        return $this->belongsTo(User::class);
    }
}
