<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
  <link rel="stylesheet" href="/css/dash.css">
  <title>Dashboard Data Review</title>
</head>
<body>
  {{-- SIDEBAR --}}
  <div class="container">
    @include('dashboard.layout.sidebar')
    <main>
      <button id="menuBtn">
        <span class="material-symbols-outlined">menu</span>
      </button>
      {{-- LIST PRODUK --}}
      <div class="list">
        <h2>List Review Produk, Oleh {{auth()->user()->name}}</h2>
        @if (session()->has('success'))
          <div class="alert alert-success col-lg-8" role="alert">
            {{session('success')}}
          </div>
        @endif
          <div class="create">
            <div class="middle">
              <div class="left">
                <a href="/dashboard/list/create"><h3>Tambah Data Baru</h3></a>
              </div>
            </div>
          </div>
          
        <table>
          <thead>
            <tr>
              <th><h3>Nama Produk</h3></th>
              <th><h3>Kategori Produk</h3></th>
              <th><h3>Brand Produk</h3></th>
              <th><h3>Harga</h3></th>
              <th><h3>Tahun Rilis</h3></th>
              <th><h3>Tombol</h3></th>
            </tr>
          </thead>
          <tbody>
            @foreach($products as $product)
            <tr>
              <td>{{$product->nama_produk}}</td>
              <td>{{$product->category->jenis}}</td>
              <td>{{$product->brand}}</td>
              <td>{{$product->harga}}</td>
              <td>{{$product->tahun_rilis}}</td>
              <td>
                <a href="/dashboard/list/{{$product->id}}/edit"><span class="material-symbols-outlined">edit</span></a>
                <form action="/dashboard/list/{{$product->id}}" method="post" class="form-del">
                  @method('delete')
                  @csrf
                  <button onclick="return confirm('are you sure')" class="btn-del"><span class="material-symbols-outlined">delete</span></button>
                </form>
              </td>
            </tr>
            @endforeach
          </tbody>
        </table>
      </div>
    </main>
  </div>
  <script src="/js/dash.js"></script>
</body>
</html>