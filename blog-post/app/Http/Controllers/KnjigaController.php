<?php

namespace App\Http\Controllers;

use App\Models\Knjiga;
use Illuminate\Http\Request;

class KnjigaController extends Controller
{
    public function pregled_knjiga()//Dohvati sve knjige 
    {
        return Knjiga::all();
    }
    public function prikaz_knjige_po_idu($id)
    {
        $book = Knjiga::findOrFail($id);
        return response()->json($book);
    }
    public function dodavanje_knjige(Request $request)//Kreira novu
    {
        $book = Knjiga::create($request->all());
        return response()->json($book, 201);
    }
    public function update(Request $request, Knjiga $book)
    {
        $book->update($request->all());
        return response()->json($book, 200);
    }
    public function ukloni_knjigu($Naslov)
    {
        $book = Knjiga::where('Naslov', $Naslov)->first();
        if(!$book){
            return response()->json(['message' => 'Knjiga nije pronađena.'], 404);
        }
        $book->delete();
        return response()->json(['message' => "Knjiga  je uspešno obrisana."], 200);
    }


}
