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
        <div class="my-3 p-3 bg-secondary rounded shadow-sm">
            <div class="mb-3 row text-white">
                <label for="produk" class="col-sm-2 col-form-label">Produk</label>
                <div class="col-sm-10">
                    <select class="form-select" aria-label="default select example">
                        <option selected> Open This menu</option>
                        <option value="1">HP</option>
                        <option value="2">Kamera</option>
                        <option value="3">Laptop</option>
                    </select>
                </div>
            </div>
            <div class="mb-3 row text-white">
                <label for="brand" class="col-sm-2 col-form-label">Brand</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name='brand' id="brand">
            </div>
            </div>
            <div class="mb-3 row text-white">
                <label for="harga" class="col-sm-2 col-form-label">Harga</label>
                <div class="col-sm-10">
                    <input type="number" class="form-control" name='harga' id="harga">
            </div>
            </div>
            <div class="mb-3 row text-white">
                <label for="tahunrilis" class="col-sm-2 col-form-label">Tahun Rilis</label>
                <div class="col-sm-10">
                    <input type="number" class="form-control" name='tahunrilis' id="tahunrilis">
            </div>
            </div>
            <div class="mb-3 row text-white">
                <label for="deskripsi" class="col-sm-2 col-form-label">Deskripsi</label>
            <div class="col-sm-10">
                    <input type="text" class="form-control" name='deskripsi' id="deskripsi">
            </div>
            </div>
            <div class="mb-3 row text-white">
                <label for="spesifikasi" class="col-sm-2 col-form-label">Spesifikasi</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name='spesifikasi' id="spesifikasi">
            </div>
            </div>
            <div class="mb-3 row text-white">
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