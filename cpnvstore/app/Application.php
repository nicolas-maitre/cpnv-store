<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Application extends Model
{
    protected $table = 'apps'; //use correct table
    public $timestamps = false; //disable auto timestamps

    public function incrementDownload(){
        $this->increment('download_count');
    }
}
