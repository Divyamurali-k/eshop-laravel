@extends('layouts.app')
@section('content')

<h1>Create a product</h1>
<form action="{{ route('products.store')}}" method="POST" enctype="multipart/form-data">
    @csrf
    <div class="form-row">
        <label>Title</label>
        <input type="text" class="form-control" name="title" required value="{{old('title')}}">
    </div>
    <div class="form-row">
        <label>Description</label>
        <input type="text" class="form-control" name="description" required value="{{old('description')}}">
    </div>
    <div class="form-row">
        <label>Price</label>
        <input type="number" class="form-control" min="1.00" step="0.01" name="price" required value="{{old('price')}}">
    </div>
    <div class="form-row">
        <label>Stock</label>
        <input type="number" class="form-control" min="0" name="stock" required value="{{old('stock')}}">
    </div>
    <div class="form-row">
        <label>Status</label>
        <select name="status" class="form-control custom-select" required>
            <option value="" selected>Select</option>
            <option value="available" {{ old('status')=='available'?'selected' :'' }}>Available</option>
            <option value="unavailable" {{ old('status')=='unavailable'?'selected' :'' }}>Unavailable</option>
        </select>
    </div>
    <div class="form-row">
        <label for="image">{{ __('Images') }}</label>
        <div class="col-md-12">
            <input id="images" type="file" class="form-control" name="images[]" accept="image/*" multiple>
        </div>
    </div>
    <div class="form-row">
        <button class="btn btn-primary btn-lg mt-3" type="submit">Create product</button>
    </div>
</form>

@endsection