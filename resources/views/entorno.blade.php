@extends('plantilla')
@section('principal')
<main class="container main-form">
    <div class="descripcion col-md-12">
        <h1><i class="fas fa-user"></i> Modificacion de entorno</h1>
        <p><i class="fas fa-pen"></i> En esta seccion puede cambiar diferentes variables de entorno.</p>
    </div>

    <div class="formYtabla">
        <div class="formulario col-md-4 mx-auto">
            <form action="{{ url('/guardarFondo') }}" method="post" enctype="multipart/form-data">
                {{ csrf_field() }}
                <div class="form-group">
                        <label for="fondo"><i class="fas fa-angle-double-right"></i> Fondo</label><br>
                        <input type="file" name="fondo" placeholder="Fondo">
                </div>
                <input type="hidden" name="oculto">
                <button class="btn btn-light d-block mt-4" type="submit">Modificar</button>
            </form>
        </div>
    </div>

    <div class="formYtabla formulario my-2 mx-auto">
        <h2>Fondo Actual</h2>
        <img src="storage/{{ $entornoActual->first()->fondo }}" alt="fondo" width="200">
    </div>


@endSection