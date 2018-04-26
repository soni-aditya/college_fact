<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RequestType extends Model
{
    protected $fillable=[
        'type_name'
    ];
    //Foreign key relationships
    public function friend_request(){
        return $this->hasMany(FriendRequest::class);
    }
}
