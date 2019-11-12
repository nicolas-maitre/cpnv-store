<?php

namespace App\Http\Controllers;

use App\Application;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AppList extends Controller
{
    //
    public function show()
    {
        //get data
        $appsArray = Application::all();
        //return view
        return view('appList', ['appsArray' => $appsArray]);
    }
}
