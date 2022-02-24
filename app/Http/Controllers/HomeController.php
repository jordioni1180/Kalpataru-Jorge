<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Deseo;
use App\Models\User;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $usuarios=User::all()->where('role_id',2);

        $administradores=User::all()->where('role_id',1);
        return view("voyager.estadisticas",['usuarios'=>$usuarios, 'administradores'=>$administradores]);
        
    }
}
