<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Deseo;
use App\Models\ValoracionDeseo;
use Illuminate\Support\Facades\DB;
use Auth;

class DeseosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = Auth::user();
        $deseos=Deseo::inRandomOrder()->limit(40)->get();


        return view('secciones.Deseos',['deseos'=>$deseos,'usuario'=>$user]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('secciones.CrearDeseos');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data=$request->all();

        $usuario=Auth::user();

        $deseo=new Deseo();
        $deseo->nombre=$data['nombre'];
        $deseo->texto=$data['texto'];
        $usuario->deseos()->save($deseo);
        return \Redirect::back();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Deseo $deseo)
    {

        $usuario=Auth::user();
        $usuario->valorados()->save($deseo);
        return \Redirect::back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($deseo)
    {
        $usuario = Auth::user();
        $valoracion= ValoracionDeseo::where('deseo_id', $deseo)->where('user_id',$usuario->id);
        $valoracion->delete();
        return \Redirect::back();
    }
}
