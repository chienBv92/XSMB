<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GuzzleHttp\Client;
use Carbon\Carbon;
use App\Models\Province;

class XSAGController extends xosoController
{
    public static function GetBox($beforeDay)
    {

        $roll_time = Province::where('del_flg', 0)->where('id', 1)->value('GioMoThuongSet');

        $today = Carbon::now('Asia/Ho_Chi_Minh')->toTimeString();
        if ($beforeDay === null) {
            if ($today < $roll_time) {
                $dateAPI = XSAGController::getCurrentDateString(1);
            } else {
                $dateAPI = XSAGController::getCurrentDateString(0);
            }
        } else {
            $dateAPI = $beforeDay;
        }

        $client = new Client();
        a: $res = $client->get('http://api.xoso.me/app/json-kq-mienbac?name=XSMB&v=2&ngay_quay=' . $dateAPI);

        if($res->getStatusCode() == 200)
        {
            $response_data = json_decode($res->getBody()->getContents(), true);

            if($response_data['stt'] === '404'){
                $dateAPI = XSAGController::getBeforeDateString($dateAPI, 1);
                goto a;
            }
            
        }

        $result = view('client.content.xsmb', ['response_data' =>  $response_data])->render();

        $resultDate = $response_data['data']['resultDate'];

        return response()->json(['html' => $result, 'roll_day' => Carbon::createFromTimestamp(round($resultDate / 1000), '+07:00')->format('yy-m-d')]);
    }
}
