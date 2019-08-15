<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Entorno;

class EntornoController extends Controller
{
    public function show(){
        return View('entorno');
    }

    public function guardarFondo(Request $req){
        dd($req);
        if($req->file("background")!= null){
            $entorno = new Entorno();
            $path = $req->file("background")->store("public");
            $nombreDeArchivo = basename($path);
            $entorno->fondo = $nombreDeArchivo;
            $entorno->save();
            dd('aca termina');
        }
        return redirect('listado');
    }
}
