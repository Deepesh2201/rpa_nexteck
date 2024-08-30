<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\QuotationEnquiry;
use App\Models\QuotationInput;
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
    {   if(Auth::user()->user_role == 1){
        $searchcount = QuotationInput::select('*')->count();
        $quotationcount = QuotationEnquiry::select('*')->count();
        $quotations = QuotationInput::select('*')
        ->leftJoin('status','status.id','quotation_input.status')
        ->leftJoin('users','users.id','quotation_input.user_id')
        ->take(10)->get();
    }
    else{

        $searchcount = QuotationInput::select('*')->where('user_id', Auth::user()->id)->count();
        $quotationcount = QuotationEnquiry::select('*')->where('user_id', Auth::user()->id)->count();
        $quotations = QuotationInput::select('*')->where('user_id', Auth::user()->id)->take(10)->get();
    }
        return view('dashboard', compact('searchcount','quotationcount','quotations'));
    }

    public function users()
    {
        $users = User::select('*')->get();



        return view('users', compact('users'));
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

    public function forgotpassword(){

        return view('forgotpassword');
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
