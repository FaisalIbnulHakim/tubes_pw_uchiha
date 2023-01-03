<link rel="stylesheet" href="/css/login.css">
@extends('layouts.main')

@section('container')
<div class="container">
<div class="row login-page justify-content-center">
  <div class="col-md-5 col-page">
    @if(session()->has('success'))
    <div class="alert alert-success alert-dismissible fade show" role="alert">
      {{ session('success') }}
      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    @endif

    @if(session()->has('loginError'))
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
      {{ session('loginError') }}
      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    @endif
  
    <main class="form-signin w-100 m-auto">
      <img src="/img/UchihaTech.png" class="logo-login">
      <h1 class="h3 title mb-3 fw-bold text-center">Login Form</h1>
      <form action="/login" method="post">
        @csrf
        <div class="form-floating">
          <input type="email" name="email" class="form-control @error('email') is-invalid @enderror" id="email" placeholder="name@example.com" autofocus required value="{{old('email')}}">
          <label for="email" class="fw-bold">Email address</label>
          @error('email')
          <div class="invalid-feedback">
            {{$message}}
          </div>
          @enderror
        </div>
        <div class="form-floating">
          <input type="password" name="password" class="form-control" id="password" placeholder="Password" style="outline: none">
          <label for="password" class="fw-bold">Password</label>
        </div>
        <button class="btn btn-lg tombol-login" style=" background-color: #BDB5A4;border-radius: 26px;width: 45%;text-align: center;margin: auto;display: block;margin-top: 15px;margin-bottom: 7px;color: white;" type="submit">Login</button>
        <h5 class="pemisah text-center">or</h5>
      </form>
      <small class="d-block text-center mt-3 input-regis">Dont have account? <a class="text-decoration-none" href="/register"> Register Now!</a></small>
    </main>
  </div>
</div>
</div>

@endsection