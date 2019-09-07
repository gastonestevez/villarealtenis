<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Entorno;

class EntornoController extends Controller
{
    public function show(){
        $entornoActual = Entorno::orderby('created_at','desc')->get();

        return View('entorno',compact('entornoActual'));
    }

    public function guardarFondo(Request $req){
        if($req->file("fondo")!= null){
            $entorno = new Entorno();
            $path = $req->file("fondo")->store("public");
            $nombreDeArchivo = basename($path);
            $entorno->fondo = $nombreDeArchivo;
            $entorno->save();
        }
        return redirect('listado');
    }
}
