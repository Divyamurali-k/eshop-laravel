<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index()
    {
        // return 'This is list of products from controller';\
        return view('products.index');
    }

    public function create()
    {
        return 'A form to create products from controller';
    }
    public function store()
    {
       //
    }
    public function edit($product)
    {
        return "showing the product {$product} to edit";
    }
    public function update()
    {
       //
    }
    public function destroy()
    {
       //
    }

    public function show($product)
    {
        return view('products.show');
    // return "showing product {$product}";
    }
}
