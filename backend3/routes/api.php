<?php

use App\Http\Controllers\Api\ProductController;
use App\Http\Controllers\Api\UserController;
use App\Http\Resources\UserResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::middleware('auth:sanctum')->group(function () {

    Route::get('user', function (Request $request) {
        return [
            'user' => UserResource::make($request->user()),
            'access_token' => $request->bearerToken()
        ];
    });

    Route::post('user/logout', [UserController::class, 'logout']);
    Route::put('user/update/profile', [UserController::class, 'UpdateUserProfile']);
});

Route::get('/products', [ProductController::class, "index"])->name('products');
Route::get('/products/{color}/color', [ProductController::class, "filterByColor"])->name('products.filterByColor');
Route::get('/products/{size}/size', [ProductController::class, "filterBySize"])->name('products.filterBySize');
Route::get('/products/{term}/term', [ProductController::class, "filterByTerm"])->name('products.filterByTerm');
Route::get('/products/{product}/productDetail', [ProductController::class, "productDetail"])->name('products.productDetail');

Route::post('user/register', [UserController::class, 'store']);
Route::post('user/login', [UserController::class, 'auth']);
