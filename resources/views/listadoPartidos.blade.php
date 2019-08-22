@extends('plantilla')
@section('principal')
<main class=" main-form">
        <div class=formYtabla>
                <div class=" col-md-4">
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

            <div class=" col-md-6">
                <table class="table table-hover table-dark table-striped">
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
                                    {{ date('d-m-Y',strtotime($match->created_at)) }}
                                </td>
                                <td>
                                    {{ $match->jugador1()->first()->Nombre }} 
                                </td>
                                <td>
                                    {{ $match->jugador2()->get()->first()->Nombre }} 
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
        console.log(listado[0].Nombre);
        var row = $("<tr />");
        $('#myTable2').append(row);
        row.append($("<td><img src=/storage/"+listado[0].Avatar+"></td>"));
        row.append($("<td>" + listado[0].Nombre+"</td>"));
        row.append($("<td>" + listado[0].Puesto+"</td>"));
        listado.shift();
        i++;
    }
    if(listado.length==0){
        updateTable();
    }

}, 4000);
});

  </script>
  <script type="text/javascript">
  $.ajaxSetup({ headers: { 'csrftoken' : '{{ csrf_token() }}' } });
  </script>
@endsection

