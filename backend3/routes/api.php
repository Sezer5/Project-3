<?php

use App\Http\Controllers\Api\ProductController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

Route::get('/products', [ProductController::class, "index"])->name('products');
Route::get('/products/{color}/color', [ProductController::class, "filterByColor"])->name('products.filterByColor');
Route::get('/products/{size}/size', [ProductController::class, "filterBySize"])->name('products.filterBySize');
Route::get('/products/{term}/term', [ProductController::class, "filterByTerm"])->name('products.filterByTerm');
Route::get('/products/{product}/productDetail', [ProductController::class, "productDetail"])->name('products.productDetail');
