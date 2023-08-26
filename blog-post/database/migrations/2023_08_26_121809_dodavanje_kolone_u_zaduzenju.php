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
        Schema::table('zaduzenje', function (Blueprint $table) {
            $table->string('ime');
            $table->string('prezime');
            $table->string('naslov');
            $table->string('autor');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('zaduzenje', function (Blueprint $table) {
            $table->dropColumn(['ime', 'prezime', 'naslov', 'autor']);
        });
    }
};
