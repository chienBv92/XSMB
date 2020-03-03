<?php
$lotData = $response_data["lotData"];
$dau = $response_data["dau"];
$duoi = $response_data["duoi"];
$rollDate = Carbon\Carbon::createFromTimestamp(round($response_data["resultDate"] / 1000), '+07:00');
$shortName = 'XS' . $provinceInfo['provinceCode'];

if ($provinceInfo['parentProvinceCode'] === "")
    $shortParentName = $shortName;
else
    $shortParentName = 'XS' . $provinceInfo['parentProvinceCode'];
?>
<div class="box">
    <h2 class="title-bor clearfix"><strong><a class="title-a" href="{{$provinceInfo['parentMetaTitle']}}" title="{{$shortParentName}}">{{$shortParentName}}</a> » <a class="title-a" href="{!! Request::segment(1) !!}" title="{{$shortName}}">
                {{$shortName}}</a> » <a class="title-a" href="{!! Request::segment(1) !!}?rollDate={{$rollDate->format('yy-m-d')}}" title="{{$shortName.' '.$rollDate->format('yy-m-d')}}">{{$provinceInfo['provinceName'].' '.$rollDate->format('yy-m-d')}}</a>
        </strong></h2>

    <div id="load_kq_mb_0">
        <div id="kq" class="one-city" data-region="1">
            <table id="kqxs_1" width="100%" cellspacing="0" cellpadding="0" border="0" data-title="" class="kqmb extendable">
                <tbody>
                    <tr class="giai8">
                        <td class="txt-giai">Giải tám</td>
                        <td colspan="12" class="number">@if($lotData["8"][0] !== "") <b>{{$lotData["8"][0]}}</b> @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</td>
                    </tr>
                    <tr class="bg_ef">
                        <td class="txt-giai">Giải bảy</td>
                        <td colspan="12" class="number">@if($lotData["7"][0] !== "") <b>{{$lotData["7"][0]}}</b> @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</td>
                    </tr>
                    <tr>
                        <td class="txt-giai">Giải sáu</td>
                        <td colspan="4" class="number">@if($lotData["6"][0] !== "") <b>{{$lotData["6"][0]}}</b> @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</td>
                        <td colspan="4" class="number">@if($lotData["6"][1] !== "") <b>{{$lotData["6"][1]}}</b> @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</td>
                        <td colspan="4" class="number">@if($lotData["6"][2] !== "") <b>{{$lotData["6"][2]}}</b> @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</td>
                    </tr>
                    <tr class="bg_ef">
                        <td class="txt-giai">Giải năm</td>
                        <td colspan="12" class="number">@if($lotData["5"][0] !== "") <b>{{$lotData["5"][0]}}</b> @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</td>
                    </tr>
                    <tr class="giai4">
                        <td rowspan="2" class="txt-giai">Giải bốn</td>
                        <td colspan="3" class="number">@if($lotData["4"][0] !== "") <b>{{$lotData["4"][0]}}</b> @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</td>
                        <td colspan="3" class="number">@if($lotData["4"][1] !== "") <b>{{$lotData["4"][1]}}</b> @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</td>
                        <td colspan="3" class="number">@if($lotData["4"][2] !== "") <b>{{$lotData["4"][2]}}</b> @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</td>
                        <td colspan="3" class="number">@if($lotData["4"][3] !== "") <b>{{$lotData["4"][3]}}</b> @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</td>
                    </tr>
                    <tr>
                        <td colspan="4" class="number">@if($lotData["4"][4] !== "") <b>{{$lotData["4"][4]}}</b> @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</td>
                        <td colspan="4" class="number">@if($lotData["4"][5] !== "") <b>{{$lotData["4"][5]}}</b> @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</td>
                        <td colspan="4" class="number">@if($lotData["4"][6] !== "") <b>{{$lotData["4"][6]}}</b> @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</td>
                    </tr>
                    <tr class="bg_ef">
                        <td class="txt-giai">Giải ba</td>
                        <td colspan="6" class="number">@if($lotData["3"][0] !== "") <b>{{$lotData["3"][0]}}</b> @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</td>
                        <td colspan="6" class="number">@if($lotData["3"][1] !== "") <b>{{$lotData["3"][1]}}</b> @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</td>
                    </tr>
                    <tr>
                        <td class="txt-giai">Giải nhì</td>
                        <td colspan="12" class="number">@if($lotData["2"][0] !== "") <b>{{$lotData["2"][0]}}</b> @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</td>
                    </tr>
                    <tr class="bg_ef">
                        <td class="txt-giai">Giải nhất</td>
                        <td colspan="12" class="number">@if($lotData["1"][0] !== "") <b>{{$lotData["1"][0]}}</b> @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</td>
                    </tr>
                    <tr class="db">
                        <td class="txt-giai">Đặc biệt</td>
                        <td colspan="12" class="number">@if($lotData["DB"][0] !== "") <b>{{$lotData["DB"][0]}}</b> @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif/td>
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