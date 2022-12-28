<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use PHPUnit\Util\Filter;

class ProfileController extends Controller
{
    public function index()
    {
        $title = '';
        if (request('author')) {
            $author = User::firstWhere('name', request('author'));
            $title = ' by ' . $author->name;
        }
        return view('profile', [
            'title' => 'Profile' . $title,
            'name' => $author->name,
            'email' => $author->email,
            'active' => 'products',
            "products" => Product::latest()->filter(request(['author']))->paginate(8)->withQueryString()
        ]);
    }

    public function show()
    {
        return view('dashboard.account.index', [
            'products' => Product::where('user_id', auth()->user()->id)->get()
        ]);
    }
}
