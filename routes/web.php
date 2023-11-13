<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ComparacionController;
use App\Http\Controllers\ContarPalabrasController;
use App\Http\Controllers\RegistroController;
use App\Http\Controllers\UserController;

Route::get('/', function () {
    return view('welcome');
});

Route::view('/comparar', 'comparar'); 
Route::post('/comparar', [ComparacionController::class, 'compararPuntos']);

Route::view('/contador', 'contar_palabras');
Route::post('/contador', [ContarPalabrasController::class, 'contarPalabras']);

Route::get('/registro', [RegistroController::class, 'mostrarFormulario'])->name('registro.formulario');
Route::post('/registro', [RegistroController::class, 'procesarFormulario'])->name('registro.procesar');

Route::get('/usuarios', [UserController::class, 'index']);