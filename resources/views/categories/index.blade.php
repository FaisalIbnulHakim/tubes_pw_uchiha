<style>
    .row .col-card .cat-card,.row .col-card img{
        box-shadow: rgba(6, 24, 44, 0.4) 0px 2px 4px, rgba(6, 24, 44, 0.65) 0px 7px 13px -3px, rgba(255, 255, 255, 0.08) 0px -3px 0px inset;
        border-radius: 12%;
    }
</style>
@extends('layouts.main')

@section('container')
<h1 class="mb-5">Post Categories</h1>

<div class="container">
    <div class="row">
        <div class="col-lg-4 col-md-1 col-card col-cat">
            <a href="/category/sp">
                <div class="card bg-dark text-white cat-card">
                    <img src="https://images.pexels.com/photos/699122/pexels-photo-699122.jpeg?auto=compress&cs=tinysrgb&w=600&h=500x500&dpr=1/500x500" style="width: 400px;height:350px" class="card-img" alt="">
                    <div class="card-img-overlay d-flex align-items-center p-0">
                    <h5 class="card-title text-center flex-fill p-4 fs-3" style="background-color: rgba(0,0,0,0.7)">Smartphone</h5>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-lg-4 col-md-1 col-card col-cat">
            <a href="/category/lp">
                <div class="card bg-dark text-white cat-card">
                    <img src="https://images.pexels.com/photos/331684/pexels-photo-331684.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" style="width: 400px;height:350px" class="card-img" alt="">
                    <div class="card-img-overlay d-flex align-items-center p-0">
                    <h5 class="card-title text-center flex-fill p-4 fs-3" style="background-color: rgba(0,0,0,0.7)">Laptop</h5>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-lg-4 col-md-1 col-card ">
            <a href="/category/cm">
                <div class="card bg-dark text-white cat-card">
                    <img src="https://images.unsplash.com/photo-1516035069371-29a1b244cc32?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80/500x500" style="width: 400px;height:350px" class="card-img" alt="">
                    <div class="card-img-overlay d-flex align-items-center p-0">
                    <h5 class="card-title text-center flex-fill p-4 fs-3" style="background-color: rgba(0,0,0,0.7)">Kamera</h5>
                    </div>
                </div>
            </a>
        </div>
    </div>
    
@endsection