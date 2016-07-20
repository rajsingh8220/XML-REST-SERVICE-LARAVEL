<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Listing extends Model
{
    //
    public function address(){
        return $this->hasOne('App\Address','lid','id');
    }
    
    public function mls_detail(){
        return $this->hasOne('App\MlsDetail','lid','id');
    }
    
    public function photos(){
        return $this->hasMany('App\Photo','lid','id');
    }
}
