@extends('frontend.layouts.master')

@section('title')
    <title>Trang chủ</title>
@endsection

@section('content')
    @include('frontend.partials.sidebar')
    <section class="section">
        <div class="container">
            <div class="row">
                @include('frontend.partials.content')
                @include('frontend.partials.content-sidebar')
            </div><!-- end row -->
        </div><!-- end container -->
        <div class="dmtop">Scroll to Top</div>
    </section>
@endsection
