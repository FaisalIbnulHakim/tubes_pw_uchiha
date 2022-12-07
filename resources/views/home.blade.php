@extends('layouts.main')
@section('container')
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Text Center</title>   
    <style type="text/css">
        body {
            padding: 0;
            margin: 0;
            background: #ffd200;
        }    
        h1 {
            font-size: 5em;
            margin:0;
            padding: 0;
            text-align: center;
            font-family: 'arial';
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translateX(-50%) translateY(-50);
        }
    </style>

<body>
    <h1>Welcome to My Webbsite</h1>
</body>
@endsection