<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Jugador;
use App\Match;
use App\Entorno;

class JugadoresController extends Controller
{
    public function agregarJugador(){
        $jugadores = Jugador::orderBy('Puesto')->get();
      
        return view('agregarJugador',compact('jugadores'));
    }
    public function listar(){
        $jugadores = Jugador::orderBy('Puesto')->get();
        $ultimosMatches = Match::orderBy('created_at','DESC')->limit(3)->get();
        $fondo = Entorno::orderby('created_at','desc')->get();
        return view('listadoPartidos',compact('jugadores','ultimosMatches','fondo'));
    }

    public function obtenerJugadores(){
        $jugadores = Jugador::orderBy('Puesto')->get();
        return Response($jugadores->toJson());
    }

    public function buscarJugador($id){

    }
    public function grabarJugador(Request $req){
        $jugadorNuevo = new Jugador();
        $jugadorNuevo->Nombre = $req['Nombre'];
        if(empty($req['Puesto'])){
            $jugadorNuevo->Puesto = Jugador::max('Puesto')+1;    
        }else{
            $jugadorNuevo->Puesto = $req['Puesto'];
        }
        $jugadorNuevo->Telefono = $req['Telefono'];
        $jugadorNuevo->Email = $req['Email'];
        $jugadorNuevo->Instagram = $req['Instagram'];
        $jugadorNuevo->Cumple = $req['Cumple'];
        if($req->file("Avatar") != null){
            $path = $req->file("Avatar")->store("public");
            $nombreDeArchivo = basename($path);
            $jugadorNuevo->Avatar = $nombreDeArchivo;
        }
        

        $jugadorNuevo->save();
        return redirect("/agregarJugador");
    }

    public function editarJugador(Request $req,$id){
        $jugador = Jugador::find($id);

        return view('editarJugador',[
            'jugador' => $jugador,
        ]);
    }

    public function actualizarJugador(Request $req,$id){
        $jugadorNuevo = Jugador::find($id);
        $jugadorNuevo->Nombre = $req['Nombre'];
        $jugadorNuevo->Puesto = $req['Puesto'];
        $jugadorNuevo->Telefono = $req['Telefono'];
        $jugadorNuevo->Email = $req['Email'];
        $jugadorNuevo->Instagram = $req['Instagram'];
        $jugadorNuevo->Cumple = $req['Cumple'];
        if($req->file("Avatar")!= null){
            $path = $req->file("Avatar")->store("public");
            $nombreDeArchivo = basename($path);
            $jugadorNuevo->Avatar = $nombreDeArchivo;
        }
        
        $jugadorNuevo->save();
        return redirect("/agregarJugador");

    }
    public function borrarJugador(Request $req,$id){
        $jugador = Jugador::find($id);
        $jugadoresSiguientes = Jugador::where('Puesto','>',$jugador->Puesto)->get();
        foreach ($jugadoresSiguientes as $jugadorActual) {
          $jugadorActual->Puesto--; 
          $jugadorActual->save();
        }
        $jugador->delete();

        return redirect("/agregarJugador");
    }
}
