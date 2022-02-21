@extends('layouts.masterpage')
@section('Titulo','Perfil')
@section('estilos')
<link rel="stylesheet" href="{{URL::asset('css/Perfil.css') }}">

@endsection
@section('contenido')

<div class="container">
   <div class="row">
      <div class="col-md-12">
        <div class="profile">
            <div class="profile-header">
               <ul class="profile-header-tab nav nav-tabs">
                  <li class="nav-item"><a href="#" onclick="MisDeseos()" class="nav-link" data-toggle="tab">Mis Deseos</a></li>
                  <li class="nav-item"><a href="#" onclick="MeGusta()" class="nav-link" data-toggle="tab">Me Gusta</a></li>
               </ul>
            </div>
         </div>
         <div id="content" class="content content-full-width " style="max-height:20%;width:100%;border:none;overflow:auto;">
            <!-- Button trigger modal -->




            <div class="deseos col-md-12 mx-auto">
            @foreach ($usuario->deseos as $deseo)

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

            @endforeach
        </div>

            @foreach ($usuario->valorados as $deseo)
            <div class="MeGusta">
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

         </div>
      </div>
   </div>
</div>

@endsection
@section('scripts')
<script src="{{URL::asset('js/perfil.js') }}"></script>
@endsection
