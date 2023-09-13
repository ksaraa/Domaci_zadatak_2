<?php

use App\Http\Controllers\API\AuthController;
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

/*Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});*/
Route::middleware('auth:sanctum')->group(function () {
Route::get('Korisnici',[KorisnikController::class, 'pregled_korisnika']);
Route::post('Korisnik', [KorisnikController::class, 'kreiraj_korisnika']);
Route::get('Korisnik/{id}', [KorisnikController::class, 'prikaz_korisnika_po_idu']);
Route::delete('Korisnik/{id}', [KorisnikController::class, 'ukloni_korisnika']);

Route::get('knjige/{id}', [KnjigaController::class, 'prikaz_knjige_po_idu']);
Route::post('knjige', [KnjigaController::class, 'dodavanje_knjige']);
Route::delete('knjige/{Naslov}',[KnjigaController::class,'ukloni_knjigu']);

Route::post('Korisnik/{id}/zaduzi-knjigu/{knjigaId}', [KorisnikController::class, 'zaduziKnjigu']);
Route::delete('Korisnik/{id}/vrati-knjigu/{knjigaId}', [KorisnikController::class, 'vratiKnjigu']);
Route::post('zaduzi-knjigu', [ZaduzenjeController::class, 'zaduziKnjiguPoImenuIPrezimenu']);
Route::delete('skini-zaduzenje', [ZaduzenjeController::class, 'skiniZaduzenjePoImenu'])->name('skini-zaduzenje');   
Route::get('zaduzenje', [ZaduzenjeController::class,'pregled_zaduzenja']);

Route::post('/logout', [AuthController::class, 'logout']);
});

Route::get('knjige', [KnjigaController::class, 'pregled_knjiga']);

Route::post('/login', [AuthController::class, 'login']);



