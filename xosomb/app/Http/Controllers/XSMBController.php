<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GuzzleHttp\Client;
use Carbon\Carbon;
use App\Models\Province;

class XSMBController extends xosoController
{
    public static function GetBox($id, $beforeDay)
    {
        if ($id === null) {
            return null;
        }

        $province = Province::where('del_flg', 0)->where('id', $id);
        $parentProvince = Province::where('id', $province->value('parent_id'));

        $today = Carbon::now('Asia/Ho_Chi_Minh')->toTimeString();
        if ($beforeDay === null) {
            if ($today < $province->value('GioMoThuongSet')) {

                $dateAPI = XSMBController::getCurrentDateString(1);
            } else {
                $dateAPI = XSMBController::getCurrentDateString(0);
            }
        } else {
            $dateAPI = $beforeDay;
        }
        $api_url = $province->value('api_url');

        if ($api_url === null)
            return null;
            
        $client = new Client();
        loop: $res = $client->get($api_url . $dateAPI);

        if ($res->getStatusCode() == 200) {
            $response_data = json_decode($res->getBody()->getContents(), true);

            if ($response_data['stt'] === '404') {
                $dateAPI = XSMBController::getBeforeDateString($dateAPI, 1);
                goto loop;
            }
        }

        $provinceInfo = [
            'provinceCode' => $province->value('provinceCode'),
            'provinceName' => $province->value('provinceName'),
            'parentProvinceCode' => $parentProvince->value('provinceCode'),
            'parentProvinceName' => $parentProvince->value('provinceName'),
            'parentMetaTitle' => $parentProvince->value('meta_title')
        ];

        $result = view('client.content.xsmb', ['response_data' =>  $response_data], ['provinceInfo' => $provinceInfo])->render();

        $resultDate = $response_data['data']['resultDate'];

        return response()->json(['html' => $result, 'roll_day' => Carbon::createFromTimestamp(round($resultDate / 1000), '+07:00')->format('yy-m-d')]);
    }
}
