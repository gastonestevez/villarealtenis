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
        $ultimosMatches = Match::orderBy('fecha','DESC')->limit(10)->get();
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
            $jugadorNuevo->Puesto = Jugador::where('visible',1)->max('Puesto')+1;
        }else if(Jugador::where('Puesto',$req['Puesto'])->get()){
            $jugadoresSiguientes = Jugador::where('Puesto','>=',$req['Puesto'])->get();
            foreach ($jugadoresSiguientes as $jugadorActual) {
              $jugadorActual->Puesto++;
              $jugadorActual->save();
            }
            $jugadorNuevo->Puesto = $req['Puesto'];
        }else{
            $jugadorNuevo->Puesto = $req['Puesto'];
        }
        $jugadorNuevo->Telefono = $req['Telefono'];
        $jugadorNuevo->Email = $req['Email'];
        $jugadorNuevo->Instagram = $req['Instagram'];
        $jugadorNuevo->Cumple = $req['Cumple'];
        $jugadorNuevo->visible = 1;
        if($req->file("Avatar") != null){
            $path = $req->file("Avatar")->store("public");
            $nombreDeArchivo = basename($path);
            $jugadorNuevo->Avatar = $nombreDeArchivo;
        }else{
            $jugadorNuevo->Avatar = "sinimagen.png";
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
        if($jugadorNuevo->Puesto != $req['Puesto']){
            $jugadoresSiguientes = Jugador::where('Puesto','>=',$req['Puesto'])->get();
            foreach ($jugadoresSiguientes as $jugadorActual) {
              $jugadorActual->Puesto++;
              $jugadorActual->save();
            }
        }
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
        $jugador->visible = false;
        $jugador->save();
        //$jugador->delete();

        return redirect("/agregarJugador");
    }
}
