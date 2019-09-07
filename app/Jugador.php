<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Jugador extends Model
{
    public $table = "players";
    public $primaryKey = "id";
    public $timestamps = "false";
    public $guarded  = [];

    public function matchesJugador1(){
        return $this->hasMany("App\Match","idj1");
    }
    
    public function matchesJugador2(){
        return $this->hasMany("App\Match","idj2");
    }

}
