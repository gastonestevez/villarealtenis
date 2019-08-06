<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Entorno extends Model
{
    public $table = "entornos";
    public $primaryKey = "id";
    public $timestamps = "false";
    public $guarded  = [];

}
