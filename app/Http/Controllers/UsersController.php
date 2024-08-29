<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UsersController extends Controller
{
    public function login()
    {

        return view('login');
    }
    public function loginsave(Request $request)
    {
        // Validate the incoming request data
        // dd($request->all());
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);
        // Attempt to log the user in
        $credentials = $request->only('email', 'password');

        if (Auth::attempt($credentials)) {
            // Authentication passed, redirect to intended route or default to home
            return redirect()->intended('dashboard'); // change 'dashboard' to your intended route
        }
        
        return redirect()->route('login')->with('error', 'Invalid email or password.');
    }

    public function dashboard()
    {

        return view('dashboard');
    }

    public function users()
    {

        return view('users');
    }
    public function logout(Request $request)
    {
        // Log the user out
        Auth::logout();

        // Invalidate the session
        $request->session()->invalidate();

        // Regenerate the CSRF token
        $request->session()->regenerateToken();

        // Redirect to the login page or any other route
        return redirect()->route('login')->with('success', 'You have been logged out successfully.');
    }

    // public function insert(){
    //     $data = new User();
    //     $data->full_name = "Admin";
    //     $data->email = "admin@demo.com";
    //     $data->password = Hash::make("12345678");
    //     $data->user_role = "1";

    //     $data->save();

    //     return view('login');
    // }
}
