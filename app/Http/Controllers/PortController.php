<?php

namespace App\Http\Controllers;

use App\Models\Port;
use Illuminate\Http\Request;

class PortController extends Controller
{
    public function search(){
        return view('search');
    }

    public function results(){

        return view('results');
    }
}
