<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GuzzleHttp\Client;
use Carbon\Carbon;

class xosoController extends Controller
{
    public static function Index()
    {
        return view('client.layout.master');
    }

    public static function GetBox($beforeDay)
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
