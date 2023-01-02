
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
  <link rel="stylesheet" href="/css/dash.css">
  
  <title>Dashboard pengguna</title>
</head>
<body>
  {{-- SIDEBAR --}}
  <div class="container">
    @include('dashboard.layout.sidebar')
    <main>
      <button id="menuBtn">
        <span class="material-symbols-outlined">menu</span>
      </button>
      <h1>Dashboard Admin</h1>
      <div class="insight">
        {{-- REVIEW --}}
        <div class="review">
          <span class="material-symbols-outlined">bar_chart</span>
          <div class="middle">
            <div class="left">
              <h3>Total Review </h3>
              <h2>{{$total}} Review</h2>
            </div>
          </div>
        </div>
        {{-- CATEGORY --}}
        <div class="category">
          <span class="material-symbols-outlined">category</span>
          <div class="middle">
            <div class="left">
              <h3>Total Category</h3>
              <h2>{{$cat1}} Smarthphone</h2>
              <h2>{{$cat2}} Laptop</h2>
              <h2>{{$cat3}} Camera</h2>
            </div>
          </div>
        </div>
        {{-- PROFILE --}}
        <div class="profile">
          <span class="material-symbols-outlined">person</span>
          <div class="middle">
            <div class="left">
              <h3>Profile</h3>
              <h2>{{auth()->user()->name}}</h2>
              <h2>{{auth()->user()->email}}</h2>
            </div>
          </div>
        </div>
        {{-- BIO --}}
      <div class="bio">
        <span class="material-symbols-outlined">description</span>
        <div class="middle">
          <div class="left">
            <h3>Biodata</h3>
            <h2>{{auth()->user()->biodata}}</h2>
          </div>
        </div>
      </div>
      </div>
      {{-- LIST PRODUK --}}
      <div class="list">
        <h2>List Review Produk</h2>
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
              <td class="tahun">{{$product->tahun_rilis}}</td>
              <td>
                <a href=""><span class="material-symbols-outlined">visibility</span></a>
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