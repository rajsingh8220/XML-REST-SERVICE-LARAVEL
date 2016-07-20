<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MlsDetail extends Model
{
    //
    public function  listing(){
        return $this->belongsTo('App\Listing');
    }
}
