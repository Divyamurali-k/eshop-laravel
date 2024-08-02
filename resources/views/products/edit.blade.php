@extends('layouts.app')
@section('content')

<h1>Edit a product</h1>
<form action="{{ route('products.update',['product' => $product->id])}}" method="POST">
    @csrf
    @method('PUT')
<div class="form-row">
    <label>Title</label>
    <input type="text" class="form-control" value="{{ old('title') ?? $product->title}}" name="title" required>
</div>
<div class="form-row">
    <label>Description</label>
    <input type="text" class="form-control" value="{{ old('description') ?? $product->description}}" name="description" required>
</div>
<div class="form-row">
    <label>Price</label>
    <input type="number" class="form-control" value="{{ old('price') ?? $product->price}}" min="1.00" step="0.01" name="price" required>
</div>
<div class="form-row">
    <label>Stock</label>
    <input type="number" class="form-control" value="{{ old('stock') ?? $product->stock}}" min="0" name="stock" required>
</div>
<div class="form-row">
    <label>Status</label>
    <select name="status" class="form-control custom-select" required>
        <option value="available" {{ old('status') == 'available' ? 'selected' : ($product->status == 'available' ? 'selected' : '')}}>Available</option>
        <option value="unavailable" {{ old('status') == 'unavailable' ? 'selected' : ($product->status == 'unavailable' ? 'selected' : '')}}>Unavailable</option>
    </select>
</div>
<div class="form-row">
    <button class="btn btn-primary btn-lg mt-3" type="submit">Update product</button>
</div>
</form>

@endsection