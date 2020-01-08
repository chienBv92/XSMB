<?php

namespace App\Http\Controllers;

use App\Models\Province;
use Illuminate\Http\Request;

class provinceController extends Controller
{
    //
    function getAllProvince(){
        $query = Province::where('del_flg', 0)->orderBy('type', 'ASC')->orderBy('region', 'ASC');
        $province_all = $query->get();
        //$province_mb = $province_all::where('region', 1)->get();
        return response()->json([
            'province_all' => $province_all
        ]);
    }

}
