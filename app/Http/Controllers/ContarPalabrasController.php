<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ContarPalabrasController extends Controller
{
    public function contarPalabras(Request $request)
    {
        // Obtiene el texto
        $texto = $request->input('texto');

        // Convierte el texto a UTF-8 y elimina puntos, comas y otros caracteres no deseados
        $texto = iconv('UTF-8', 'UTF-8//IGNORE', $texto);
        $texto = strtolower(preg_replace("/[^a-z0-9 ]/", "", $texto));

        // Divide el texto en palabras
        $palabras = explode(" ", $texto);

        // Filtra las palabras vacías
        $palabras = array_filter($palabras);

        // Cuenta la frecuencia de cada palabra
        $frecuenciaPalabras = array_count_values($palabras);

        // Devuelve el resultado como respuesta JSON
        return response()->json($frecuenciaPalabras);
    }
}
