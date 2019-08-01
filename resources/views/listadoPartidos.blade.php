@extends('plantilla')
@section('principal')
<main class=" main-form">
        <div class=formYtabla>
                <div class=" col-md-6">
                        <table class="table table-hover table-dark table-striped">
                            <thead>
                                <tr>
                                    <th>Avatar</th>
                                    <th>Nombre</th>
                                    <th>Puesto</th>
                                </tr>
                            </thead>
                            <tbody id="myTable2">
                                @foreach ($jugadores as $jugador)
                                <tr>
                                    <td>
                                        <?php if(!empty($jugador->Avatar)): ?>
                                       <img class="avatar" src="/storage/{{ $jugador->Avatar }}" alt="avatar"> 
                                       <?php endif ?>
                                    </td>
                                    <td class="j2nombre">
                                        {{ $jugador->Nombre }} 
                                    </td>
                                    <td class="j2puesto">
                                        {{ $jugador->Puesto }}
                                    </td>
                                </tr>
                            @endforeach
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
                                    {{ $match->created_at }}
                                </td>
                                <td>
                                    {{ $match->jugador1()->get()->first()->Nombre }} 
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
@endsection