@include('layouts.main')
<link rel="stylesheet" href="/css/style.css">

@if ($products->count())

<h1 class="mb-3 text-center title-produk">{{$title}}</h1>
<hr class="garis-product">
<div class="container">
  <div class="row">
    @foreach ($products as $product)
      <div class="col-md-3 col-8 mx-auto mb-3 mt-4">
        <div class="card card-produk" >
            <img class="img-produk" src="https://source.unsplash.com/500x600?{{$product->category->jenis}}" class="card-img-top" alt="{{$product->category->jenis}}">
            <div class="card-body">
            <h5 class="card-title">{{$product->nama_produk}}</h5>
            <p>
              <small class="text-muted">
                Review oleh <a href="/profile?author={{$product->author->name}}" class="text-decoration-none">{{$product->author->name}}</a>
                <br>
                Jenis Produk: {{$product->category->jenis}}
              </small>
            </p>
            <p class="card-text">Harganya RP. {{$product->harga}}</p>
            <p class="card-text">Untuk tahun Rilisnya {{$product->tahun_rilis}}</p>
          </div>
          <div class="link-produk">
            <a href="products/{{$product->nama_produk}}" class="btn btn-produk">Detail Produk</a>
          </div>
        </div>
      </div>
    @endforeach
  </div>
</div>
@else
    <p class="text-center fs-4 fw-bold no-found">No post found<br>Try to search another post</p>
@endif
<div class="d-flex justify-content-center mt-4">
  {{$products->links()}}
</div>