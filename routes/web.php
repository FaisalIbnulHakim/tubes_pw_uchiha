<?php

use App\Models\Category;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\gadgetcontroller;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\DashboardProductController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('home', [
        'title' => 'Home'
    ]);
});
Route::get('/about', function () {
    return view('about', [
        'title' => 'About'
    ]);
});

Route::get('/category', [CategoryController::class, 'index'])->middleware('auth');
Route::get('/category/sp', [CategoryController::class, 'sp'])->middleware('auth');
Route::get('/category/lp', [CategoryController::class, 'lp'])->middleware('auth');
Route::get('/category/cm', [CategoryController::class, 'cm'])->middleware('auth');

Route::get('/profile', [ProfileController::class, 'index'])->middleware('auth');
Route::get('/products', [ProductController::class, 'index']);

Route::get('/login', [LoginController::class, 'index'])->name('login')->middleware('guest');
Route::post('/login', [LoginController::class, 'authenticate']);
Route::post('/logout', [LoginController::class, 'logout']);
Route::get('/register', [RegisterController::class, 'index'])->middleware('guest');
Route::post('/register', [RegisterController::class, 'store']);

Route::get('/dashboard', [DashboardProductController::class, 'dash'])->middleware('admin');
Route::resource('/dashboard/list', DashboardProductController::class)->middleware('admin');


Route::post('/dashboard/list/store', [DashboardProductController::class, 'store'])->name('store')->middleware('admin');
Route::post('/dashboard/list/edit', [DashboardProductController::class, 'update'])->name('update')->middleware('admin');
Route::post('/dashboard/list/{id}', [DashboardProductController::class, 'destroy'])->name('destroy')->middleware('admin');
Route::get('/dashboard/list/{id}', [DashboardProductController::class, 'edit'])->name('edit')->middleware('admin');


// Route::resource('/dashboard/account', ProfileController::class)->middleware('admin');

Route::get('/dashboard/account/{id}/koreksi', [ProfileController::class, 'koreksi'])->name('koreksi')->middleware('admin');
Route::post('/dashboard/account/koreksi', [ProfileController::class, 'ubah'])->name('ubah')->middleware('admin');
