<!doctype html>
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
       <form action='' method='post'>
        <div class="my-3 p-3 bg-body rounded shadow-sm">
            <div class="mb-3 row">
                <label for="produk" class="col-sm-2 col-form-label">Produk</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name='produk' id="produk">
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
                <label for="tahunrilis" class="col-sm-2 col-form-label">Tahun Rilis</label>
                <div class="col-sm-10">
                    <input type="number" class="form-control" name='tahunrilis' id="tahunrilis">
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
            <div class="mb-3 row">
                <label for="tipe" class="col-sm-2 col-form-label">Tipe</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name='tipe' id="tipe">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="simpan" class="col-sm-2 col-form-label"></label>
                <div class="col-sm-10"><button type="submit" class="btn btn-primary" name="submit">SIMPAN</button></div>
            </div>
          </form>
        </div>