<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\DiseaseController;
use App\Http\Controllers\ClinicsController;

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

//Public Routes
Route::post('/login', [UserController::class, 'login']);
Route::post('/register', [UserController::class, 'register']);
Route::get('/disease', [DiseaseController::class, 'index']);
Route::get('/disease/{id}', [DiseaseController::class, 'show']);
Route::get('/clinics', [ClinicsController::class, 'index']);


//----------------------USER-------------------------//
Route::middleware(['auth:sanctum'])->group(function () {
    Route::get('/user', [UserController::class, 'index']);
    Route::get('/user/{id}', [UserController::class, 'show']);
    Route::post('/user', [UserController::class, 'store']);
    Route::put('/user/{id}', [UserController::class, 'update']);
    Route::delete('/user/{id}', [UserController::class, 'destroy']);
    Route::get('/get_token', [UserController::class, 'getToken']);
    Route::post('/logout', [UserController::class, 'logout']);
});

//----------------------DISEASES-------------------------//
Route::middleware(['auth:sanctum'])->group(function () {
    Route::put('/disease/{id}', [DiseaseController::class, 'update']);
    Route::post('/disease', [DiseaseController::class, 'store']);
    Route::delete('/disease/{id}', [DiseaseController::class, 'destroy']);
});

//----------------------CLINICS-------------------------//
Route::middleware(['auth:sanctum'])->group(function () {
    Route::get('/clinics/{id}', [ClinicsController::class, 'show']);
    Route::put('/clinics/{id}', [ClinicsController::class, 'update']);
    Route::post('/clinics', [ClinicsController::class, 'store']);
    Route::delete('/clinics/{id}', [ClinicsController::class, 'destroy']);
});
