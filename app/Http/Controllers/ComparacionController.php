<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ComparacionController extends Controller
{
     public function compararPuntos(Request $request)
    {
        // Obtén los valores de entrada desde la solicitud
        $a = [
            $request->input('puntos_a_0'),
            $request->input('puntos_a_1'),
            $request->input('puntos_a_2'),
        ];

        $b = [
            $request->input('puntos_b_0'),
            $request->input('puntos_b_1'),
            $request->input('puntos_b_2'),
        ];

        // Realiza la comparación y determina los puntos
        $puntos = $this->calcularPuntos($a, $b);

        // Devuelve los puntos como respuesta JSON
        return response()->json($puntos);
    }

    private function calcularPuntos($a, $b)
    {
        $puntos = [0, 0];

        for ($i = 0; $i < count($a); $i++) {
            if ($a[$i] > $b[$i]) {
                $puntos[0]++; // Alice recibe un punto
            } elseif ($a[$i] < $b[$i]) {
                $puntos[1]++; // Bob recibe un punto
            }
            // Si son iguales, no se asignan puntos
        }

        return $puntos;
    }
}
