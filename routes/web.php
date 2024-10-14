<?php

use App\Http\Controllers\PortController;
use App\Http\Controllers\UsersController;
use Illuminate\Support\Facades\Route;

Route::get('login', [UsersController::class, 'login'])->name('login');
Route::post('login', [UsersController::class, 'loginsave'])->name('loginsave');
Route::get('forgotpassword', [UsersController::class, 'forgotpassword'])->name('forgotpassword');
// Route::get('insert', [UsersController::class, 'insert'])->name('insert');
Route::middleware('auth')->group(function () {
    Route::get('/logout', [UsersController::class, 'logout'])->name('logout');
    Route::post('changepassword', [UsersController::class, 'changepassword'])->name('changepassword');
    Route::post('adduser', [UsersController::class, 'adduser'])->name('adduser');
    Route::get('users', [UsersController::class, 'users'])->name('users');
    Route::get('changeuserstatus/{id}', [UsersController::class, 'changeuserstatus'])->name('changeuserstatus');
    Route::get('/', [UsersController::class, 'dashboard'])->name('dashboard');
    Route::get('/dashboard', [UsersController::class, 'dashboard'])->name('dashboard');
    Route::get('search', [PortController::class, 'search'])->name('search');
    Route::get('/job-statuses', [PortController::class, 'getJobStatuses']);

    Route::get('results', [PortController::class, 'results'])->name('results');
    Route::post('jobstatus', [PortController::class, 'jobstatus'])->name('jobstatus');
    Route::get('jobdetails/{id}', [PortController::class, 'jobdetails'])->name('jobdetails');
    Route::post('searchdata', [PortController::class, 'searchdata'])->name('searchdata');

});
