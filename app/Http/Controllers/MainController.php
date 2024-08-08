<?php

namespace App\Http\Controllers;
use App\Models\Product;
use Illuminate\Http\Request;

class MainController extends Controller
{
    public function index()
    {
        // \DB::connection()->enableQueryLog();

        $products=Product::all();
        // $products=Product::available()->get();
        // $products=Product::where('status','available')->get();

        return view('welcome')->with([

         
            'products'=> $products,
        ]);
    }
}
