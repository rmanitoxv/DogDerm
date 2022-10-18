<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Auth\Events\Registered;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function login(Request $request){
        $fields = $request->validate([
            'email' => 'required|string',
            'password' => 'required|string'
        ]);

        $user = User::where('email', $fields['email'])->first();

        if(!$user || !Hash::check($fields['password'], $user->password)){
            return response([
                'message' => 'Invalid Email or Password.'
            ], 401);
        }
        $token =  $user->createToken('pbs_pd')->plainTextToken;

        $response = [
            'user' => $user,
            'token' => $token,
        ];

        return response($response, 201);
    }

    public function register(Request $request){
        $fields = $request->validate([
            'first_name' => 'required|string',
            'last_name' => 'required|string',
            'email' => 'required|string|unique:users,email',
            'password' => 'required|string',
            'isAdmin' => 'required',
        ]);
        
        $fields['password'] = bcrypt($request->password);
        $user = User::create($fields);

        event(new Registered($user));
        
        $token =  $user->createToken('authToken')->plainTextToken;
       
        $response = [
            'user' => $user,
            'token' => $token,
        ];

        return response($response, 201);
    }

    public function index()
    {
        $users = User::get();
        return response()->json($users);
    }

    public function store(Request $request)
    {
        $fields = $request->validate([
            'first_name' => 'required|string',
            'last_name' => 'required|string',
            'email' => 'required|string|unique:users,email',
            'password' => 'required|string',
            'isAdmin' => 'required',
        ]);

        $user = User::create([
            'first_name' => $fields['first_name'],
            'last_name' => $fields['last_name'],
            'email' => $fields['email'],
            'password' => bcrypt($fields['password']),
            'isAdmin' => $fields['isAdmin']
        ]);

        $token =  $user->createToken('pbs_pd')->plainTextToken;

        $response = [
            'user' => $user,
            'token' => $token,
        ];

        return response($response, 201);
    }

    public function show($id)
    {
        return User::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        $fields = $request->validate([
            'first_name' => 'required|string',
            'last_name' => 'required|string',
            'email' => 'required|string',
            'url' => 'string'
        ]);

        $request['password'] = bcrypt($request['password']);
        $user = User::findOrFail($id);
        $user->update($request->all());

        return $user;
    }

    public function destroy($id)
    {
        return User::destroy($id);
    }

    public function logout (Request $request){
        auth()->user()->tokens()->delete();

        return [
            'message' => 'Logged out!'
        ];
    }

    public function getToken (Request $request){
        $token = auth()->user();
        return $token;
    }
}
