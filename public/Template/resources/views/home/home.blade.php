@extends('layouts.master')

@section('title')
    <title>Home Page</title>
@endsection

@section('css')
    <link rel="stylesheet" href="{{ asset('home/home.css') }}">
@endsection

@section('content')
    @include('components.sidebar')
    <section class="section">
        <div class="container">
            <div class="row">
                @include('components.content')
                @include('components.content-sidebar')
            </div><!-- end row -->
        </div><!-- end container -->
    </section>
@endsection

@section('js')
    <link rel="stylesheet" href="{{ asset('home/home.js') }}">
@endsection
