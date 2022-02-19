@extends('layouts.masterpage')
@section('Titulo','Crear Deseo')
@section('estilos')
<link rel="stylesheet" href="{{URL::asset('css/CrearDeseos.css') }}">
@endsection
@section('contenido')
    <div id="containerDeseo">
    <form method="post" action="{{}}">
        <div class="form-outline mb-4">
            <input type="text" id="form4Example1" class="form-control" name="nombre" placeholder="Nombre del deseo"/>
          </div>
        <div class="form-outline mb-4">
        <textarea class="form-control" id="textAreaExample6" rows="3" name="texto" placeholder="Escribe tu deseo"></textarea>
    </div> 
    <button class="btn btn-primary" type="submit">Crear Deseo</button>
    </form>
    </div>
@endsection
@section('scripts')

@endsection