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

Route::get('/', function () {
    return view('client.content');
});

Route::get('/getAllProvince', function () {
    return view('client.content');
});
Route::get('/getAllProvince', 'ProvinceController@getAllProvince');

Route::get('/{metatile}', [
    'as'=> 'xosolink',
    'uses'=> 'XosoController@getXosoInfo'
]);

Route::group([
    'namespace' => 'Admin',
    'prefix' => 'admin',
], function () {

    Route::post('/login', 'UserController@login');
    Route::get('/logout', 'UserController@logout')->name('management.user.logout');

//    Route::get('/', 'UserController@login')->name('management.home');
    Route::get('/', function () {
        return view('admin.index');
    });
});
