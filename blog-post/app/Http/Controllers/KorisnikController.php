<?php

namespace App\Http\Controllers;

use App\Models\Korisnik;
use Illuminate\Http\Request;

class KorisnikController extends Controller
{
    public function index()//Dohvatanje svih korisnika 
{
    return Korisnik::all();
}

public function show(Korisnik $user)//Dohvatanje pojedinacnih korisnika
{
    return $user;
}
public function store(Request $request)//stvaranje novog korisnika
{
    $user = Korisnik::create($request->all());
    return response()->json($user, 201);
}
public function destroy(Korisnik $user)
{
    $user->delete();
    return response()->json(null, 204);
}
}
