@extends('plantilla')
@section('principal')

    <main class="container main-form">
        <div class="descripcion col-md-12">
            <h1><i class="fas fa-user"></i> Realizar Match</h1>
            <p><i class="fas fa-pen"></i> Seleccione dos jugadores que desee enfrentar</p>
        </div>
        <div class=formYtabla>

            <div class="tabla col-md-4">
                <h4><i class="fas fa-edit"></i> Ranking</h4>
                <div class="formulario">
                    <form action="">
                        <label for="buscar"><i class="fas fa-search"></i> Buscar jugador 1</label> <br>
                        <input id="myInput1" type="text" class="form-control" placeholder="Buscar...">
                    </form>
                </div>
                <table class="table table-hover table-dark table-striped">
                    <thead>
                    <tr>
                        <th>Puesto</th>
                        <th>Nombre</th>
                        <th>Seleccionar</th>
                    </tr>
                    </thead>
                    <tbody id="myTable1">
                    @foreach ($jugadores as $jugador)
                        <tr>
                            <td class="j1puesto">
                                {{ $jugador->Puesto }}
                            </td>
                            <td class="j1nombre">
                                {{ $jugador->Nombre }}
                            </td>
                            <td>
                                <button id="{{ $jugador->id }}" class="botTabla1 btn btn-light">Seleccionar</button>
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
            <div class="letrero col-md-4">
                <h1 id="h1jugador1">{{$jugador1->Nombre}}</h1>
                <h1 id="h1vs"> VS </h1>
                <h1 id="h1jugador2">{{$jugador2->Nombre}}</h1>

                <div class="sets mt-3">
                    <form action="guardarMatchModificado" method="post">
                        {{ csrf_field() }}
                        <div class="form-group">
                            <label for="set1">Set 1</label>
                            <input name="set1" class="form-control" type="text" value="{{$match->set1}}">
                        </div>
                        <div class="form-group">
                            <label for="set2">Set 2</label>
                            <input name="set2" class="form-control" type="text" value="{{$match->set2}}">
                        </div>
                        <div class="form-group">
                            <label for="set3">Set 3</label>
                            <input name="set3" class="form-control" type="text" value="{{$match->set3}}">
                        </div>
                        <div class="form-group">
                            <label for="visibilidad">Visibilidad</label>
                            <input type="checkbox" class="form-control" value="1" name="visibilidad" {{$match->visible ? 'checked' : ''}}>
                        </div>
                        <div class="form-group">
                            <label for="fecha">Fecha</label>
                            <input type="date" class="form-control" name="fecha" value="{{$match->fecha}}" required>
                        </div>
                        <h4 class="mt-3">Ganador</h4>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="radioGanador" id="exampleRadios1" value="1" checked>
                            <label class="form-check-label labelJugador1" for="exampleRadios1">
                                Jugador 1
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="radioGanador" id="exampleRadios2" value="2">
                            <label class="form-check-label labelJugador2" for="exampleRadios2">
                                Jugador 2
                            </label>
                        </div>
                        <input type="hidden" id="inputIdJugador1" name="inputIdJugador1" value="1">
                        <input type="hidden" id="inputIdJugador2" name="inputIdJugador2" value="2">
                        <input type="hidden" name="id" value="{{$match->id}}">
                        <input type="submit" class="confirmar btn btn-light w-100 mt-3" value="Modificar Match"/>
                    </form>
                </div>
            </div>
            <div class="tabla col-md-4">
                <h4><i class="fas fa-edit"></i> Ranking</h4>
                <div class="formulario">
                    <form action="">
                        <label for="buscar"><i class="fas fa-search"></i> Buscar jugador 2</label> <br>
                        <input id="myInput2" class="form-control" type="text" placeholder="Buscar...">
                    </form>
                </div>
                <table class="table table-hover table-dark table-striped">
                    <thead>
                    <tr>
                        <th>Puesto</th>
                        <th>Nombre</th>
                        <th>Seleccionar</th>
                    </tr>
                    </thead>
                    <tbody id="myTable2">
                    @foreach ($jugadores as $jugador)
                        <tr>
                            <td class="j2puesto">
                                {{ $jugador->Puesto }}
                            </td>
                            <td class="j2nombre">
                                {{ $jugador->Nombre }}
                            </td>
                            <td>
                                <button id="{{ $jugador->id }}" class="botTabla2 btn btn-light">Seleccionar</button>
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </main>


    <script>
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $(document).ready(function(){
            var jugador1;
            var jugador2;

            $("#myInput1").on("keyup", function() {
                var value = $(this).val().toLowerCase();
                $("#myTable1 tr").filter(function() {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            });
            $("#myInput2").on("keyup", function() {
                var value = $(this).val().toLowerCase();
                $("#myTable2 tr").filter(function() {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            });

            $(".botTabla1").on("click",function(){
                jugador1 = {
                    id : $(this).attr("id"),
                    puesto : $(this).closest("tr").find(".j1puesto").text(),
                    nombre : $(this).closest("tr").find(".j1nombre").text()
                }
                $("#inputIdJugador1").val(jugador1.id);
                $("#h1jugador1").text(jugador1.nombre);
                cargarNombreLabel();
            });

            function cargarNombreLabel(){
                $(".labelJugador1").text($('#h1jugador1').text());
                $(".labelJugador2").text($('#h1jugador2').text());
            }

            $(".botTabla2").on("click",function(){
                jugador2 = {
                    id : $(this).attr("id"),
                    puesto : $(this).closest("tr").find(".j2puesto").text(),
                    nombre : $(this).closest("tr").find(".j2nombre").text()
                }
                $("#inputIdJugador2").val(jugador2.id);
                $("#h1jugador2").text(jugador2.nombre);
                cargarNombreLabel();
            });

            $("input[name='radioGanador']").change(function(){

            });

            $(".confirmar").on("click",function(){

            });
        });
    </script>
@endsection
