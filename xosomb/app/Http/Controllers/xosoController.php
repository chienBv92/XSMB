<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GuzzleHttp\Client;
use Carbon\Carbon;
use App\Models\Province;


class xosoController extends Controller
{
    public static function Index($meta_title)
    {
        if ($meta_title == null) {
            $id = 1;
        } else {
            $id = Province::where('del_flg', 0)->where('meta_title', $meta_title)->value('id');
        }

        return view('client.layout.master', array('id' => $id));
    }

    public static function GetBox($id, $beforeDay)
    {
        return response()->json(array('html' => null));
    }

    protected static function getCurrentDateString($subDays)
    {
        // Get today date string
        $today = Carbon::now('+07:00');
        return $today->subdays($subDays)->format('yy-m-d');
    }

    protected static function getBeforeDateString($beforeDay, $subDays)
    {
        $date = Carbon::parse($beforeDay);

        return $date->subdays($subDays)->format('yy-m-d');
    }
}
