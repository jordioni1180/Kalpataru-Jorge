<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Kalpataru</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">ES/EN</a>
            </li>
            <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Inicio</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Escribir Deseo</a>
          </li>
          @if(!Auth::check())
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="{{route('login')}}">Inicio Sesion</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="{{route('register')}}">Registrarse</a>
        </li>
        @else
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="" onclick="event.preventDefault(); document.getElementById('logout').submit();">Cerrar sesion</a>
          <!-- Solo usuarios identificados -->
          <form id="logout" action="{{route('logout')}}" method="POST" style="display:none;">
          @csrf
          </form>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="{{route('perfil.index')}}">Ver perfil</a>
        </li>
        @endif
        </ul>
        <form class="d-flex">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>
    </div>
  </nav>