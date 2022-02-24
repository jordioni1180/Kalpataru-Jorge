@extends('layouts.masterpage')
@section('Titulo','Perfil')
@section('estilos')
<link rel="stylesheet" href="{{URL::asset('css/Perfil.css') }}">

@endsection
@section('contenido')


   <div class="row pt-5">
      <div class="col-md-12">
        <div class="profile">
            <div class="profile-header">
               <ul class="profile-header-tab nav nav-tabs">
                  <li class="nav-item"><a href="#" onclick="MisDeseos()" class="nav-link" data-toggle="tab">Mis Deseos</a></li>
                  <li class="nav-item"><a href="#" onclick="MeGusta()" class="nav-link" data-toggle="tab">Me Gusta</a></li>
               </ul>
            </div>
         </div>
         <div id="content" class="content content-full-width">
            <div class="deseos">
            @foreach ($usuario->deseos as $deseo)

                <div class="card">
                    <div class="card-header">
                    <div class="nombreDeseo">{{ $deseo->nombre}}</div><div class="fecha">{{$deseo->created_at}}</div>
                    </div>
                    <div class="card-body">
                        <blockquote class="blockquote mb-0">
                            <p></p>
                            <footer class="blockquote">{{$deseo->texto}}</footer>
                            <p><div class="gustar">
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
                                    
                                    <button type="submit"><span class="iconify" data-icon="ant-design:heart-outlined" style="color: rgb(175, 62, 62);"></span></button>{{$deseo->valorados->count()}}
                                </form>
                                @endif</div></p>
                        </blockquote>
                    </div>
                </div>
                <hr>
            @endforeach
        </div>
         <div class="MeGusta">
            @foreach ($usuario->valorados as $deseo)
            
                <div class="card">
                    <div class="card-header">
                        <div class="nombreDeseo">{{ $deseo->nombre}}</div><div class="fecha">{{$deseo->created_at}}</div>
                    </div>
                    <div class="card-body">
                        <blockquote class="blockquote mb-0">
                            <p></p>
                            <footer class="blockquote">{{$deseo->texto}}</footer>
                            <p><div class="gustar">
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
                                    
                                    <button type="submit"><span class="iconify" data-icon="ant-design:heart-outlined" style="color: rgb(175, 62, 62);"></span></button>{{$deseo->valorados->count()}}
                                </form>
                                @endif</div></p>
                        </blockquote>
                    </div>
                </div>
            <hr>
            @endforeach
            <div>
         </div>
      </div>
      <div class="d-flex justify-content-end fixed-bottom me-4"><button id="btnArriba"><span id="icono" class="iconify" data-icon="bi:arrow-up-square-fill" style="color: rgb(227, 175, 231);" data-width="35" data-height="40"></span></button></div>
   </div>
   

@endsection
@section('scripts')
<script src="{{URL::asset('js/perfil.js') }}"></script>
<script src="https://tholman.com/elevator.js/elevator.js"></script>
<script src="{{URL::asset('js/elevador.js')}}/"></script>
<script src="{{URL::asset('lib/moment.js')}}/"></script>
<script src="{{URL::asset('lib/moment-with-locales.js')}}/"></script>
<script src="{{URL::asset('js/tiempoRelativo.js')}}/"></script>
@endsection
