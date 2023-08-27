<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Zaposleni;
use Illuminate\Support\Facades\Hash;


class AuthController extends Controller
{
    public function login(Request $request)
    {
        $credentials = $request->only('username', 'password');

        $user = Zaposleni::where('username', $credentials['username'])->first();

        if (!$user || !Hash::check($credentials['password'], $user->password)) {
            return response()->json([
                'message' => 'Unauthorized',
            ], 401);
        }

        $token = $user->createToken('MyApp')->plainTextToken;

        return response()->json([
            'user' => $user,
            'token' => $token,
        ]);
    }
public function logout(Request $request)
{
    $user = $request->user(); // Dohvati ulogovanog korisnika

        if ($user) {
            $user->tokens()->delete(); // Obriši sve tokene korisnika
            return response()->json([
                'message' => 'Logged out successfully',
            ]);
        } else {
            return response()->json([
                'message' => 'User not authenticated',
            ], 401);
        }
    }
}

