<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Korisnik extends Model
{
    protected $table = 'Korisnik';
    public function Zaduzenje()
{
    return $this->hasMany(Zaduzenje::class);
}

public function ukupno_zaduzenje()
{
    return $this->hasOne(ukupno_zaduzenje::class);
}
    use HasFactory;
}
