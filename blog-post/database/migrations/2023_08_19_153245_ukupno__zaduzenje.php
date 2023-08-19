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
        Schema::create('Ukupno zaduzenje', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('Korisnik_id');
            $table->integer('Ukupno_Zaduzenje')->default(0); // Zbir svih zaduženja
            $table->timestamps();

            $table->foreign('Korisnik_id')->references('id')->on('Korisnik');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
};
