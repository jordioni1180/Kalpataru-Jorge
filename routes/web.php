<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\InicioController;
use App\Http\Controllers\DeseosController;
use App\Http\Controllers\PerfilController;
use App\Http\Controllers\HomeController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
//Variables
Route::get('/estadisticas', [HomeController::class, 'index']);


//Ruta de inicio al cargar la pagina por primera vez
Route::get('/', [InicioController::class, 'index'])->name('home');
//Ruta de deseos al cargar la pagina por url
Route::get('/deseos', [DeseosController::class, 'index'])->name('deseos');
//Ruta de inicio al cargar la pagina por primera vez
Route::get('/perfil', [PerfilController::class, 'index'])->name('perfil');
//Rutas del controlador de deseos
Route::resource('deseos', DeseosController::class);
//Rutas del controlador de inicio
Route::resource('inicio', InicioController::class);
//Rutas del controlador de perfil
Route::resource('perfil', PerfilController::class);

//Grupo de rutas del voyager
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

//Ruta de home que cargara el index de inicio, que te devolvera la vista de inicio al entra en la url /home
Route::get('/home', [App\Http\Controllers\InicioController::class, 'index'])->name('home');
