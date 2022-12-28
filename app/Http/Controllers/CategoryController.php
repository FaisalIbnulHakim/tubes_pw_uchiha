<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Foundation\Auth\User;

class CategoryController extends Controller
{
    public function index()
    {
        $title = '';
        return view('categories.index', [
            'title' => 'Profile' . $title,
            'active' => 'products',
            "products" => Product::latest()->paginate(8)->withQueryString()
        ]);
    }
    public function sp()
    {
        return view('categories.sp', [
            'title' => 'Product Smartphone',
            'active' => 'products',
            "products" => Product::latest()->where('category_id', 1)->paginate(8)->withQueryString()
        ]);
    }
    public function lp()
    {
        return view('categories.lp', [
            'title' => 'Product Laptop',
            'active' => 'products',
            "products" => Product::latest()->where('category_id', 2)->paginate(8)->withQueryString()
        ]);
    }
    public function cm()
    {
        return view('categories.cm', [
            'title' => 'Product Camera',
            'active' => 'products',
            "products" => Product::latest()->where('category_id', 3)->paginate(8)->withQueryString()
        ]);
    }
}
