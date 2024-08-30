<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\QuotationEnquiry;
use App\Models\QuotationInput;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

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

    // Dashboard
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
        $quotations = QuotationInput::select('*')
        ->leftJoin('status','status.id','quotation_input.status')
        ->leftJoin('users','users.id','quotation_input.user_id')
        ->where('quotation_input.user_id', Auth::user->id)
        ->take(10)->get();
    }
        return view('dashboard', compact('searchcount','quotationcount','quotations'));
    }

    // Users List
    public function users()
    {
        if(Auth::user()->user_role == 1){
        $users = User::select('*')->orderBy('created_at','desc')->get();

        return view('users', compact('users'));
        }
        else{
            return redirect()->route('login')->with('error', 'You do not have access to this page.');
        }
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

    public function changepassword(Request $request)
{
    // Validate the request data
    $request->validate([
        'newpassword' => 'required|min:8',
        'confirmnewpassword' => 'required|same:newpassword',
        'currentpassword' => 'nullable',
    ], [
        'confirmnewpassword.same' => 'The confirmation password must match the new password.',
    ]);

    // Find the user by ID
    $data = User::find($request->user_id);

    // Check if the user exists
    if ($data) {
        // If currentpassword is present in the request, validate it
        if ($request->has('currentpassword')) {
            if (!Hash::check($request->input('currentpassword'), $data->password)) {
                return back()->with('error', 'Current password is incorrect.');
            }
        }

        // Hash the new password and assign it
        $data->password = Hash::make($request->input('newpassword'));

        // Update the user record
        $res = $data->save(); // Using save() instead of update()

        if ($res) {
            return back()->with('success', 'Password changed successfully.');
        } else {
            return back()->with('error', 'Something went wrong.');
        }
    } else {
        // User not found
        return back()->with('error', 'User not found.');
    }
}

public function adduser(Request $request){

    if(Auth::user()->user_role == 1){
        if($request->status == 'active'){
            $status = 1;
        }
        else{
            $status = 0;
        }
            $chk = User::select('*')->where('email',$request->email)->count();
            if($chk){
                return back()->with('error', 'Email already exists.');
            }

            $data = new User();
            $data->full_name = $request->name;
            $data->email = $request->email;
            $data->password = Hash::make($request->password);
            $data->active = $status;
            $data->user_role = "2";
    
          $res =  $data->save();
          if ($res) {
            return back()->with('success', 'User added successfully.');
        } else {
            return back()->with('error', 'Something went wrong.');
        }
    }
    else{
        return back();
    }
}

public function changeuserstatus($id){

    if(Auth::user()->user_role == 1){
        $data = User::find($id);
        if($data->active == 1){
            $data->active = 0;
        }
        else{
            $data->active = 1;
        }

        $res = $data->update();
        if ($res) {
            return back()->with('success', 'User status changed successfully.');
        } else {
            return back()->with('error', 'Something went wrong.');
        }

    }
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
