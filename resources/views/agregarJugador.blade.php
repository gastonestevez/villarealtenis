@extends("plantilla")
@section("principal")
<main class="container main-form"> 
        <div class="descripcion col-md-12">
            <h1><i class="fas fa-user"></i> Agregar / Modificar jugador</h1>
            <p><i class="fas fa-pen"></i> Complete el formulario para agregar un nuevo jugador. Si el puesto no queda asignado, por default quedaría detrás del último.</p>
        </div>
        
        <div class=formYtabla>
            <div class="formulario col-md-4">
                
                <form action="{{ url('agregarJugador') }}" method="post" enctype="multipart/form-data">
                    {{ csrf_field() }}
                    <h4><i class="fas fa-edit"></i> Formulario</h4>
                <div class="form-group">
                    <label for="nombre"><i class="fas fa-angle-double-right"></i> Nombre</label><br>
                    <input name="Nombre" class="form-control" type="text" placeholder="Nombre" required>
                </div>
                <div class="form-group">
                        <label for="cumple"><i class="fas fa-angle-double-right"></i> Cumple</label><br>
                        <input name="Cumple" class="form-control" type="date" placeholder="Cumple">
                    </div>
                    
                <div class="form-group">
                    <label for="puesto"><i class="fas fa-angle-double-right"></i> Puesto</label><br>
                    <input name="Puesto" class="form-control" type="text" placeholder="Puesto (Opcional)">
                </div>
                <div class="form-group">
                        <label for="celular"><i class="fas fa-angle-double-right"></i> Celular</label><br>
                        <input name="Telefono" class="form-control" type="text" placeholder="Celular">
                </div>
                <div class="form-group">
                        <label for="email"><i class="fas fa-angle-double-right"></i> Email</label><br>
                        <input name="Email" class="form-control" type="text" placeholder="Email">
                </div>
                <div class="form-group">
                        <label for="Instagram"><i class="fas fa-angle-double-right"></i> Instagram</label><br>
                        <input name="Instagram" class="form-control" type="text" placeholder="Instagram">
                </div>
                <div class="form-group">
                        <label for="avatar"><i class="fas fa-angle-double-right"></i> Avatar</label><br>
                        <input name="Avatar" type="file" placeholder="Avatar">
                </div>
                    <button class="btn btn-light d-block mt-4" type="submit" name="addUser"><i class="fas fa-plus"></i> Agregar</button>
                </form>
            </div>
            
            <div class="tabla ml-1 col-md-8">
                <h4><i class="fas fa-edit"></i> Ranking</h4>
                <div class="formulario">
                        <form action="">
                          <label for="buscar"><i class="fas fa-search"></i> Buscar jugador</label> <br>
                          <input id="myInput" class="form-control" type="text" placeholder="Buscar...">
                        </form>
                      </div>
                <table class="table table-hover table-dark table-striped">
                    <thead>
                        <tr>
                            <th>Puesto</th>
                            <th>Avatar</th>
                            <th>Nombre</th>
                            <th>Celular</th>
                            <th>Editar</th>
                        </tr>
                    </thead>
                    <tbody id="myTable">
                        @foreach ($jugadores as $jugador)
                        <tr>
                        <td>
                            {{ $jugador->Puesto }}
                        </td>
                        <td>
                            <div class="cajaAvatar"><img src="/storage/{{ $jugador->Avatar }}" alt="avatar"></div> 
                        </td>
                        <td>
                            {{ $jugador->Nombre }} 
                        </td>
                        <td>
                            {{ $jugador->Telefono }}
                        </td>
                        <td>
                            <a href="{{ url('editarJugador/'.$jugador->id) }}"><i class="fas fa-edit"></i></a>
                            <a href="#" id="{{ $jugador->id }}" class="borrarJugador"><i class="fas fa-times-circle"></i></a>
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

            $(".borrarJugador").click(function (event){
                if(!confirm('Desea borrar el jugador?')){
                    event.preventDefault();
                }else{
                    $.post("borrarJugador/"+$(this).attr("id"),function(){
                        console.log("borrarJugador/"+$(this).attr("id"));
                        alert("Usuario borrado! :D");
                        location.reload();
                    })
                    .fail(function(data){
                        alert('uh');
                    });
                }
            });
                $(document).ready(function(){
                  $("#myInput").on("keyup", function() {
                    var value = $(this).val().toLowerCase();
                    $("#myTable tr").filter(function() {
                      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                    });
                  });
                });
        </script>
@endsection