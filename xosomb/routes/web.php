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
Route::get('/getBox/{id}', function ($id) {
    $controller = 'App\\Http\\Controllers\\XSMBController';

    return $controller::GetBox($id, null);
});

Route::get('/{path}/getBox/{id}', function ($path, $id) {
    if ($path === null) {
        $controller = 'App\\Http\\Controllers\\xosoController';
    } elseif ($path === array_keys(config('constants.paths'))[1] || $path === array_keys(config('constants.paths'))[2]) {

        $controller = 'App\\Http\\Controllers\\' . config('constants.paths.' . $path) . 'Controller';
        return $controller::GetBoxMaster($id, null);
    } else {
        $controller = 'App\\Http\\Controllers\\' . config('constants.paths.' . $path) . 'Controller';
    }

    return $controller::GetBox($id, null);
});

Route::get('/getBox/{id}/{beforeDay}', function ($id, $beforeDay) {
    $controller = 'App\\Http\\Controllers\\XSMBController';
    return $controller::GetBox($id, $beforeDay);
});

Route::get('/{path}/getBox/{id}/{beforeDay}', function ($path, $id, $beforeDay) {
    if ($path === null) {
        $controller = 'App\\Http\\Controllers\\xosoController';
    } elseif ($path === array_keys(config('constants.paths'))[1] || $path === array_keys(config('constants.paths'))[2]) {
        $controller = 'App\\Http\\Controllers\\' . config('constants.paths.' . $path) . 'Controller';
        return $controller::GetBoxMaster($id, $beforeDay);
    } else {
        $controller = 'App\\Http\\Controllers\\' . config('constants.paths.' . $path) . 'Controller';
    }

    return $controller::GetBox($id, $beforeDay);
});

Route::get('/{path}', function ($path) {
    $controller = 'App\\Http\\Controllers\\' . config('constants.paths.' . $path) . 'Controller';
    
    return $controller::Index($path);
});

Route::get('/', function () {
    $controller = 'App\\Http\\Controllers\\XSMBController';
    return $controller::Index(null);
});

Route::get('/getAllProvince', 'ProvinceController@getAllProvince');

Route::get('/{metatile}', [
    'as' => 'xosolink',
    'uses' => 'XosoController@getXosoInfo'
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
