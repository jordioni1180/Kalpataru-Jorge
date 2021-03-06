<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Deseo extends Model
{
    use HasFactory;

    

    public function usuario(){
        return $this->belongsTo(User::class, 'user_id', 'id');
    }

    public function valorados(){
        return $this->belongsToMany(Deseo::class, 'valoracion_deseos', 'deseo_id','user_id');
    }

}
