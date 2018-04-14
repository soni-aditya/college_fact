<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PostCommentType extends Model
{
    protected $fillable=[
        'name'
    ];

    //foreign Key Relationships
    public function post_comment(){
        return $this->hasMany(PostComment::class);
    }
}
