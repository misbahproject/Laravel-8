@extends('layouts.main')

@section('container')
    <article class="text-center">
        <h1>Halaman About</h1>
        <h4>{{ $nama }}</h4>
        <p>{{ $email }}</p>
        <img src="img/{{ $image }}" alt="{{ $nama }}" width="200" class="img-thumbnail rounded-circle">
    </article>
@endsection