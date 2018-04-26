<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePostCommentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('post_comments', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('post_comment_type_id')->unsigned(); //f-key
            $table->integer('user_id')->unsigned(); //f-key
            $table->longText('content');
            $table->integer('post_id')->unsigned(); //f-key
            $table->unsignedBigInteger('like_count');
            $table->timestamps();

            //Adding foreign key relationships
            $table->foreign('post_comment_type_id')
                ->references('id')
                ->on('post_comment_types')
                ->onDelete('cascade');
            $table->foreign('user_id')
                ->references('id')
                ->on('users')
                ->onDelete('cascade');
            $table->foreign('post_id')
                ->references('id')
                ->on('posts')
                ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('post_comments');
    }
}
