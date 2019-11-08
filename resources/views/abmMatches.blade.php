@extends("plantilla")
@section("principal")

    <main class="container main-form">
        <div class="descripcion col-md-12">
            <h1><i class="fas fa-user"></i> Modificar / Eliminar Match</h1>
            <p><i class="fas fa-pen"></i> Modifique o elimine los partidos del listado.</p>
        </div>
            <div class=formYtabla>

                <div class="tabla col-md-12">
                    <h4><i class="fas fa-edit"></i> Partidos</h4>
                    <div class="formulario">
                        <form action="">
                            <label for="buscar"><i class="fas fa-search"></i> Buscar Match</label> <br>
                            <input id="myInput1" type="text" class="form-control" placeholder="Buscar...">
                        </form>
                    </div>
                    <table class="table table-hover table-dark table-striped">
                        <thead>
                        <tr>
                            <th>Fecha de carga</th>
                            <th>Jugador 1</th>
                            <th>Jugador 2</th>
                            <th>Set 1</th>
                            <th>Set 2</th>
                            <th>Set 3</th>
                            <th>Visibilidad</th>
                            <th>Modificar</th>

                        </tr>
                        </thead>
                        <tbody id="myTable1">


                        @foreach ($matches as $match)
                            <tr>
                                <td>
                                    {{date('d-m-Y',strtotime($match->fecha)) }}
                                </td>
                                <td>
                                    @if($match->ganador == $match->idj1)
                                        <i class="fas fa-trophy"></i>
                                    @endif
                                    @if($match->jugador1()->first()!=null)
                                        {{ $match->jugador1()->get()->first()->Nombre }}
                                    @endif
                                </td>
                                <td>
                                    @if($match->ganador == $match->idj2)
                                        <i class="fas fa-trophy"></i>
                                    @endif
                                    @if($match->jugador2()->first()!=null)
                                        {{ $match->jugador2()->get()->first()->Nombre }}
                                    @endif
                                </td>
                                <td>
                                    {{ $match->set1 }}
                                </td>
                                <td>
                                    {{ $match->set2 }}
                                </td>
                                <td>
                                    {{ $match->set3 }}
                                </td>
                                <td>
                                    <input type="checkbox" {{$match->visible ? 'checked' : ''}} disabled>

                                </td>
                                <td>
                                    <form action="{{url('modificarMatch')}}" method="post">
                                        {{ csrf_field() }}
                                        <input type="hidden" name="matchID" value="{{$match->id}}">
                                        <button class="btn-danger"><i class="fas fa-edit"></i></button>
                                    </form>
                                </td>

                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
        </main>
        <script>
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $(document).ready(function(){
                $("#myInput1").on("keyup", function() {
                    var value = $(this).val().toLowerCase();
                    $("#myTable1 tr").filter(function() {
                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                    });
                });
            });
        </script>
        @endsection
