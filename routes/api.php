<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ApiController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
//Demo api in laravel
// Route::get('/nhanvien',[ApiController::class,'nhanvien'])
// ->name('api.nhanvien');
// Route::post('/luunhanvien',[ApiController::class,'luu_nhanvien'])
// ->name('api.nhanvien');
Route::resource('nhanvien',ApiController::class);


Route::get('/hopdong',[ApiController::class,'hopdong'])
->name('api.hopdong');
Route::get('/baohiem',[ApiController::class,'baohiem'])
->name('api.baohiem');
