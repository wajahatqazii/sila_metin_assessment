<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use JWTAuth;
use Tymon\JWTAuth\Exceptions\JWTException;
//use Tymon\JWTAuth\Facades\JWTAuth;


class AuthController extends Controller
{
    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6',
        ]);

        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 400);
        }

        $user = new User();
        $user->name = $request->input('name');
        $user->email = $request->input('email');
        $user->password = Hash::make($request->input('password'));
        $user->save();

        try {
            if (!$token = JWTAuth::fromUser($user)) {
                return response()->json(['error' => 'invalid_credentials'], 400);
            }
        } catch (JWTException $e) {
            return response()->json(['error' => 'could_not_create_token'], 500);
        }

        return response()->json(compact('token', 'user'));
    }

    public function login(Request $request)
    {
        $credentials = $request->only('email', 'password');

        try {
            if (!$token = JWTAuth::attempt($credentials)) {
                return response()->json(['error' => 'invalid_credentials'], 400);
            }
        } catch (JWTException $e) {
            return response()->json(['error' => 'could_not_create_token'], 500);
        }

        return response()->json(compact('token'));
    }
    //login using passport
//    public function register(Request $request)
//    {
//        $validatedData = $request->validate([
//            'name' => 'required|string|max:255',
//            'email' => 'required|string|email|unique:users|max:255',
//            'password' => 'required|string|min:8|confirmed',
//        ]);
//        $user = User::create([
//            'name' => $validatedData['name'],
//            'email' => $validatedData['email'],
//            'password' => bcrypt($validatedData['password']),
//        ]);
//        $token = $user->createToken('Token')->accessToken;
//        return response()->json(['token' => $token, 'user' => $user], 200);
//
//    }
//
//    public function login(Request $request)
//    {
//        $validatedData = $request->validate([
//            'email' => 'required|string|email|max:255',
//            'password' => 'required|string|min:8',
//        ]);
//
//        if (Auth::attempt($validatedData)) {
//            $token =  auth()->user()->createToken('Token')->accessToken;
//            return response()->json(['token' => $token], 200);
//        }
//        else{
//            return response()->json(['error' => 'Unauthorized Access User Correct Login'], 401);
//        }
//
//    }
    public function userInfo(){
        $user=auth()->user();
        return response()->json(['user' => $user], 200);

    }
}
