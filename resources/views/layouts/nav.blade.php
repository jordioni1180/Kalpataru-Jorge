<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#"><img src="{{URL::asset('images/logoSanLuis.png') }}" width="50" height="60"></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">

            <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="{{route('inicio.index')}}">Inicio</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="{{route('deseos.index')}}">Deseos</a>
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
          <a class="nav-link active" aria-current="page" href="{{route('deseos.create')}}">Escribir Deseo</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="" onclick="event.preventDefault(); document.getElementById('logout').submit();">Cerrar sesion</a>
          <!-- Solo usuarios identificados -->
          <form id="logout" action="{{route('logout')}}" method="POST" style="display:none;">
          @csrf
          </form>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="">Ver perfil</a>
        </li>
        @endif
        </ul>

      </div>
    </div>
  </nav>
