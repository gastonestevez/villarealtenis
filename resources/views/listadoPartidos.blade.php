@extends('plantilla')
@section('principal')
<main class="listadoPrincipal main-form col-sm-12">
        <div class="col-sm-12 formYtabla container-fluid row">
                <div class="col-sm-12 col-md-4">
                        <table class="table table-hover table-dark table-striped listadoTabla">
                            <thead>
                                <tr>
                                    <th>Avatar</th>
                                    <th>Nombre</th>
                                    <th>Puesto</th>
                                </tr>
                            </thead>
                            <tbody id="myTable2">

                        </tbody>
                    </table>
                </div>

            <div class="col-sm-12 col-md-6 tablaUltimos3partidos">
                <table class="table table-hover table-dark table-striped listadoTabla">
                        <thead>
                            <tr>
                                <th>Fecha de carga</th>
                                <th>Jugador 1</th>
                                <th>Jugador 2</th>
                                <th>Set 1</th>
                                <th>Set 2</th>
                                <th>Set 3</th>

                            </tr>
                        </thead>
                        <tbody id="myTable1">
                            @foreach ($ultimosMatches as $match)
                            <tr>
                                <td>
                                    {{ date('d-m-Y',strtotime($match->fecha)) }}
                                </td>
                                <td>
                                    @if($match->ganador == $match->idj1)
                                    <i class="fas fa-trophy"></i>
                                    @endif
                                    @if($match->jugador1()->first()!=null)
                                    {{ $match->jugador1()->first()->Nombre }}
                                    @endif
                                </td>
                                <td>
                                    @if($match->ganador == $match->idj2)
                                    <i class="fas fa-trophy"></i>
                                    @endif
                                    @if($match->jugador1()->first()!=null)
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
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        </div>
    </main>

<script>
$("body").css("background-image", "url('/storage/{{ $fondo->first()->fondo }}')");
$("body").css("background-repeat","cover");

$( document ).ready(function() {
    console.log( "ready!" );
    var listado;
  function updateTable(){
    $.ajax({
      type : 'get',
      url : '{{URL::to('obtenerJugadores')}}',
      success:function(data){
          listado = JSON.parse(data);
      }
      });
  }
  updateTable();
  setInterval(function() {
    var i = 0;
    $('#myTable2').html(' ');
    while(i<10 && listado.length>0){
        //console.log(listado[0].Nombre);
        if(listado[0].visible != 0){
            var row = $("<tr />");
            $('#myTable2').append(row);
            row.append($("<td><div class='cajaAvatar'><img src=/storage/"+listado[0].Avatar+"></div></td>"));
            if(listado[0].Puesto <= 16){
                row.append($("<td style=\"color:orange;\">" + listado[0].Nombre+"</td>"));
                row.append($("<td style=\"color:orange;\">" + listado[0].Puesto+"</td>"));
            }else{
                row.append($("<td>" + listado[0].Nombre+"</td>"));
                row.append($("<td>" + listado[0].Puesto+"</td>"));
            }
        }
        listado.shift();
        i++;
    }
    if(listado.length==0){
        updateTable();
    }

}, 6000);
});


  </script>
  <script type="text/javascript">
  $.ajaxSetup({ headers: { 'csrftoken' : '{{ csrf_token() }}' } });
  </script>
@endsection

