<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProductController extends Controller
{
    public function index()
    {

        // $products= DB::table('products')->get();
        $products= Product::all();
        // return 'This is list of products from controller';\
        return view('products.index')->with([
            'products' =>$products,
            // 'subtitle'=>'<h2>This is a subtitle</h2>',
        ]);
    }

    public function create()
    {

        return view('products.create');
        // return 'A form to create products from controller';
    }
    public function store()
    {
    //    $product=Product::create([
    //     'title' => request()->title,
    //     'description' => request()->description,
    //     'price' => request()->price,
    //     'stock' => request()->stock,
    //     'status' => request()->status,
    //    ]);
    $product=Product::create(request()->all());
    if(request()->stock == 0 && request()->status == 'available')
    {
        session()->flash('error','if available must have stock');
        return redirect()->back();
    }
    
    return redirect()->route('products.index');
    }


    public function edit($product)
    {
        return view('products.edit')->with([
            'product' =>Product::findOrFail($product),
        ]);
        // return "showing the product {$product} to edit";
    }


    public function update($product)
    {
        $product= Product::findOrFail($product);
        $product->update(request()->all());

        return //redirect
        // redirect()->back();
        redirect()->route('products.index');
        // redirect()->action('ProductController@index');
        // return $product;
    //    dd('update');
    }
    public function destroy($product)
    {
        $product= Product::findOrFail($product);
        $product->delete();
        return redirect()->route('products.index');
    }

    public function show($product)
    {
        // $products= Product::where('id',$product)->get();
        // $products= DB::table('products')->where('id',$product)->get();
        // $products= DB::table('products')->where('id',$product)->first();
        // $products= DB::table('products')->find($product);
        $product= Product::findOrFail($product);
        return view('products.show')->with([
            'product' =>$product,
            // 'subtitle'=>'<h2>This is a subtitle</h2>',
        ]);
    // return "showing product {$product}";
    }
}
