<?php

use App\Models\Category;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\gadgetcontroller;

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
    return view('about',[
        'title' => 'About'
    ]);
});

Route::get('/category', function () {
    return view('categories', [
        'title' => 'Category',
        'active' => 'categories',
        'categories' => Category::all()
    ]);
});
Route::resource('gadget', gadgetcontroller::class);

