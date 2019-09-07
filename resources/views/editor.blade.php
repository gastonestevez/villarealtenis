@extends('plantilla')

@section('principal')
<main class="main-editor">

    <div class="caja">
      <i class="fas fa-plus-square"></i>
      <a href="{{ url('agregarJugador') }}">Agregar Usuario </a>
    </div>
  
  <div class="caja">
    <i class="fas fa-minus-square"></i>
      <a href="{{ url('borrarJugador') }}">Eliminar Usuario </a>
    </div>
  
  <div class="caja">
    <i class="fas fa-pencil-alt"></i>
      <a href="modUser.php">Modificar Usuario</a>
    </div>
    <div class="caja">
      <i class="fas fa-table-tennis"></i>
      <a href="{{ url('realizarMatch') }}">Realizar Match</a>
    </div>
  
  </main>
@endsection
