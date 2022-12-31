<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
  <link rel="stylesheet" href="/css/dash.css">
</head>
<body>
  {{-- SIDEBAR --}}
  <div class="container-account">
    @include('dashboard.layout.sidebar')
      {{-- LIST PRODUK --}}
      <main>
        <button id="menuBtn">
          <span class="material-symbols-outlined">menu</span>
        </button>
        <h1>Tambah Data Baru</h1>
        <div class="setting">
          <div class="account">
            <h2>Data Untuk Produk</h2>
            <form  action='{{route('store')}}' method='post' enctype="multipart/form-data" class="form">
              @csrf
              <div class="column">
                <div class="input-box">
                  <label for="nama_produk">Nama Produk</label>
                  <input type="text" name='nama_produk' id="nama_produk" required />
                </div>
                <div class="input-box">
                  <label for="brand">Brand</label>
                  <input type="text" name='brand' id="brand" required />
                </div>
              </div>
              <div class="column">
                <div class="input-box">
                  <label for="harga">Harga</label>
                  <input type="text" name='harga' id="harga" required />
                </div>
                <div class="input-box">
                  <label for="tahun_rilis">Tahun Rilis</label>
                  <input type="text" name='tahun_rilis' id="tahun_rilis" required />
                </div>
              </div>
              <div class="input-box">
                <label for="category_id">Jenis</label>
                <div>
                  <select type="text" name="category_id" required >
                    @foreach ($categories as $category)
                    @if(old('category_id') == $category->id)
                    <option value="{{$category->id}}" selected>{{$category->jenis}}</option>
                    @else
                    <option value="{{$category->id}}">{{$category->jenis}}</option>
                    @endif
                    @endforeach
                  </select>
                </div>
              </div>
              <div class="input-box">
                <label for="spesifikasi">Spesifikasi</label>
                <div class="text-area">
                    <textarea class="text-create"  type="text" name='spesifikasi' id="spesifikasi" required></textarea>
                </div>
              </div>
              <div class="input-box">
                <label for="deskripsi">Deskripsi</label>
                <div class="text-area">
                    <textarea class="text-create" type="text" name='deskripsi' id="deskripsi" required></textarea>
                </div>
              </div>
              <div class="input-box">
                <label for="link">Link Produk</label>
                <div class="text-area">
                    <textarea class="text-create" type="text" name='link' id="link" required></textarea>
                </div>
              </div>
              <div>
                <button class="button-create" type="submit" name="submit">Tambah Data</button>
              </div>
            </form>
          </div>
        </div>
      </main>
  </div>
  <script src="/js/dash.js"></script>
</body>
</html>
{{-- <!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Data Gagdet</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
  </head>
  <body class="bg-light">
    <main class="container">
       <!-- START FORM -->
       
       <form action='/dashboard/list' method='post' enctype="multipart/form-data">
        @csrf
        <div class="my-3 p-3 bg-body rounded shadow-sm">
            <div class="mb-3 row">
                <label for="nama_produk" class="col-sm-2 col-form-label">Nama_produk</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name='nama_produk' id="nama_produk">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="brand" class="col-sm-2 col-form-label">Brand</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name='brand' id="brand">
            </div>
            </div>
            <div class="mb-3 row">
                <label for="harga" class="col-sm-2 col-form-label">Harga</label>
                <div class="col-sm-10">
                    <input type="number" class="form-control" name='harga' id="harga">
            </div>
            </div>
            <div class="mb-3 row">
                <label for="tahun_rilis" class="col-sm-2 col-form-label">Tahun Rilis</label>
                <div class="col-sm-10">
                    <input type="number" class="form-control" name='tahun_rilis' id="tahun_rilis">
            </div>
            </div>
            <div class="mb-3 row">
                <label for="deskripsi" class="col-sm-2 col-form-label">Deskripsi</label>
            <div class="col-sm-10">
                    <input type="text" class="form-control" name='deskripsi' id="deskripsi">
            </div>
            </div>
            <div class="mb-3 row">
                <label for="spesifikasi" class="col-sm-2 col-form-label">Spesifikasi</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name='spesifikasi' id="spesifikasi">
            </div>
            </div>
            <div  class="mb-3">
                <label for="category_id" class="form-label">Jenis</label>
                <select class="form-select" name="category_id">
                @foreach ($categories as $category)
                    @if(old('category_id') == $category->id)
                    <option value="{{$category->id}}" selected>{{$category->jenis}}</option>
                    @else
                    <option value="{{$category->id}}">{{$category->jenis}}</option>
                    @endif
                @endforeach
                </select>
            </div>
            <div class="mb-3 row">
                <label for="simpan" class="col-sm-2 col-form-label"></label>
                <div class="col-sm-10"><button type="submit" class="btn btn-primary" name="submit">SIMPAN</button></div>
            </div>
        </form>
        </div> --}}