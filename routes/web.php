<?php

use App\Http\Controllers\gadgetcontroller;
use Illuminate\Support\Facades\Route;

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

Route::get('/category', function(){
    return view('categories', [
        'title' => 'Category',
        'active' => 'categories'
    ]);
});
Route::resource('gadget', gadgetcontroller::class);

