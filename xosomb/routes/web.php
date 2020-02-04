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
Route::get('/getBox', function () {
    $controller = 'App\\Http\\Controllers\\XSMBController';

    return $controller::GetBox(null);
});

Route::get('/{path}/getBox', function ($path) {
    if ($path === null) {
        $controller = 'App\\Http\\Controllers\\xosoController';
    } else {
        $controller = 'App\\Http\\Controllers\\' . config('constants.paths.' . $path) . 'Controller';
    }

    return $controller::GetBox(null);
});

Route::get('/getBox/{beforeDay}', function ($beforeDay) {
        $controller = 'App\\Http\\Controllers\\XSMBController';

    return $controller::GetBox($beforeDay);
});

Route::get('/{path}/getBox/{beforeDay}', function ($path, $beforeDay) {
    if ($path === null) {
        $controller = 'App\\Http\\Controllers\\xosoController';
    } else {
        $controller = 'App\\Http\\Controllers\\' . config('constants.paths.' . $path) . 'Controller';
    }

    return $controller::GetBox($beforeDay);
});

Route::get('/{path}', function ($path) {

    $controller = 'App\\Http\\Controllers\\' . config('constants.paths.' . $path) . 'Controller';
    return $controller::Index();
});

Route::get('/', 'XSMBController@Index');


// Route::get('/', function () {
//     return view('client.content.xsmb');
// });

// Route::get('/getAllProvince', function () {
//     return view('client.content.xsmb');
// });
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
