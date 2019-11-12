<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*Route::get('/', function () {
    return view('appList');
});
Route::get('/app', function(){
    return view('app');
});*/

Route::get('/', 'AppList@show');
Route::get('/app/{appId}', 'Application@show');
Route::get('/app/{appId}/download', 'Application@download');
