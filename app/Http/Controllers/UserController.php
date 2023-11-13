<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Users;
use Carbon\Carbon;

class UserController extends Controller
{
    public function index()
    {
        $users = Users::all();
        
        // Calcular la edad
        foreach ($users as $user) {
            $user->edad = $this->calcularEdad($user->birthday);
        }

        return view('users.index', compact('users'));
    }

    private function calcularEdad($fechaNacimiento)
    {
        return Carbon::parse($fechaNacimiento)->age;
    }
}
