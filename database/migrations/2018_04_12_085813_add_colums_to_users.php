<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddColumsToUsers extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->string('username')->unique();
            $table->integer('banner_id')->unsigned(); //f-key
            $table->date('dob');
            $table->text('address');
            $table->integer('institution_id')->unsigned(); //f-key
            $table->integer('user_type_id')->unsigned(); //f-key
            $table->boolean('status');
            $table->boolean('alumini_status');
            $table->integer('mobile');
            $table->boolean('working_status');
            $table->year('year_of_passing');
            $table->integer('course_id')->unsigned(); //f-key

            //Adding foreign key relationships
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
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn(['username','banner_id','dob','address','institution_id','user_type_id','status',
                'alumini_status','mobile','working_status','year_of_passing','course_id']);
        });
    }
}
