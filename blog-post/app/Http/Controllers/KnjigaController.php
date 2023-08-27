<?php

namespace App\Http\Controllers;

use App\Models\Knjiga;
use Illuminate\Http\Request;

class KnjigaController extends Controller
{
    public function index()//Dohvati sve knjige 
    {
        return Knjiga::all();
    }
    public function show($id)
    {
        $book = Knjiga::findOrFail($id);
        return response()->json($book);
    }
    public function store(Request $request)//Kreira novu
    {
        $book = Knjiga::create($request->all());
        return response()->json($book, 201);
    }
    public function update(Request $request, Knjiga $book)
    {
        $book->update($request->all());
        return response()->json($book, 200);
    }
    public function destroy(Knjiga $book)
    {
        $book->delete();
        return response()->json(null, 204);
    }


}
