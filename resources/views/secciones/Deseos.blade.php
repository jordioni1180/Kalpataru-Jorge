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
                    <p><div id="likes">Likes - {{$deseo->valorados->count()}}</div><div id="gustar">
                        @if(Auth::check())
                        @if($deseo->valorados->contains($usuario->id)) 
                        <form action="{{route('deseos.destroy',[$deseo])}}" method="post" enctype="multipart/form">
                            @csrf
                            @method('DELETE')
                            <button type="submit"><span class="iconify" data-icon="ant-design:heart-filled"></span></button>
                         </form>
                        @else
                        
                        <form action="{{route('deseos.update',[$deseo])}}" method="get" enctype="multipart/form">
                            @csrf
                            @method('GET')
                            
                            <span class="iconify" data-icon="ant-design:heart-outlined"></span>
                        </form>
                        @endif
                        @endif
                        
                        </div></p>
                </blockquote>
            </div>
        </div>
        <hr>
    </div>
    @endforeach



@endsection
@section('scripts')
    <script>
        $(document).ready(function()){




        }
    </script>
@endsection
