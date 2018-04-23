<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateConverstionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('converstions', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_one')->unsigned();
            $table->integer('user_two')->unsigned();
            $table->timestamps();

            //FK relationships
            $table->foreign('user_one')
                ->references('id')
                ->on('users')
                ->onDelete('cascade');
            $table->foreign('user_two')
                ->references('id')
                ->on('users')
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
        Schema::dropIfExists('converstions');
    }
}
