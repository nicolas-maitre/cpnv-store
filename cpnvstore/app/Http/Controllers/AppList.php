<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AppList extends Controller
{
    //
    public function show()
    {
        $appsArray = DB::table('apps')->get();
        //get data
        
        //return view
        return view('appList', ['appsArray' => $appsArray]);
    }
}
