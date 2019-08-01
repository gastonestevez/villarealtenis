<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Jugador;
use App\Match;

class MatchController extends Controller
{
    //
    public function showMatch(){
        $jugadores = Jugador::orderBy('Puesto')->get();
        return view('match',compact('jugadores'));
    }

    public function grabarMatch(Request $r){
        $set1 = $r['set1'];
        $set2 = $r['set2'];
        $set3 = $r['set3'];
        $idJugador1 = $r['inputIdJugador1'];
        $idJugador2 = $r['inputIdJugador2'];
        $ganador = $r['radioGanador'];

        $jugador1 = Jugador::find($idJugador1);
        $jugador2 = Jugador::find($idJugador2);
        $match = new Match();
        $match->set1 = $set1;
        $match->set2 = $set2;
        $match->set3 = $set3;
        $match->idj1 = $idJugador1;
        $match->idj2 = $idJugador2;
        $match->save();

        if($ganador==1){
            if($jugador1->Puesto > $jugador2->Puesto){
                $intervaloDeJugadores = Jugador::where('Puesto','>=',$jugador2->Puesto)
                ->where('Puesto','<',$jugador1->Puesto)->get();
                $jugador1->Puesto = $jugador2->Puesto;
                foreach($intervaloDeJugadores as $player){
                    $player->Puesto++;
                }
                foreach($intervaloDeJugadores as $player){
                    $player->save();
                }
                $jugador1->save();
            }
        }else{
            if($jugador2->Puesto > $jugador1->Puesto){
                $intervaloDeJugadores = Jugador::where('Puesto','>=',$jugador1->Puesto)
                ->where('Puesto','<',$jugador2->Puesto)->get();
                $jugador2->Puesto = $jugador1->Puesto;
                foreach($intervaloDeJugadores as $player){
                    $player->Puesto++;
                }
                foreach($intervaloDeJugadores as $player){
                    $player->save();
                }
                $jugador2->save();            
            }
        }
        return redirect("/match");
    }

    public function listarMatch(){
        $matches = Match::orderBy('created_at')->get();
        
        return view('historialMatch',compact('matches'));
    }
}
