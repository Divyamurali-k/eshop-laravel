@extends('layouts.master')
@section('content')

<h1>Edit a product</h1>
<form action="{{ route('products.update',['product' => $product->id])}}" method="POST">
    @csrf
    @method('PUT')
<div class="form-row">
    <label>Title</label>
    <input type="text" class="form-control" value="{{ $product->title}}" name="title" required>
</div>
<div class="form-row">
    <label>Description</label>
    <input type="text" class="form-control" value="{{ $product->description}}" name="description" required>
</div>
<div class="form-row">
    <label>Price</label>
    <input type="number" class="form-control" value="{{ $product->price}}" min="1.00" step="0.01" name="price" required>
</div>
<div class="form-row">
    <label>Stock</label>
    <input type="number" class="form-control" value="{{ $product->stock}}" min="0" name="stock" required>
</div>
<div class="form-row">
    <label>Status</label>
    <select name="status" class="custom-select" required>
        <option value="available" {{ $product->status == 'available' ? 'selected' : ''}}>Available</option>
        <option value="unavailable" {{ $product->status == 'unavailable' ? 'selected' : ''}}>Unavailable</option>
    </select>
</div>
<div class="form-row">
    <button class="btn btn-primary btn-lg" type="submit">Update product</button>
</div>
</form>

@endsection