<?php

use App\Http\Controllers\PortController;
use App\Http\Controllers\UsersController;
use Illuminate\Support\Facades\Route;

Route::get('login', [UsersController::class, 'login'])->name('login');
Route::post('login', [UsersController::class, 'loginsave'])->name('loginsave');
Route::get('/logout', [UsersController::class, 'logout'])->name('logout');
// Route::get('insert', [UsersController::class, 'insert'])->name('insert');
Route::middleware('auth')->group(function () {
    Route::get('users', [UsersController::class, 'users'])->name('users');
    Route::get('/', [UsersController::class, 'dashboard'])->name('dashboard');
    Route::get('/dashboard', [UsersController::class, 'dashboard'])->name('dashboard');
    Route::get('search', [PortController::class, 'search'])->name('search');
    Route::get('results', [PortController::class, 'results'])->name('results');
});
