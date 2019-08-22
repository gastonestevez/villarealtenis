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

Route::get('/agregarJugador', 'JugadoresController@agregarJugador')->middleware('admin');
Route::post('/agregarJugador', 'JugadoresController@grabarJugador')->middleware('admin');

Route::get('/editarJugador/{id}', 'JugadoresController@editarJugador')->middleware('admin');
Route::post('/editarJugador/{id}', 'JugadoresController@actualizarJugador')->middleware('admin');

Route::post('/borrarJugador/{id}', 'JugadoresController@borrarJugador')->middleware('admin');

Route::get('/match', 'MatchController@showMatch')->middleware('admin');
Route::post('/grabarMatch','MatchController@grabarMatch')->middleware('admin');
Route::get('/historialMatch','MatchController@listarMatch')->middleware('admin');
Route::get('/listado','JugadoresController@listar');
Route::get('/entorno','EntornoController@show')->middleware('admin');
Route::post('/guardarFondo','EntornoController@guardarFondo')->middleware('admin');
Auth::routes();
Route::get('/','JugadoresController@listar');
Route::get('/obtenerJugadores','JugadoresController@obtenerJugadores');
Route::get('/home', 'HomeController@index')->name('home');
