<link rel="stylesheet" href="/css/login.css">
@extends('layouts.main')

@section('container')
<div class="container">
  <div class="row login-page justify-content-center">
    <div class="col-md-5 col-page">
      <main class="form-registration w-100 m-auto">
        <img src="/img/UchihaTech.png" class="regis-login">
        <h1 class="h3 mb-3 fw-bold text-center">Registration Form</h1>
        <form class="/register" method="post">
          @csrf
          <div class="form-floating">
            <input type="text" name="name" class="form-control rounded-top @error('name') is-invalid @enderror" id="name" placeholder="Name" required value="{{old('name')}}">
            <label for="name" class="fw-bold">Name</label>
            @error('name')
            <div class="invalid-feedback">
              {{$message}}
            </div>
            @enderror
          </div>
          <div class="form-floating">
            <input type="email" name="email" class="form-control @error('email') is-invalid @enderror" id="email" placeholder="name@example.com" required value="{{old('email')}}">
            <label for="email" class="fw-bold">Email address</label>
            @error('email')
            <div class="invalid-feedback">
              {{$message}}
            </div>
            @enderror
          </div>
          <div class="form-floating">
            <input type="password" name="password" class="form-control rounded-bottom @error('password') is-invalid @enderror" id="password" placeholder="Password" required>
            <label for="password" class="fw-bold">Password</label>
            @error('password')
            <div class="invalid-feedback">
              {{$message}}
            </div>
            @enderror
          </div>
          <input type="text" name="user_type" id="user_type" value="0" hidden >
          <button class=" btn btn-lg mt-2" type="submit" style=" background-color: #BDB5A4;border-radius: 26px;width: 45%;text-align: center;margin: auto;display: block;margin-top: 15px;margin-bottom: 7px;color: white;">Register</button>
          <h5 class="pemisah text-center">or</h5>
        </form>
        <small class="d-block text-center mt-3 input-login">Already Registered?<a class="text-decoration-none" href="/login"> Login</a></small>
      </main>
    </div>
  </div>
</div>




@endsection