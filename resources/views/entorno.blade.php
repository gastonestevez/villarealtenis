@extends('plantilla')
@section('principal')
<main class="container main-form">
    <div class="descripcion col-md-12">
        <h1><i class="fas fa-user"></i> Modificacion de entorno</h1>
        <p><i class="fas fa-pen"></i> En esta seccion puede cambiar diferentes variables de entorno.</p>
    </div>

    <div class="formYtabla">
        <div class="formulario col-md-4 mx-auto">
            <form action="listadoPartidos">
                <label for="fondo">Ingrese fondo</label>
                <input type="file" name="fondo" placeholder="Fondo">
                <button class="btn btn-light d-block mt-4" type="submit" name="cambiarFondo">Modificar</button>
            </form>
        </div>
    </div>


@endSection