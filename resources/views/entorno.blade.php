@extends('plantilla')
@section('principal')
<main class="container main-form">
    <div class="descripcion col-md-12">
        <h1><i class="fas fa-user"></i> Modificacion de entorno</h1>
        <p><i class="fas fa-pen"></i> En esta seccion puede cambiar diferentes variables de entorno.</p>
    </div>

    <div class="formYtabla">
        <div class="formulario col-md-4 mx-auto">
            <form action="{{ url('/guardarFondo') }}" method="post">
                {{ csrf_field() }}
                <label for="fondo">Ingrese fondo</label>
                <div class="form-group">
                        <label for="fondo"><i class="fas fa-angle-double-right"></i> Fondo</label><br>
                        <input name="background" type="file" placeholder="Fondo">
                </div>
                <input type="hidden" name="oculto">
                <button class="btn btn-light d-block mt-4" type="submit">Modificar</button>
            </form>
        </div>
    </div>


@endSection