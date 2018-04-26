<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFriendRequestsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('friend_requests', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('sender_id')->unsigned(); //f-key
            $table->integer('reciever_id')->unsigned(); //f-key
            $table->integer('request_type_id')->unsigned(); //f-key
            $table->timestamps();

            //Adding foreign key relationships
            $table->foreign('sender_id')
                ->references('id')
                ->on('users')
                ->onDelete('cascade');
            $table->foreign('reciever_id')
                ->references('id')
                ->on('users')
                ->onDelete('cascade');
            $table->foreign('request_type_id')
                ->references('id')
                ->on('request_types')
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
        Schema::dropIfExists('friend_requests');
    }
}
