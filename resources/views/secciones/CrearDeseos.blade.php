@extends('layouts.masterpage')
@section('Titulo','Crear Deseo')
@section('estilos')
<link rel="stylesheet" href="{{URL::asset('css/CrearDeseos.css') }}">
@endsection
@section('contenido')
    <div id="seccion" class="seccion pt-5">
    <p>En esta seccion podras mandar tus deseos a favor de esta causa para el resto del mundo</p> </div>
    <form method="post" action="{{route('deseos.store')}}">
        @csrf
        <div id="containerDeseo">
        <div class="form-outline mb-4">
            <input type="text" id="formTexto" class="form-control" name="nombre" placeholder="Nombre del deseo"/>
          </div>
        <div class="form-outline mb-4">
        <textarea class="form-control" id="textArea" rows="3" name="texto" placeholder="Escribe tu deseo"></textarea>
    </div>
    </div>
    <div id="boton">
    <button class="btn btn-primary" type="submit">Crear Deseo</button>
    </div>
    </form>

@endsection
@section('scripts')

@endsection
