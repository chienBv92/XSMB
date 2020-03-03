<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GuzzleHttp\Client;
use Carbon\Carbon;
use App\Models\Province;

class XSMBController extends xosoController
{
    public static function GetBox($id, $beforeDay, $dayOfWeek)
    {
        if ($id === null) {
            return response()->json(['html' => '<p>Không tìm thấy kết quả phù hợp!</p>']);
        }

        $province = Province::where('del_flg', 0)->where('id', $id);
        $parentProvince = Province::where('id', $province->value('parent_id'));
        $rollDate = $province->value('NgayMoThuongSet');
        $rollTime = $province->value('GioMoThuongSet');

        $todayDateTime = Carbon::now('Asia/Ho_Chi_Minh');
        if ($dayOfWeek !== null) {
            if ($beforeDay !== null) {
                $dateAPI = Carbon::parse($beforeDay)->subdays(6)->format('yy-m-d');
            } else {
                $dateAPI = XSMBController::getDayOfWeek($dayOfWeek, $rollTime);
            }
            $subDay = 7;
        } else {
            if ($beforeDay === null) {
                // Trường hợp get data theo ngày mới nhất
                $subDay = XSMBController::getLastRollDate($todayDateTime, $rollDate, $rollTime);
                $dateAPI = XSMBController::getCurrentDateString($todayDateTime, $subDay);
            } else {
                // Trường hợp get data theo ngày quá khứ
                $subDay = 7;
                $dateAPI = $beforeDay;
            }
        }

        $api_url = $province->value('api_url');

        if ($api_url === null)
            return response()->json(['html' => '<p>Không tìm thấy kết quả phù hợp!</p>']);

        $client = new Client();
        loop: $res = $client->get($api_url . $dateAPI);

        if ($res->getStatusCode() == 200) {

            $response_data = json_decode($res->getBody()->getContents(), true);
            if ($response_data['stt'] === '404') {
                if ($dayOfWeek !== null)
                    $dateAPI = XSMBController::getBeforeDateString($dateAPI, 7);
                else
                    $dateAPI = XSMBController::getBeforeDateString($dateAPI, XSMBController::getLastRollDate(Carbon::parse($dateAPI)->subdays($subDay), $rollDate, $rollTime));
                goto loop;
            }
        }

        $provinceInfo = [
            'provinceId' => $province->value('id'),
            'provinceCode' => $province->value('provinceCode'),
            'provinceName' => $province->value('provinceName'),
            'parentProvinceCode' => $parentProvince->value('provinceCode'),
            'parentProvinceName' => $parentProvince->value('provinceName'),
            'parentMetaTitle' => $parentProvince->value('meta_title')
        ];

        $result = view('client.content.xsmb', ['response_data' =>  $response_data], ['provinceInfo' => $provinceInfo])->render();

        $resultDate = Carbon::createFromTimestamp(round($response_data['data']['resultDate'] / 1000), '+07:00');

        $before = XSMBController::getLastRollDate($resultDate, $rollDate, $rollTime);
        $rollDateBefore = $resultDate->subdays($before)->format('yy-m-d');
        $live = $response_data['data']['tuong_thuat'];
        return response()->json(['html' => $result, 'roll_day' => $rollDateBefore, 'live' => $live]);
    }

    private static function getLastRollDate($currentDateTime, $rollDate, $rollTime)
    {
        // Quay thưởng hằng ngày
        if ($rollDate === null) {

            if (($currentDateTime->toDateString() === Carbon::now()->toDateString() && $currentDateTime->toTimeString() . '.000' >= $rollTime)) {
                $subDay = 0;
            } else {
                $subDay = 1;
            }
        } else {
            $arrRollDate = explode(',', $rollDate);

            // Lấy ngày quay số gần nhất
            // if($currentDateTime->toDateString() === Carbon::now()->toDateString())
            for ($idx = count($arrRollDate) - 1; $idx >= 0; $idx--) {
                if ($currentDateTime->toDateString() === Carbon::now()->toDateString() && $currentDateTime->dayOfWeek === $arrRollDate[$idx] && $currentDateTime->toTimeString() >= $rollTime) {
                    $subDay = 0;
                    break;
                } elseif ($currentDateTime->dayOfWeek > $arrRollDate[$idx]) {
                    $subDay = $currentDateTime->dayOfWeek - $arrRollDate[$idx];
                    break;
                }

                if ($idx === 0) {
                    $subDay = $currentDateTime->dayOfWeek + 7 - $arrRollDate[count($arrRollDate) - 1];
                }
            }
        }
        return $subDay;
    }

    private static function getDayOfWeek($dayOfWeek, $rollTime)
    {
        $strDOW = config('constants.weekMapsEN')[$dayOfWeek];
        $todayDateTime = Carbon::now('Asia/Ho_Chi_Minh');
        if ($dayOfWeek === $todayDateTime->dayOfWeek && $todayDateTime->toTimeString() . '.000' >= $rollTime) {
            $lastDOW = $todayDateTime;
        } else {
            $lastDOW = Carbon::createFromTimeStamp(strtotime("last $strDOW", $todayDateTime->timestamp));
        }
        return $lastDOW->format('yy-m-d');
    }
}
