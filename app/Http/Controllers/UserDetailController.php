<?php

namespace App\Http\Controllers;

use App\UserDetail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserDetailController extends Controller
{
    public function getDetails(){
        return view('user_getDetails');
    }
    public function setInitialDetails(Request $request){
        $user_id = Auth::user()->id;
        $inputs = $request->all();

        $year = date_create($inputs['year_of_passing']);
        $year = date_format($year,"Y");

        $user_details = new UserDetail();
        $user_details->user_id = $user_id;
        $user_details->institution_id = $inputs['institute'];
        $user_details->course_id = $inputs['course'];
        $user_details->year_of_passing = $year;

        $user_details->username= Auth::user()->email;
        $user_details->address = 'No Address Given';

        if($user_details->save()){
            return view('users.user_home');
        }
        else{
            return view('user.get_details');
        }
    }
//    /**
//     * Display a listing of the resource.
//     *
//     * @return \Illuminate\Http\Response
//     */
//    public function index()
//    {
//        //
//    }
//
//    /**
//     * Show the form for creating a new resource.
//     *
//     * @return \Illuminate\Http\Response
//     */
//    public function create()
//    {
//        //
//    }
//
//    /**
//     * Store a newly created resource in storage.
//     *
//     * @param  \Illuminate\Http\Request  $request
//     * @return \Illuminate\Http\Response
//     */
//    public function store(Request $request)
//    {
//        //
//    }
//
//    /**
//     * Display the specified resource.
//     *
//     * @param  \App\UserDetail  $userDetail
//     * @return \Illuminate\Http\Response
//     */
//    public function show(UserDetail $userDetail)
//    {
//        //
//    }
//
//    /**
//     * Show the form for editing the specified resource.
//     *
//     * @param  \App\UserDetail  $userDetail
//     * @return \Illuminate\Http\Response
//     */
//    public function edit(UserDetail $userDetail)
//    {
//        //
//    }
//
//    /**
//     * Update the specified resource in storage.
//     *
//     * @param  \Illuminate\Http\Request  $request
//     * @param  \App\UserDetail  $userDetail
//     * @return \Illuminate\Http\Response
//     */
//    public function update(Request $request, UserDetail $userDetail)
//    {
//        //
//    }
//
//    /**
//     * Remove the specified resource from storage.
//     *
//     * @param  \App\UserDetail  $userDetail
//     * @return \Illuminate\Http\Response
//     */
//    public function destroy(UserDetail $userDetail)
//    {
//        //
//    }
}
