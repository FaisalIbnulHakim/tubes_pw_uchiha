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
@include('layouts.main')
@foreach($products as $product)
<div class="container mt-4 main"> 
    <div class="row justify-content-center mb-5">
        <div class="col-md-10">
        <h1 class="mb-3 det-top">{{$product->category->jenis}}</h1>
            <div>  
                <h2 class="det-nama">{{$product->nama_produk}}</h2>
                <div>
                    @if($product->category_id == 1)
                        @foreach ($allFoto as $ft)
                        @if($ft['nama'] == $product->nama_produk)
                        <img class="img-det"src="<?= $ft['foto'] ?>" class="card-img-top">
                        @endif
                        @endforeach
                    @else
                        <img class="img-det" src="https://source.unsplash.com/500x600?{{$product->category->jenis}}" class="card-img-top" alt="{{$product->category->jenis}}">
                    @endif
                        <div class="mb-3 pt-3 lg:border-t lg:mt-8 lg:my-0 card-det">
                            <h2 class="font-bold tracking-normal text-lg text-center card-ip">Info Product</h2>
                            <h5>Di Publish Oleh <a href="/profile?author={{$product->author->name}}" class="text-decoration-none author">{{$product->author->name}}</a></h5>
                            <h5>Brand {{$product->brand}}</h5>
                            <h5>Harga {{$product->harga}}</h5>
                            <h5>Tahun Rilis {{$product->tahun_rilis}}</h5>
                            <h2 class="font-bold tracking-normal text-lg text-center card-sp">Spesifikasi Product</h2>
                            <article class="my-3 fs-5 art-spec">
                                {!! $product->spesifikasi !!}
                            </article>
                            <h2 class="font-bold tracking-normal text-lg text-center card-dp">Deskripsi Product</h2>
                            <article class="my-3 fs-5 art-desc">
                                {!! $product->deskripsi !!}
                            </article>
                            <div>
                                <a href="/products" class="btn btn-produk bi bi-arrow-left d-inline"> Back to products</a>
                                <a href="{{$product->link}}" target="_blank" class="btn btn-produk d-inline">Link Product <span class="bi bi-arrow-right"></span></a>
                            </div>
                            
                        </div>    
                </div>
            </div>
        </div>
    </div>
</div>
@endforeach