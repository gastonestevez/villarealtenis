<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePlayersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('players', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('Nombre');
            $table->integer('Puesto')->nullable();
            $table->integer('PuestoAnterior')->nullable();
            $table->string('Telefono')->nullable();
            $table->string('Instagram')->nullable();
            $table->string('Email')->nullable();
            $table->string('Avatar')->nullable();
            $table->date('Cumple')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('players');
    }
}
