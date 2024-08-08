<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\MainController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\ProductCartController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\OrderPaymentController;
use Illuminate\Support\Facades\Auth;
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

// Route::get('/', function () {
//     return view('welcome');
// })->name("main");

Route::get('/', [MainController::class, 'index'])->name("main");


// Route::get('/products/index', function () {
//     return 'This is list of products';
// })->name("products.index");

// Route::get('/products','ProductController@index')->name("products.index");

// Route::resource('products',ProductController::class);

// Route::get('/products', [ProductController::class, 'index'])->name("products.index");
// Route::get('/products/create', [ProductController::class, 'create'])->name("products.create");
// Route::get('/products/{product}', [ProductController::class, 'show'])->name("products.show");
// Route::post('/products', [ProductController::class, 'store'])->name("products.store");
// Route::get('/products/{product}/edit', [ProductController::class, 'edit'])->name("products.edit");
// Route::match(['put','patch'],'/products/{product}/',[ProductController::class, 'update'])->name("products.update");
// Route::delete('/products/{product}', [ProductController::class, 'destroy'])->name("products.destroy");

// Route::post('/products', function () {
//     //
// })->name("products.store");

// Route::get('/products/{product}', function ($product) {
//     return "showing product {$product}";
// })->name("products.show");
// Route::match(['put','patch'],'/products/{product}/', function ($product) {
//    //
// })->name("products.update");
Route::get('profile', [ProfileController::class, 'edit'])->name("profile.edit");
Route::put('profile', [ProfileController::class, 'update'])->name("profile.update");

Route::resource('carts',CartController::class)->only(['index']);
Route::resource('orders',OrderController::class)->only(['create','store'])->middleware(['verified']);
Route::resource('products.carts',ProductCartController::class)->only(['store','destroy']);
Route::resource('orders.payments',OrderPaymentController::class)->only(['create','store'])->middleware(['verified']);

Auth::routes([
    'verify'=>true,
    // 'reset'=>false, the link 'forgot password' in login form doesnt appear
]);

// Route::get('/home', [HomeController::class, 'index'])->name('home');
