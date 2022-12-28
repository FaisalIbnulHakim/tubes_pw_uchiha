@extends('layouts.main')

@section('container')
<form action="/get" >
  @if (request('author'))
  <input type="hidden" name="author" value="{{request('author')}}">
  @endif
</form>
@if ($products->count())
<div class="page-section bg-white" id="profile">
  <div class="container profile-page">
      <div class="p-4 p-md-5 mt-4 mb-4 text-white rounded bg-dark">
      <div class="row justify-content-center">
          <div class="col-8 text-center">
          <h2>Profile Admin</h2>
          <hr class="divider light my-4">
          <h3>{{$name}}</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt neque non dicta quibusdam nobis sed rerum. Vel id perferendis dolores et quidem accusantium tempore nostrum, nihil voluptas cupiditate! Modi, est.</p>
          <text-muted>{{$email}}</text-muted>
          </div>
      </div>
      </div>
  </div>
</div>


<h1 class="mb-3 text-center title-produk">Semua Publish</h1>

<div class="container">
  <div class="row">
    @foreach ($products as $product)
      <div class="col-md-3 mb-3 mt-4">
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
            <a href="products/{{$product->nama_produk}}" class="btn btn-primary btn-produk">Detail Produk</a>
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
@endsection