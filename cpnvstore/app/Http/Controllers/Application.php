<?php

namespace App\Http\Controllers;

use Dotenv\Regex\Result;
use Illuminate\Http\Request;

class Application extends Controller
{
    public function show($appId){;
        //get data
        $appData = \App\Application::where('id', $appId)->get()[0];
        //return view
        return view('app', ['appData' => $appData]);
    }
    public function download($appId){
        $appData = \App\Application::where('id', $appId)->get()[0];
        $appData->incrementDownload();
        return redirect($appData->location);
    }
}
