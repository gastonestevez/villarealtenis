<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="{{ url('agregarJugador') }}">Villa Real Tenis</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
          <li class="nav-item active">
          <a class="nav-link" href="{{ url('agregarJugador') }}"><i class="fas fa-home"></i> Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <i class="fas fa-edit"></i> Opciones
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="{{ url('agregarJugador') }}">Altas / Bajas de Jugadores</a>
                    <a class="dropdown-item" href="{{ url('historialMatch') }}">Historial de Partidos</a>
                    <a class="dropdown-item" href="{{ url('match') }}">Match</a>
                    <a class="dropdown-item" href="{{ url('listado') }}">Listado</a>
                    
                </div>
                        <li class="nav-item">
                          <a class="nav-link" href="#"><i class="fas fa-sign-out-alt"></i> Cerrar Sesion</a>
                        </li>
          </li>
        </ul>
      </div>
    </nav>
    </header>