<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PostComment extends Model
{
    protected $fillable=[
        'post_comment_type_id',
        'user_id',
        'content',
        'post_id',
        'like_count'
    ];

    //foreign Key Relationships
    public function comment_type(){
        return $this->belongsTo(PostCommentType::class);
    }
    public function user(){
        return $this->belongsTo(User::class);
    }
    public function post(){
        return $this->belongsTo(Post::class);
    }
}
