<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>

Para el despliegue correcto de esta aplicacion en un servidor virtual, bastaria con descargarse unicamente un servidor virtual, meter el repositorio/proyecto dentro de la carpeta donde se comienza el servidor virtual web: www, htdocs, etc... 
La ruta suele ser comunmente https://localhost/ y dentro tendrias acceso a todas la aplicaciones que haya dentro, incluida la tuya. En caso de laravel solo haria falta entra en la carpeta del proyecto y acceder a la carpeta public y ya podrias ver tu proyecto.

-----------------------------------------

En el caso de que quieras subirlo a un hosting los pasos dependeran de este:

EPor ejemplo lo primero que habria que hacerse seria registrarse a la web del hosting 

![image](https://user-images.githubusercontent.com/76107525/155650842-2149d29f-92ba-4efd-bdd4-7079fffaf243.png)

Una vez nos decidamos a subir nuestro proyecto la web nos ofrecera distintas opciones
![image](https://user-images.githubusercontent.com/76107525/155650943-5d98cbae-09ea-46f4-892d-f3cc47dd5c4e.png)
Al seleccionar la opción deberemos comprimir la carpeta donde esta nuestra web, antes de eso y para evitar problemas mas adelante debemos modificar una linea de codigo que esta dentro del config.php

![image](https://user-images.githubusercontent.com/76107525/155651084-f91de574-71ea-46a8-ae72-a8143a311f6e.png)

Deberemos cambiar la ruta de enlace de localhost por la que nos ha proporcionado nuestro hosting

Una vez hayamos acabado subiremos el proyecto comprimido
![image](https://user-images.githubusercontent.com/76107525/155651174-900fee63-1344-4032-9cf5-bb56046c8bed.png)

Tambien la base de datos correspondiente a esta

![image](https://user-images.githubusercontent.com/76107525/155651271-bf799363-569b-48c9-b943-31a8ef0c00e6.png)

Una vez subidos los archivos de la web y la base de datos correctamente solo quedaría importar las tablas de la base de datos y descomprimir los archivos de la web.
y una vez descomprimidos los archivos deberán moverse dentro de la carpeta public_html que crea el hosting por defecto.
![image](https://user-images.githubusercontent.com/76107525/155651384-5001a6fd-74ce-4e2d-a2ef-2438591fb851.png)
Ahora podremos acceder a nuestro proyecto adecuadamente

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
