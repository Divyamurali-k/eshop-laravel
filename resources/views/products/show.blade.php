@extends('layouts.master')
@section('content')

    <h1>{{$product->id}}.{{$product->title}}</h1>
    {{-- {!!$subtitle!!} --}}
    <p>{{$product->description}}</p>
    <p>{{$product->price}}</p>
    <p>{{$product->stock}}</p>
    <p>{{$product->status}}</p>

@endsection