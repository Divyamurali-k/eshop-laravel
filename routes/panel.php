<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Panel\ProductController;
use App\Http\Controllers\Panel\PanelController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\ProductCartController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\OrderPaymentController;
use Illuminate\Support\Facades\Auth;
/*
|--------------------------------------------------------------------------
| Web Routes
| Admin panel routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('panel', [PanelController::class, 'index'])->name("panel");
Route::resource('products',ProductController::class);