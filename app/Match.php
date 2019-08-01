<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Match extends Model
{
    public $table = "match";
    public $primaryKey = "id";
    public $timestamps = "false";
    public $guarded  = [];
    
    public function jugador1(){
        return $this->belongsTo("App\Jugador","idj1");
    }
    public function jugador2(){
        return $this->belongsTo("App\Jugador","idj2");    
    }
}
