<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
  <link rel="stylesheet" href="/css/dash.css">
  <title>Dashboard Account Setting</title>
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
        <h1>Account Setting</h1>
        <div class="setting">
          <div class="account">
            <h2>Publisher {{auth()->user()->name}}</h2>
            @foreach($user as $us)
            <form method="post" action='{{route('ubah')}}' class="form" enctype="multipart/form-data">
              @csrf
              <input type="hidden" name="id" value="{{$us->id}}">
              <div class="column">
                <div class="input-box">
                  <label for="name">Nama</label>
                  <input type="text" name="name" id="name" required value="{{$us->name}}"/>
                </div>
                <div class="input-box">
                  <label for="email">Email</label>
                  <input type="email"name="email" id="email" required value="{{$us->email}}"/>
                </div>
              </div>
              <div class="input-box">
                <label for="biodata">Biodata</label>
                <input type="text" name="biodata" id="biodata" required value="{{$us->biodata}}" />
              </div>
              <input type="hidden" name="user_type" value="{{$us->user_type}}">
              <input type="hidden" name="password" value="{{$us->password}}">
              <div>
                <button class="button-create" type="submit" name="submit">Ubah Data</button>
              </div>
            </form>
            @endforeach
          </div>
          </div>
        </div>
      </main>
  </div>
  <script src="/js/dash.js"></script>
</body>
</html>

