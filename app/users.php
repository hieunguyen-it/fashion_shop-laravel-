<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class users extends Model
{
    protected $table='users';
    public $timestamps = false;
    public function info()
    {
        return $this->hasOne('App\info', 'users_id', 'id');
    }
}
 