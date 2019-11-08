<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="{{ url("/login") }}">
            <img src="{{ url('/logo.png') }}" width="35px" alt="logo">
          </a>
      <a class="navbar-brand" href="{{ url('listado') }}">Villa Real Tenis</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
          @guest
          @else
          <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <i class="fas fa-edit"></i> Opciones
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="{{ url('agregarJugador') }}">Altas / Bajas de Jugadores</a>
                    <a class="dropdown-item" href="{{ url('match') }}">Crear Partido</a>
                    <a class="dropdown-item" href="{{ url('abmMatch') }}">Modificar Partidos</a>
                    <a class="dropdown-item" href="{{ url('historialMatch') }}">Historial de Partidos</a>
                    <a class="dropdown-item" href="{{ url('listado') }}">Presentacion</a>
                    <a class="dropdown-item" href="{{ url('entorno') }}">Configurar</a>
                    <a class="dropdown-item" href="{{ route('logout') }}"
                        onclick="event.preventDefault();
                                      document.getElementById('logout-form').submit();">
                         {{ __('Logout') }}
                     </a>

                     <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                         @csrf
                     </form>
                </div>
          </li>
          @endguest

        </ul>
      </div>
    </nav>
    </header>
