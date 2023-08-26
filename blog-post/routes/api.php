<?php

use App\Http\Controllers\KnjigaController;
use App\Http\Controllers\KorisnikController;
use App\Http\Controllers\ZaduzenjeController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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
Route::resource('Korisnik', KorisnikController::class);
Route::post('Korisnik', [KorisnikController::class, 'store']);
Route::get('Korisnik/{id}', [KorisnikController::class, 'show']);
Route::delete('Korisnik/{id}', [KorisnikController::class, 'destroy']);

Route::resource('knjige', KnjigaController::class);
Route::get('knjige/{id}', [KnjigaController::class, 'show']);
Route::post('knjige', [KnjigaController::class, 'store']);
Route::delete('knjige',[KnjigaController::class,'destroy']);

Route::resource('zaduzenje', ZaduzenjeController::class);
Route::delete('zaduzenje',[KnjigaController::class,'destroy']);

Route::post('Korisnik/{id}/zaduzi-knjigu/{knjigaId}', [KorisnikController::class, 'zaduziKnjigu']);
Route::post('Korisnik/{id}/vrati-knjigu/{knjigaId}', [KorisnikController::class, 'vratiKnjigu']);
Route::post('zaduzi-knjigu', [ZaduzenjeController::class, 'zaduziKnjiguPoImenuIPrezimenu']);
Route::delete('skini-zaduzenje', [ZaduzenjeController::class, 'skiniZaduzenjePoImenu'])->name('skini-zaduzenje');   