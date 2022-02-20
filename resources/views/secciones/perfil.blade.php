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
                  <li class="nav-item"><a href="#Editar Perfil" class="nav-link" data-toggle="tab">Editar Perfil</a></li>
                  <li class="nav-item"><a href="#Mis Deseos" class="nav-link" data-toggle="tab">Mis Deseos</a></li>
                  <li class="nav-item"><a href="#Me gusta" class="nav-link" data-toggle="tab">Me Gusta</a></li>
               </ul>
            </div>
         </div>
         <div id="content" class="content content-full-width" style="height:60%;width:100%;border:none;overflow:auto;">
            
            @foreach ($usuario->deseos as $deseo)
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
<script>

</script>
@endsection