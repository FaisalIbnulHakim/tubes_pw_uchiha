<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Uchiha Tech | {{ $title }}</title> 
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    
    <link rel="stylesheet" type="" href="css/style.css">
  </head>
  <body>
    @include('partial.navbar')
    <img src="https://img.freepik.com/free-photo/digital-device-eletronic-networking-media_53876-31695.jpg?w=900&t=st=1670398025~exp=1670398625~hmac=17ec9b6fd63cdb55365b58c64c7878a4d4fd416279549b352b2c4bc118d1b41c" alt="" width="" height="" class="d-block w-100">
    
    <div class="container">
   @yield('container')
   </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  </body>
</html>