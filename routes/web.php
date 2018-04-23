<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Route::get('/home', function () {
//    return view('home');
//});

Auth::routes();

Route::get('/', function (){
    return view('auth.login');
});

Route::get('/home','UserController@index');
Route::post('/get_initial_details','UserDetailController@setInitialDetails');
Route::post('/store','PostController@store');


//Chating
Route::get('/chat','ChatController@index');
Route::post('/chat-start','ChatController@startChat');
Route::post('/chat-create','ChatController@createChat');