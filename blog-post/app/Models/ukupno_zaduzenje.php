<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ukupno_zaduzenje extends Model
{
    public function Korisnik()
    {
        return $this->belongsTo(Korisnik::class);
    }
    use HasFactory;
}
