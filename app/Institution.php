<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Institution extends Model
{
    protected $fillable=[
        'name',
        'address'
    ];
    //Foreign key relationships
    public function user(){
        return $this->hasMany(User::class);
    }
}
