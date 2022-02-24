@extends('layouts.masterpage')
@section('Titulo','Inicio')
@section('estilos')
    <link rel="stylesheet" href="{{URL::asset('css/Deseos.css') }}">
@endsection
@section('contenido')
    <div class="deseos pt-5">
    @foreach ($deseos as $deseo)
        <div class="card">
            <div class="card-header">
            <div class="nombreDeseo">{{ $deseo->nombre}}</div><div class="fecha">{{$deseo->created_at}}</div>
            </div>
            <div class="card-body">
                <blockquote class="blockquote mb-0">
                    <p></p>
                    <footer class="blockquote">{{$deseo->texto}}</footer>
                    <p><div id="gustar">
                        @if(Auth::check())
                        @if($deseo->valorados->contains($usuario->id))
                        <form action="{{route('deseos.destroy',[$deseo])}}" method="post" enctype="multipart/form">
                            @csrf
                            @method('DELETE')
                            <button type="submit"><span class="iconify" data-icon="ant-design:heart-filled" style="color: rgb(175, 62, 62);"></span></button>{{$deseo->valorados->count()}}
                         </form>
                        @else

                        <form action="{{route('deseos.update',[$deseo])}}" method="POST" enctype="multipart/form">
                            @csrf
                            @method('PUT')

                            <button type="submit"><span class="iconify" data-icon="ant-design:heart-outlined" style="color: rgb(175, 62, 62);"></span></button>  {{$deseo->valorados->count()}}
                        </form>
                        @endif
                        @else
    
                        <span class="iconify" data-icon="ant-design:heart-filled" style="color: rgb(175, 62, 62);"></span>  {{$deseo->valorados->count()}}
                        @endif

                        </div></p>
                </blockquote>
            </div>
        </div>
        <hr>
    
    @endforeach
</div>
<div class="d-flex justify-content-end fixed-bottom me-4"><button id="btnArriba"><span id="icono" class="iconify" data-icon="bi:arrow-up-square-fill" style="color: rgb(227, 175, 231);" data-width="35" data-height="40"></span></button></div>
@endsection
@section('scripts')
<script src="https://tholman.com/elevator.js/elevator.js"></script>
<script src="{{URL::asset('js/elevador.js')}}/"></script>
<script src="{{URL::asset('lib/moment.js')}}/"></script>
<script src="{{URL::asset('lib/moment-with-locales.js')}}/"></script>
<script src="{{URL::asset('js/tiempoRelativo.js')}}/"></script>
@endsection
