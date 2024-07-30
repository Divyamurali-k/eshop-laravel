<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
})->name("main");

Route::get('/products/index', function () {
    return 'This is example products';
})->name("products.index");

Route::post('/products', function () {
    //
})->name("products.store");

Route::get('/products/{product}', function ($product) {
    return "This is example product {$product}";
})->name("products.show");

Route::get('/products/{product}/edit', function ($product) {
    return "showing the product {$product} to edit";
})->name("products.edit");