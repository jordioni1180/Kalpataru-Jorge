@extends('layouts.masterpage')
@section('Titulo','Inicio')
@section('estilos')
    <link rel="stylesheet" href="{{URL::asset('css/Deseos.css') }}">
@endsection
@section('contenido')

    @foreach ($deseos as $deseo)
    <div class="deseos">
        <div class="card">
            <div class="card-header">
            {{$deseo->nombre}} - {{$deseo->created_at}}
            </div>
            <div class="card-body">
                <blockquote class="blockquote mb-0">
                    <p></p>
                    <footer class="blockquote">{{$deseo->texto}}</footer>
                    <p></p>
                </blockquote>
            </div>
        </div>
    </div>
    @endforeach



@endsection
@section('scripts')

@endsection
