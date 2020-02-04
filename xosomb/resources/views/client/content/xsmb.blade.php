<?php
$lotData = $response_data["data"]["lotData"];
$dau = $response_data["data"]["dau"];
$duoi = $response_data["data"]["duoi"];
$resultDate = Carbon\Carbon::createFromTimestamp(round($response_data["data"]["resultDate"] / 1000), '+07:00');
?>
<div class="box">
    <h2 class="title-bor clearfix"><strong><a class="title-a" href="" title="XSMB">XSMB</a> » <a class="title-a" href="{!! Request::segment(1) !!}/{{$resultDate->dayOfWeek + 1}}" title="XSMB {{config('constants.weekMaps')[$resultDate->dayOfWeek]}}">XSMB
                {{config('constants.weekMaps')[$resultDate->dayOfWeek]}}</a> » <a class="title-a" href="{!! Request::segment(1) !!}/{{$resultDate->format('yy-m-d')}}" title="XSMB {{$resultDate->format('yy-m-d')}}">Xổ số miền Bắc {{$resultDate->format('yy-m-d')}}</a>
        </strong></h2>

    <div id="load_kq_mb_0">
        <div id="kq" class="one-city" data-region="1">
            <table id="kqxs_1" width="100%" cellspacing="0" cellpadding="0" border="0" data-title="" class="kqmb extendable">
                <tbody>
                    <tr class="madb">
                        <td colspan="12" class="">Ký hiệu trúng ĐB:
                            @foreach($lotData["MaDb"] as $item)
                            <b>{{$item}}</b>
                            @if(!$loop->last)
                            <span>-</span>
                            @endif
                            @endforeach
                        </td>
                    </tr>
                    <tr class="db">
                        <td class="txt-giai">Đặc biệt</td>
                        <td colspan="12" class="number"><b>{{$lotData["DB"][0]}}</b></td>
                    </tr>
                    <tr class="bg_f6">
                        <td class="txt-giai">Giải nhất</td>
                        <td colspan="12" class="number"><b>{{$lotData["1"][0]}}</b></td>
                    </tr>
                    <tr>
                        <td class="txt-giai">Giải nhì</td>
                        <td colspan="6" class="number"><b>{{$lotData["2"][0]}}</b></td>
                        <td colspan="6" class="number"><b>{{$lotData["2"][1]}}</b></td>
                    </tr>
                    <tr class="giai3 bg_ef">
                        <td class="txt-giai" rowspan="2">Giải ba</td>
                        <td class="number" colspan="4"><b>{{$lotData["3"][0]}}</b></td>
                        <td class="number" colspan="4"><b>{{$lotData["3"][1]}}</b></td>
                        <td class="number" colspan="4"><b>{{$lotData["3"][2]}}</b></td>
                    </tr>
                    <tr class="bg_ef">
                        <td class="number" colspan="4"><b>{{$lotData["3"][3]}}</b></td>
                        <td class="number" colspan="4"><b>{{$lotData["3"][4]}}</b></td>
                        <td class="number" colspan="4"><b>{{$lotData["3"][5]}}</b></td>
                    </tr>
                    <tr>
                        <td class="txt-giai">Giải tư</td>
                        <td colspan="3" class="number"><b>{{$lotData["4"][0]}}</b></td>
                        <td colspan="3" class="number"><b>{{$lotData["4"][1]}}</b></td>
                        <td colspan="3" class="number"><b>{{$lotData["4"][2]}}</b></td>
                        <td colspan="3" class="number"><b>{{$lotData["4"][3]}}</b></td>
                    </tr>
                    <tr class="giai5 bg_ef">
                        <td class="txt-giai" rowspan="2">Giải năm</td>
                        <td class="number" colspan="4"><b>{{$lotData["5"][0]}}</b></td>
                        <td class="number" colspan="4"><b>{{$lotData["5"][1]}}</b></td>
                        <td class="number" colspan="4"><b>{{$lotData["5"][2]}}</b></td>
                    </tr>
                    <tr class="bg_ef">
                        <td class="number" colspan="4"><b>{{$lotData["5"][3]}}</b></td>
                        <td class="number" colspan="4"><b>{{$lotData["5"][4]}}</b></td>
                        <td class="number" colspan="4"><b>{{$lotData["5"][5]}}</b></td>
                    </tr>
                    <tr>
                        <td class="txt-giai">Giải sáu</td>
                        <td colspan="4" class="number"><b>{{$lotData["6"][0]}}</b></td>
                        <td colspan="4" class="number"><b>{{$lotData["6"][1]}}</b></td>
                        <td colspan="4" class="number"><b>{{$lotData["6"][2]}}</b></td>
                    </tr>
                    <tr class="bg_ef">
                        <td class="txt-giai">Giải bảy</td>
                        <td colspan="3" class="number"><b>{{$lotData["7"][0]}}</b></td>
                        <td colspan="3" class="number"><b>{{$lotData["7"][1]}}</b></td>
                        <td colspan="3" class="number"><b>{{$lotData["7"][2]}}</b></td>
                        <td colspan="3" class="number"><b>{{$lotData["7"][3]}}</b></td>
                    </tr>
                </tbody>
            </table>
            <div class="control-panel">
                <form class="digits-form"><label class="radio" data-value="0"><input type="radio" name="showed-digits" value="0"><b></b><span></span></label><label class="radio" data-value="2"><input type="radio" name="showed-digits" value="2"><b></b><span></span></label><label class="radio" data-value="3"><input type="radio" name="showed-digits" value="3"><b></b><span></span></label>
                </form>
                <div class="buttons-wrapper"><span class="zoom-in-button"><i class="icon zoom-in-icon"></i><span></span></span>
                    <div class="subscription-button"><input id="load_kq_mb_0_chx" type="checkbox" class="ntf-sub cbx dspnone" sub-type-id="1"><label id="load_kq_mb_0_chx_lbl" sub-type-id="1" class="lbl1" for="load_kq_mb_0_chx"></label><span></span></div>
                </div>
            </div>
        </div>
        <div class="buttons-wrapper"></div>
        <div class="cp-sms txt-center">
            <p><span>Kết quả <strong>xổ số Miền bắc</strong> sớm nhất:</span>
                <strong class="clnote">XS MB</strong> gửi <strong class="clnote">6022 (1000đ)</strong>
            </p>
        </div>
        <div id="dd" class="col-firstlast">
            <table id="tblHead" class="firstlast-mb fl" border="0" cellpadding="0" cellspacing="0">
                <thead>
                    <tr class="header">
                        <th>Đầu</th>
                        <th>Đuôi</th>
                    </tr>
                </thead>
                <tbody>
                    @for($idx = 0; $idx < count($dau); $idx++) <tr>
                        <td style="color:#e80000">{{$idx}}</td>
                        <td>{{implode(",",$dau[$idx])}}</td>
                        </tr>
                        @endfor
                </tbody>
            </table>
            <table id="tblTail" cellspacing="0" cellpadding="0" border="0" class="firstlast-mb fr">
                <thead>
                    <tr class="header">
                        <th>Đầu</th>
                        <th>Đuôi</th>
                    </tr>
                </thead>
                <tbody>
                    @for($idx = 0; $idx < count($duoi); $idx++) <tr>
                        <td>{{implode(",", $duoi[$idx])}}</td>
                        <td style="color:#e80000">{{$idx}}</td>
                        </tr>
                        @endfor
                </tbody>
            </table>
        </div>
        <div class="clearfix"></div>
        <div class="bg_brown clearfix"><a rel="nofollow" class="conect_out " title="In vé dò" href="https://xoso.me/in-ve-do.html">In vé dò</a></div>
    </div>

    <div class="see-more">
        <div class="bold see-more-title">⇒ Ngoài ra bạn có thể xem thêm:</div>
        <ul class="list-html-link">
            <li>Xem trực tiếp <a href="https://xoso.me/xsmb-sxmb-xstd-xshn-kqxsmb-ket-qua-xo-so-mien-bac.html" title="xổ số miền Bắc">xổ số miền Bắc</a></li>
            <li>Xem thống kê <a href="https://xoso.me/soi-cau-bach-thu-lo-to-xsmb-hom-nay.html" title="cầu bạch thủ miền Bắc" rel="nofollow">cầu bạch thủ miền Bắc</a>
            </li>
            <li>Xem thống kê <a href="https://xoso.me/xsmb-30-ngay-so-ket-qua-xo-so-kien-thiet-mien-bac.html" title="XSMB 30 ngày" rel="nofollow">XSMB 30 ngày</a></li>
        </ul>
    </div>
</div>