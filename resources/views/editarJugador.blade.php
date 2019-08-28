@extends('plantilla')
@section('principal')
<main class="container main-form"> 

<div class="formulario col-md-6">
        <div class="descripcion col-md-12">
                <h1><i class="fas fa-user"></i> Modificar jugador</h1>
                <p><i class="fas fa-pen"></i> En esta seccion puede modificar la ficha del jugador.</p>
        </div>        
        <form action="{{ url('editarJugador/'.$jugador->id) }}" method="post" enctype="multipart/form-data">
            {{ csrf_field() }}
            <h4><i class="fas fa-edit"></i> Formulario</h4>
        <div class="form-group">
            <label for="nombre"><i class="fas fa-angle-double-right"></i> Nombre</label><br>
            <input name="Nombre" class="form-control" value="{{ $jugador->Nombre }}" type="text" placeholder="Nombre" required>
        </div>
        <div class="form-group">
                <label for="cumple"><i class="fas fa-angle-double-right"></i> Cumple</label><br>
                <input name="Cumple" class="form-control" value="{{ $jugador->Cumple }}" type="date" placeholder="Cumple">
            </div>
            
        <div class="form-group">
            <label for="puesto"><i class="fas fa-angle-double-right"></i> Puesto</label><br>
            <input name="Puesto" class="form-control" value="{{ $jugador->Puesto }}" type="text" placeholder="Puesto (Opcional)">
        </div>
        <div class="form-group">
                <label for="celular"><i class="fas fa-angle-double-right"></i> Celular</label><br>
                <input name="Telefono" class="form-control" value="{{ $jugador->Telefono }}" type="text" placeholder="Celular">
        </div>
        <div class="form-group">
                <label for="email"><i class="fas fa-angle-double-right"></i> Email</label><br>
                <input name="Email" class="form-control" value="{{ $jugador->Email }}" type="text" placeholder="Email">
        </div>
        <div class="form-group">
                <label for="Instagram"><i class="fas fa-angle-double-right"></i> Instagram</label><br>
                <input name="Instagram" class="form-control" value="{{ $jugador->Instagram }}" type="text" placeholder="Instagram">
        </div>
        <div class="form-group">
                <label for="avatar"><i class="fas fa-angle-double-right"></i> Avatar</label><br>
                <input name="Avatar" class="form-control" text="{{ $jugador->Avatar }}" type="file" placeholder="Avatar">
        </div>
            <button class="btn btn-light d-block mt-4" type="submit" name="addUser"><i class="fas fa-plus"></i> Modificar</button>
        </form>
    </div>
</main>
@endsection