<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

    class Zaduzenje extends Model
    {
        protected $fillable = ['korisnik_id', 'knjiga_id', 'ime','prezime', 'naslov', 'autor'];
        protected $table = 'zaduzenje';
        public function Korisnik()
    {
        return $this->belongsTo(Korisnik::class);
    }

public function Knjiga()
{

    return $this->belongsTo(Knjiga::class);
}
    use HasFactory;
}
