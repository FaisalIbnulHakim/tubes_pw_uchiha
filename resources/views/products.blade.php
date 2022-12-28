@include('layouts.main')
    <form action="/posts" >
      @if (request('author'))
      <input type="hidden" name="author" value="{{request('author')}}">
      @endif
    </form>
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://source.unsplash.com/1920x830?smarthphone" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://source.unsplash.com/1920x830?laptop" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://source.unsplash.com/1920x830?camera" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
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
                Publish oleh <a href="/profile?author={{$product->author->name}}" class="text-decoration-none">{{$product->author->name}}</a>
                <br>
                Jenis Produk: {{$product->category->jenis}}
              </small>
            </p>
            <p class="card-text">Harga RP. {{$product->harga}}</p>
            <p class="card-text">Tahun Rilis {{$product->tahun_rilis}}</p>
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
    <p class="text-center fs-4 fw-bold">No post found<br>Try to search another post</p>
@endif
<div class="d-flex justify-content-center mt-4">
  {{$products->links()}}
</div>