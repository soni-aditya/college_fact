<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEventsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('events', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('inviter_id')->unsigned(); //f-key
            $table->date('event_date');
            $table->integer('event_type_id')->unsigned(); //f-key
            $table->longText('description');
            $table->integer('poster')->unsigned(); //f-key
            $table->timestamps();

            //Adding foreign key relationships
            $table->foreign('inviter_id')
                ->references('id')
                ->on('users')
                ->onDelete('cascade');
            $table->foreign('event_type_id')
                ->references('id')
                ->on('event_types')
                ->onDelete('cascade');
            $table->foreign('poster')
                ->references('id')
                ->on('banners')
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
        Schema::dropIfExists('events');
    }
}
