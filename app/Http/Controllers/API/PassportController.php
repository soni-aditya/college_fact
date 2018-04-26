<?php
/**
 * Author : Aditya Soni
 */
namespace App\Http\Controllers\API;

use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;


class PassportController extends Controller
{
    public $successStatus = 200;

    /**
     * Login API
     */
    public function login(){
        if(Auth::attempt(['email'=> request('email'), 'password' => request('password')])){
            //Authenticating User
            $user = Auth::user();
            //Checking the success token
            $success['token'] = $user->createToken('CollegeFactionApp')->accessToken;
            return response()->json(['success'=>$success],$this->successStatus);
        }
        else{
            return response()->json(['error'=>'Unauthorized'],401);
        }
    }

    /**
     * Resister API
     */
    public function register(Request $request){
        //Data Validation
        $validator = Validator::make($request->all(),[
            'name' => 'required',
            'email'=>   'required|email',
            'password'=>    'required',
            'c_password'=>  'required|same:password'
        ]);
        //If Validation Fails
        if($validator->fails()){
            return response()->json(['error' => $validator->errors()],401);
        }
        //
        //Fetching All Inputs
        $input = $request->all();
            //Hashing Password
        $input['password'] = bcrypt($input['password']);


        //In case of Any Runtime Error
        try{
            $user= User::create($input);
        }
        catch (\Exception $e){
            return response()->json(['error' => $e],500);
        }
        //Releasing the success token
        $success['token']=$user->createToken('CollegeFactionApp')->accessToken;
        $success['name']=$user->name;

        return response()->json(['success'=>$success],$this->successStatus);
    }

    /**
     * Get User Details
     */
    public function getDetails(){
        $user = (new User())->all();
        return response()->json(['success'=>$user],$this->successStatus);
    }
}
