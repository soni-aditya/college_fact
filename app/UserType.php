<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserType extends Model
{
    protected $fillable=[
        'type_name'
    ];
    //Foreign key relationships
    public function user(){
        return $this->hasMany(UserDetail::class);
    }
}
