<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    protected $fillable=[
        'inviter_id',
        'event_date',
        'event_type_id',
        'description',
        'poster'
    ];

    //foreign Key Relationships
    public function inviter(){
        return $this->belongsTo(User::class,'inviter_id');
    }
    public function event_type(){
        return $this->belongsTo(EventType::class);
    }
    public function poster(){
        return $this->belongsTo(Banner::class,'poster');
    }
}
