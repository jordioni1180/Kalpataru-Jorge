@extends('layouts.masterpage')
@section('Titulo','Crear Deseo')
@section('estilos')
<link rel="stylesheet" href="{{URL::asset('css/CrearDeseos.css') }}">
@endsection
@section('contenido')
<div id="fondo">
    <div id="seccion" class="seccion pt-5">
        <div id="titulo"><h1 class="display-6">Aqui podras mandar tus deseos a favor de esta causa para el resto del mundo</h1></div>
    <form method="post" action="{{route('deseos.store')}}">
        @csrf
        <div id="containerDeseo">
        <div class="form-outline mb-4">
            <input type="text" id="formTexto" class="form-control" name="nombre" maxlength="60" placeholder="Nombre del deseo" required/>
          </div>
        <div class="form-outline mb-4">
        <textarea class="form-control" id="textArea" rows="3" name="texto" maxlength="255" placeholder="Escribe tu deseo" required></textarea>
    </div>
    </div>
    <div id="boton">
    <button id="btnEnviar" class="btn btn-primary" onclick="validar(); return false;" type="submit">Crear Deseo</button>
    </div>
    </form>
</div>
@endsection
@section('scripts')
<script src="https://unpkg.com/typeit@8.2.0/dist/index.umd.js"></script>
<script type='text/javascript' src="{{URL::asset('js/validacionTexto.js')}}/"></script>
<script>
new TypeIt("#titulo", {
  speed: 50,
  waitUntilVisible: false,
}).go();
</script>
@endsection
