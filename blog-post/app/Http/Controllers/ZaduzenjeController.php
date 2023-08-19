<?php

namespace App\Http\Controllers;

use App\Models\Knjiga;
use App\Models\Zaduzenje;
use Illuminate\Http\Request;

class ZaduzenjeController extends Controller
{
    public function index()
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
}
