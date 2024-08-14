<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Panel\ProductController;
use App\Http\Controllers\Panel\PanelController;
use App\Http\Controllers\Panel\UserController;

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

Route::get('/', [PanelController::class, 'index'])->name("panel");
Route::resource('products', ProductController::class);
// Route::get('user/testverify', [UserController::class, 'testVerify']);

Route::get('users', [UserController::class, 'index'])->name("users.index");
// Route::get('users', 'UserController@index')->name('user.index');
Route::post('users/admin/{user}', [UserController::class, 'toggleAdmin'])->name("users.admin.toggle");
// Route::post('users/admin/{user}', 'UserController@toggleAdmin')
//     ->name('user.admin.toggle');
