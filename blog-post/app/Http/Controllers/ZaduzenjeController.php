<?php

namespace App\Http\Controllers;

use App\Models\Knjiga;
use App\Models\Korisnik;
use App\Models\Zaduzenje;
use Illuminate\Http\Request;

class ZaduzenjeController extends Controller
{
    public function pregled_zaduzenja()
    {
        return Zaduzenje::all();
    }
    public function show(Zaduzenje $loan)
    {
        return $loan;
    }
    public function store(Request $request)
    {
        $loan = Zaduzenje::create($request->all());
        return response()->json($loan, 201);
    }
    
    public function update(Request $request, Zaduzenje $loan)
    {
        $loan->update($request->all());
        return response()->json($loan, 200);
    }
    public function destroy(Zaduzenje $loan)
    {
        $loan->delete();
        return response()->json(null, 204);
    }
    public function zaduziKnjiguPoImenuIPrezimenu(Request $request)
{
    $request->validate([
        'Ime' => 'required|string',
        'Prezime' => 'required|string',
        'Naslov' => 'required|string',
    ]);

    $korisnik = Korisnik::where('Ime', $request->Ime)
                         ->where('Prezime', $request->Prezime)
                         ->firstOrFail();

    $knjiga = Knjiga::where('Naslov', $request->Naslov)
                     ->firstOrFail();

    $zaduzenje = new Zaduzenje();
    $zaduzenje->Korisnik_id = $korisnik->id;
    $zaduzenje->Knjige_id = $knjiga->id;
    $zaduzenje->ime = $request->Ime;
    $zaduzenje->prezime = $request->Prezime;
    $zaduzenje->naslov = $request->Naslov;
    $zaduzenje->autor = $knjiga->Autor; // Pretpostavljam da autor knjige dolazi iz tabele knjiga
    $zaduzenje->save();

    return response()->json([
        'message' => 'Knjiga je uspešno zadužena korisniku.',
        'zaduzenje' => $zaduzenje
    ]);
}
public function skiniZaduzenjePoImenu(Request $request)
{
    $request->validate([
        'Ime' => 'required|string',
        'Naslov' => 'required|string',
    ]);

    $korisnik = Korisnik::where('Ime', $request->Ime)->firstOrFail();
    $knjiga = Knjiga::where('Naslov', $request->Naslov)->firstOrFail();

    $zaduzenje = Zaduzenje::where('Korisnik_id', $korisnik->id)
                          ->where('Knjige_id', $knjiga->id)
                          ->firstOrFail();

    $zaduzenje->delete();

    return response()->json(['message' => 'Zaduženje je uspešno skinuto sa korisnika.']);
}
}
