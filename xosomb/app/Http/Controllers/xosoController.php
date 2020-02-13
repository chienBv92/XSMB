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
            $xsmbID = 1;
            $province = Province::where('del_flg', 0)->where('id', $xsmbID);
        } else {
            $province = Province::where('del_flg', 0)->where('meta_title', $meta_title);
        }

        $id = $province->value('id');
        $province_Name = $province->value('provinceName');
        $rollInfoHtml = $province->value('Roll_Info_HTML');

        return view('client.layout.master', array('id' => $id, 'province_Name' => $province_Name, 'roll_Info_Html' => $rollInfoHtml));
    }

    public static function GetBox($id, $beforeDay, $dayOfWeek)
    {
        return response()->json(array('html' => null));
    }

    protected static function getCurrentDateString($dateTime, $subDays)
    {
        // Get today date string
        $today = Carbon::parse($dateTime);
        return $today->subdays($subDays)->format('yy-m-d');
    }

    protected static function getBeforeDateString($beforeDay, $subDays)
    {
        $date = Carbon::parse($beforeDay);

        return $date->subdays($subDays)->format('yy-m-d');
    }
}
