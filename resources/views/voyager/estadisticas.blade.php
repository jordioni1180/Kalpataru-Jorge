@extends('voyager::master');
@section('content')
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="{{URL::asset('lib/chart.js') }}"></script>
    <script src="{{URL::asset('lib/jquery-3.6.0.min.js') }}"></script>
    <link rel="stylesheet" href="{{URL::asset('css/estadisticas.css') }}">
    
    <title>Estadisticas</title>
</head>
<body>
    <div id="canva">
    <canvas id="myChart" width="300" height="300"></canvas>
    </div>

    @foreach ($usuarios as $usuario)
        <div class="usuarios">{{$usuario->name}}</div>
    @endforeach
    @foreach ($administradores as $administrador)
        <div class="administradores">{{$administrador->name}}</div>
    @endforeach
</body>
</html>

<script>

    var usuarios =[];
    var administradores = [];
    let classuser = document.getElementsByClassName("usuarios");
    let classAdmin = document.getElementsByClassName("administradores");
    for (let i = 0; i < classuser.length; i++) {
        usuarios.push(classuser[i].textContent);
        
    }
    for (let i = 0; i < classAdmin.length; i++) {
        administradores.push(classAdmin[i].textContent);
        
    }
    
    



const ctx = document.getElementById('myChart').getContext('2d');
const myChart = new Chart(ctx, {
    type: 'doughnut',
    data: {
        labels: [
    'Usuarios',
    'Administradores',
  ],
  datasets: [{
    label: 'Usuarios del Sistema',
    data: [usuarios.length,administradores.length],
    backgroundColor: [
      'rgb(255, 99, 132)',
      'rgb(54, 162, 235)',
    ],
    hoverOffset: 4
  }]
    }
});


</script>


@endsection