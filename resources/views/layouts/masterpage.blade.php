<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    {{-- links de bootstrap --}}
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    {{-- libreria de iconify --}}
    <script src="https://code.iconify.design/2/2.1.2/iconify.min.js"></script>
    {{-- Estilos globales --}}
    <link rel="stylesheet" href="{{URL::asset('css/style.css') }}">
    {{-- fuentes --}}
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Crete+Round:ital@1&display=swap" rel="stylesheet">
    {{--  --}}
    <title>kalpataru-@yield('Titulo')</title>
    @yield('estilos')
</head>
<body>
    <div class="container-fluid pt-5 ps-0 pe-0">
        
    @include('layouts.nav')
    @include('layouts.alertas')
    @yield('contenido')
    
    </div>
</body>
</html>
@yield('scripts')
