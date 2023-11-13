<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Users;

class RegistroController extends Controller
{
    public function mostrarFormulario()
    {
        return view('registro');
    }

    public function procesarFormulario(Request $request)
    {
        $request->validate([
            'nombre' => 'required|string|max:255',
            'correo' => 'required|email|unique:users,email',
            'direccion' => 'required|string|max:255',
            'telefono' => 'required|string|max:20',
            'fecha_nacimiento' => 'required|date',
            'password' => 'required|string|min:6',
        ]);

        // Crear el usuario
        $usuario = Users::create([
            'name' => $request->nombre,
            'email' => $request->correo,
            'address' => $request->direccion,
            'phone' => $request->telefono,
            'birthday' => $request->fecha_nacimiento,
            'password' => bcrypt($request->password),
        ]);

        return redirect('/usuarios')->with('success', 'Registro exitoso');
    }
}
