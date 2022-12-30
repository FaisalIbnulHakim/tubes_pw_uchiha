<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Category;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;

class DashboardProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function dash()
    {
        return view('dashboard.index', [
            'products' => Product::where('user_id', auth()->user()->id)->get(),
            'total' => Product::where('user_id', auth()->user()->id)->count('category_id'),
            'cat1' => Product::where('user_id', auth()->user()->id)->where('category_id', 1)->count('category_id'),
            'cat2' => Product::where('user_id', auth()->user()->id)->where('category_id', 2)->count('category_id'),
            'cat3' => Product::where('user_id', auth()->user()->id)->where('category_id', 3)->count('category_id'),
        ]);
    }

    public function index()
    {
        return view('dashboard.list.index', [
            'products' => Product::where('user_id', auth()->user()->id)->get()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.list.create', [
            'categories' => Category::all()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validateData = $request->validate([
            'nama_produk' => 'required|max:255',
            'brand' => 'required|max:255',
            'category_id' => 'required',
            'harga' => 'required|max:255',
            'tahun_rilis' => 'required|max:10',
            'spesifikasi' => 'required|max:1024',
            'deskripsi' => 'required|max:1024',
            'link' => 'required|max:255'
        ]);
        $validateData['user_id'] = auth()->user()->id;
        $validateData['excerpt'] = Str::limit(strip_tags($request->deskripsi), 200);

        Product::create($validateData);

        return redirect('/dashboard/list')->with('success', 'Data Baru Berhasil dibuat!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $product = Product::select('*')->where('id', $id)->get();
        return view('dashboard.list.edit', [
            'product' => $product,
            'categories' => Category::all()
        ]);
        // return Product::where('id', $id)->get();
        // return Category();
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $rules = ([
            'nama_produk' => 'required|max:255',
            'brand' => 'required|max:255',
            'category_id' => 'required',
            'harga' => 'required|max:255',
            'tahun_rilis' => 'required|max:10',
            'spesifikasi' => 'required|max:1024',
            'deskripsi' => 'required|max:1024',
            'link' => 'required|max:255'
        ]);
        $validateData = $request->validate($rules);
        $validateData['user_id'] = auth()->user()->id;
        $validateData['excerpt'] = Str::limit(strip_tags($request->deskripsi), 200);

        $product = Product::where('id', $request->id)
            ->update($validateData);

        return redirect('/dashboard/list')->with('success', 'Post has been updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Product::destroy($id);

        return redirect('/dashboard/list')->with('success', 'Post has been deleted!');
        // return Product::where('id', 13)->get();
        // return Product::where('id', $id)->get();
    }
}