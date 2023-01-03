<?php  
function get_CURL($url)
{
  $curl = curl_init();
  curl_setopt($curl, CURLOPT_URL, $url);
  curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
  $result = curl_exec($curl);
  curl_close($curl);

  return json_decode($result, true);
}
function koneksi()
{
  $conn = mysqli_connect("localhost", "root", "");
  mysqli_select_db($conn, "tubes_pw_uchiha");

  return $conn;
}
function query($sql)
{
  $conn = koneksi();
  $result = mysqli_query($conn, "$sql");

  if (mysqli_num_rows($result) == 1) {
    return mysqli_fetch_assoc($result);
  }
  $rows = [];
  while ($row = mysqli_fetch_assoc($result)) {
    $rows[] = $row;
  }
  return $rows;
}
$foto = query("SELECT nama_produk FROM products WHERE category_id = 1");
$foto = array_column($foto, 'nama_produk');
$allFoto = [];
foreach ($foto as $ft) {
  $myFoto = [];
  $hasil = get_CURL('https://phone-specs-api.azharimm.dev/search?query=' . $ft);
  $myFoto['foto'] = $hasil['data']['phones'][0]['image'];
  $myFoto['nama'] = $ft;

  $allFoto[] = $myFoto;
}
?>
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
          <h2>Profile Publisher</h2>
          <hr class="divider light my-4">
          <h3>{{$name}}</h3>
          <p>{{$biodata}}</p>
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
      <div class="col-md-3 col-8 mx-auto mb-3 mt-4">
        <div class="card card-produk" >
          @if($product->category_id == 1)
            @foreach ($allFoto as $ft)
            @if($ft['nama'] == $product->nama_produk)
            <img class="img-produk" height="276.48" src="<?= $ft['foto'] ?>" class="card-img-top">
            @endif
            @endforeach
          @else
            <img class="img-produk" src="https://source.unsplash.com/500x600?{{$product->category->jenis}}" class="card-img-top" alt="{{$product->category->jenis}}">
          @endif
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
            <a href="/detail/{{$product->id}}" class="btn btn-produk">Detail Produk</a>
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