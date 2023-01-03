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
            'biodata' => $author->biodata,
            'email' => $author->email,
            'active' => 'products',
            "products" => Product::latest()->filter(request(['author']))->paginate(8)->withQueryString()
        ]);
    }
    public function koreksi($id)
    {
        $user = User::select('*')->where('id', $id)->get();
        return view('dashboard.account.koreksi', [
            'user' => $user
        ]);
        // return Product::where('id', $id)->get();
        // return Category();
    }
    public function ubah(Request $request)
    {
        $rules = ([
            'name' => 'required',
            'email' => 'required|email:dns',
            'password' => 'required|',
            'user_type' => 'required',
            'biodata' => 'required'
        ]);
        $validateData = $request->validate($rules);

        $user = User::where('id', $request->id)
            ->update($validateData);

        return redirect('/dashboard/list')->with('success', 'Profile publisher sudah di ubah');
    }
}
