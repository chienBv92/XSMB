<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GuzzleHttp\Client;
use Carbon\Carbon;
use App\Models\Province;

class XSMTController extends xosoController
{
    public static function GetBox($id, $beforeDay, $dayOfWeek)
    {

        if ($id === null) {
            return response()->json(['html' => '<p>Không tìm thấy kết quả phù hợp!</p>']);
        }
        $province = Province::where('del_flg', 0)->where('id', $id);
        $parentProvince = Province::where('id', $province->value('parent_id'));
        // $today = Carbon::now('Asia/Ho_Chi_Minh')->toTimeString();
        // if ($beforeDay === null) {
        //     if ($today < $province->value('GioMoThuongSet')) {

        //         $dateAPI = XSMBController::getCurrentDateString(1);
        //     } else {
        //         $dateAPI = XSMBController::getCurrentDateString(0);
        //     }
        // } else {
        //     $dateAPI = $beforeDay;
        // }

        $client = new Client();
        $res = $client->get($province->value('api_url'));

        if ($res->getStatusCode() == 404) {
            return response()->json(['html' => '<p>Không tìm thấy kết quả phù hợp!</p>']);
        }

        if ($res->getStatusCode() == 200) {
            $response_data = json_decode($res->getBody()->getContents(), true);
        }

        $provinceInfo = [
            'provinceCode' => $province->value('provinceCode'),
            'provinceName' => $province->value('provinceName'),
            'parentProvinceCode' => $parentProvince->value('provinceCode'),
            'parentProvinceName' => $parentProvince->value('provinceName'),
            'parentMetaTitle' => $parentProvince->value('meta_title')
        ];

        $result = view('client.content.xsmt', ['response_data' =>  $response_data], ['provinceInfo' => $provinceInfo])->render();

        $resultDate = $response_data['resultDate'];

        return response()->json(['html' => $result, 'roll_day' => Carbon::createFromTimestamp(round($resultDate / 1000), '+07:00')->format('yy-m-d')]);
    }

    public static function GetBoxMaster($id, $beforeDay)
    {
        $province = Province::where('del_flg', 0)->where('id', $id);
        $rollDate = Carbon::now('Asia/Ho_Chi_Minh');
        if ($beforeDay === null) {
            if ($rollDate->toTimeString() < $province->value('GioMoThuongSet')) {
                $rollDate = $rollDate->subDays(1);
            }
        } else {
            $dateAPI = $beforeDay;
        }

        $listRollProvinces = Province::where('del_flg', 0)
            ->where('parent_id', $id)
            ->where('NgayMoThuongSet', 'LIKE', '%' . $rollDate->dayOfWeek . '%')->get();

        if (count($listRollProvinces) == 0)
        return response()->json(['html' => '<p>Không tìm thấy kết quả phù hợp!</p>']);

        $client = new Client();
        $response_data = array();
        foreach ($listRollProvinces as $rollProvince) {

            $res = $client->get($rollProvince->api_url);

            if ($res->getStatusCode() == 404) {
                return response()->json(['html' => '<p>Không tìm thấy kết quả phù hợp!</p>']);
            }

            if ($res->getStatusCode() == 200) {
                $data = array(
                    'meta_title' => $rollProvince->meta_title,
                    'data' => json_decode($res->getBody()->getContents(), true)
                );

                $response_data[] = $data;
            }
        }

        $provinceInfo = [
            'provinceId' => $province->value('id'),
            'provinceCode' => $province->value('provinceCode'),
            'provinceName' => $province->value('provinceName'),
            'metaTitle' => $province->value('meta_title')
        ];

        $result = view('client.content.xsmtMaster', ['response_data' =>  $response_data, 'provinceInfo' => $provinceInfo])->render();
        $resultDate = $response_data[0]['data']['resultDate'];

        return response()->json(['html' => $result, 'roll_day' => Carbon::createFromTimestamp(round($resultDate / 1000), '+07:00')->format('yy-m-d')]);
    }
}
