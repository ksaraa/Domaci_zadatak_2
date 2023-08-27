<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class Zaposleni extends  Authenticatable
{
    
    use Notifiable,HasApiTokens,HasFactory;
    protected $table = 'zaposleni'; // Ime tabele u bazi

    protected $primaryKey = 'id'; // Primarni ključ
    protected $fillable = [
        'username',
        'password',
    ];
    protected $hidden = [
        'remember_token',
    ];

}
