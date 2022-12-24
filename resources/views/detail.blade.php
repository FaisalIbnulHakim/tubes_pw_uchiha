@extends('layouts.main')

@section('container')

<div class="row p-5">
    <div class="detail-img col-lg-3 ">
        <img src="{{ $['bannerUrl'] }}" alt="" class="rounded w-100">
        <a href="/order" class="w-100">
            <button type="button" class="btn btn-light w-100 rounded-0 fs-5 fw-semibold"><i class="bi fs-3 bi-ticket-perforated"></i> <span class="ml-3"></span></button>
        </a>
    </div>
    <div class="col-lg-8 text-light" style="margin-left: 20px;">
        <div class="detail row">
            <div class="col-lg-12 title-detail">
                <a href=""></a><h2>{{ $['title'] }}</h2>
            </div>

            <div class="col-lg-12">
                <div class="">
                    <span class="bg-grey"></span>
                    
                    @foreach ($[''] as $)
                        {{ $ }}
                        @if (!$loop->last)
                            ,
                        @endif                        
                    @endforeach
                </div>
            </div>

            <div class="col-lg-12 mt-2">
                <div class="rating inline">
                    <span>{{ $['rating'] }}</span>
                    <span class="mx-2">|</span>

                    <span class="duration">{{ $['duration'] }}</span>
                    <span class="mx-2">|</span>

                    <span>
                        <a class="trailer bg-gray text-decoration-none" href="{{ $['trailerUrl'] }}">
                            
                        </a>
                    </span>
                </div>
            </div>

            {{-- deskripsi  --}}
            <div class="col-lg-12 mt-2">
                <div class="deskripsi">
                    {{ $['description'] }}
                </div>
            </div>

            <hr class="my-3">

            {{--  --}}
            <div class="col-lg-6 mb-2">
                <div class="cast">
                    <h5>Cast</h5>
                    @foreach ($['cast'] as $cast)
                        {{ $cast }}
                        @if (!$loop->last)
                            ,
                        @endif                        
                    @endforeach
                </div>
            </div>

            {{--  --}}
            <div class="col-lg-6 mb-2">
                <div class="producer">
                    <h5>Producer</h5>
                    @foreach ($['producer'] as $producer)
                        {{ $producer }}
                        @if (!$loop->last)
                            ,
                        @endif                        
                    @endforeach
                </div>
            </div>

            {{--  --}}
            <div class="col-lg-6 my-2">
                <div class="writer">
                    <h5>Writer</h5>
                    @foreach ($['writer'] as $writer)
                        {{ $writer }}
                        @if (!$loop->last)
                            ,
                        @endif                        
                    @endforeach
                </div>
            </div>

            {{--  --}}
            <div class="col-lg-6 my-2">
                <div class="director">
                    <h5>Director</h5>
                    @foreach ($['director'] as $director)
                        {{ $director }}
                        @if (!$loop->last)
                            ,
                        @endif                        
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>
{{-- <div class="col-lg-6">
    <table class="table table-responsive pt-4 text-white">
        <tr>
            <td>Tanggal Rilis </td>
            <td>:</td>
            <td><b><b></td>
        </tr>
        <tr>
            <td>Sutradara</td>
            <td>:</td>
            <td><b><b></td>
        </tr>
        <tr>
            <td>Produser</td>
            <td>:</td>
            <td><b><b></td>
        </tr>
        <tr>
            <td>Deskripsi Singkat</td>
            <td>:</td>
            <td><b><b></td>
        </tr>
    </table>
    <a href="../index.blade.php" class="btn mt-3 text-white btn-primary">Kembali</a>
</div> --}}
@endsection