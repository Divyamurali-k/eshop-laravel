@extends('layouts.master')
@section('content')

<h1>Create a product</h1>
<form action="{{ route('products.store')}}" method="POST">
    @csrf
<div class="form-row">
    <label>Title</label>
    <input type="text" class="form-control" name="title" required>
</div>
<div class="form-row">
    <label>Description</label>
    <input type="text" class="form-control" name="description" required>
</div>
<div class="form-row">
    <label>Price</label>
    <input type="number" class="form-control" min="1.00" step="0.01" name="price" required>
</div>
<div class="form-row">
    <label>Stock</label>
    <input type="number" class="form-control" min="0" name="stock" required>
</div>
<div class="form-row">
    <label>Status</label>
    <select name="status" class="custom-select" required>
        <option value="" selected>Select</option>
        <option value="available">Available</option>
        <option value="unavailable">Unavailable</option>
    </select>
</div>
<div class="form-row">
    <button class="btn btn-primary btn-lg" type="submit">Create product</button>
</div>
</form>

@endsection