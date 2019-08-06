<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/editor', function () {
    return view('editor');
});

Route::get('/agregarJugador', 'JugadoresController@agregarJugador');
Route::post('/agregarJugador', 'JugadoresController@grabarJugador');

Route::get('/editarJugador/{id}', 'JugadoresController@editarJugador');
Route::post('/editarJugador/{id}', 'JugadoresController@actualizarJugador');

Route::post('/borrarJugador/{id}', 'JugadoresController@borrarJugador');

Route::get('/match', 'MatchController@showMatch');
Route::post('/grabarMatch','MatchController@grabarMatch');
Route::get('/historialMatch','MatchController@listarMatch');
Route::get('/listado','JugadoresController@listar');
Route::get('/entorno','EntornoController@show');