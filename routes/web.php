<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\InicioController;
use App\Http\Controllers\DeseosController;
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

//Ruta de inicio al cargar la pagina por primera vez
Route::get('/', [InicioController::class, 'index'])->name('home');
//Ruta de deseos al cargar la pagina por primera vez
Route::get('/deseos', [DeseosController::class, 'index'])->name('deseos');
//Rutas del controlador de deseos
Route::resource('deseos', DeseosController::class);
//Rutas del controlador de inicio
Route::resource('inicio', InicioController::class);

//Grupo de rutas del voyager
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

//Ruta de home que cargara el index de inicio, que te devolvera la vista de inicio al entra en la url /home
Route::get('/home', [App\Http\Controllers\InicioController::class, 'index'])->name('home');
