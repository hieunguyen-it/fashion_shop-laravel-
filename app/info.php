<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class info extends Model
{
    protected $table='info';
    public $timestamps = false;
    public function users()
    {
        return $this->belongsTo('App\users', 'users_id', 'id');
    }
}
