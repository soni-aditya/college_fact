<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUserDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_details', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->unsigned();
            $table->string('username')->unique();
            $table->integer('banner_id')->unsigned()->default(1); //f-key
            $table->date('dob')->default('1965-01-01');
            $table->text('address');
            $table->integer('institution_id')->unsigned()->default(1); //f-key
            $table->integer('user_type_id')->unsigned()->default(1); //f-key
            $table->boolean('status')->default(0);
            $table->boolean('alumini_status')->default(0);
            $table->integer('mobile')->default('0000000000');
            $table->boolean('working_status')->default(0);
            $table->year('year_of_passing');
            $table->integer('course_id')->unsigned()->default(1); //f-key
            $table->timestamps();

            //Adding foreign key relationships
            $table->foreign('user_id')
                ->references('id')
                ->on('users')
                ->onDelete('cascade');
            $table->foreign('banner_id')
                ->references('id')
                ->on('banners')
                ->onDelete('cascade');
            $table->foreign('institution_id')
                ->references('id')
                ->on('institutions')
                ->onDelete('cascade');
            $table->foreign('user_type_id')
                ->references('id')
                ->on('user_types')
                ->onDelete('cascade');
            $table->foreign('course_id')
                ->references('id')
                ->on('courses')
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
        Schema::dropIfExists('user_details');
    }
}
