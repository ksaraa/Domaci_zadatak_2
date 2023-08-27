<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Knjiga extends Model
{
    protected $fillable = ['Naslov', 'Autor'];
    protected $table = 'knjige';
    public function Zaduzenje()
{
    return $this->hasMany(Zaduzenje::class);
}
    use HasFactory;
}
