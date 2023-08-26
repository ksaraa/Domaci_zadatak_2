<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('zaduzenje', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('Korisnik_id');
            $table->unsignedBigInteger('Knjige_id');
            $table->timestamps();
    
            $table->foreign('Korisnik_id')->references('id')->on('Korisnik');
            $table->foreign('Knjige_id')->references('id')->on('Knjige');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('zaduzenje');
    }
};
