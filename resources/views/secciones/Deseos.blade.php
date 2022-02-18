@extends('layouts.masterpage')
@section('Titulo','Inicio')
@section('estilos')
    <link rel="stylesheet" href="{{URL::asset('css/Deseos.css') }}">
@endsection
@section('contenido')

    @foreach ($deseos as $deseo)

    @endforeach



@endsection
@section('scripts')

@endsection
