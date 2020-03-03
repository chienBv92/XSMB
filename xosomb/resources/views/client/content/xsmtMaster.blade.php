<?php
$cntProvinceRoll = count($response_data);
$rollDate = Carbon\Carbon::createFromTimestamp(round($response_data[0]["data"]["resultDate"] / 1000), '+07:00');
$shortName = 'XS' . $provinceInfo['provinceCode'];

if($cntProvinceRoll == 2){
    $classColWith = "coltwocity";
}
else{
    $classColWith = "colthreecity";
}
?>

<div class="box">
    <h2 class="title-bor clearfix"><strong><a class="title-a" href="{{$provinceInfo['metaTitle']}}" title="{{$shortName}}">{{$shortName}}</a> » <a class="title-a" href="{!! Request::segment(1) !!}" title="{{$shortName}}">
                {{$shortName}}</a> » <a class="title-a" href="{!! Request::segment(1) !!}?rollDate={{$rollDate->format('yy-m-d')}}" title="{{$shortName.' '.$rollDate->format('yy-m-d')}}">{{$provinceInfo['provinceName'].' '.$rollDate->format('yy-m-d')}}</a>
        </strong></h2>

    <div id="load_kq_mn_0">
        <div id="kq" class="three-city" data-region="3">
            <table class="{{$classColWith}} colgiai extendable" width="100%" cellspacing="0" cellpadding="0" border="0" data-title="" class="kqmb extendable">
                <tbody>
                    <tr class="gr-yellow">
                        <th class="first"></th>
                        @for($i = 0; $i < $cntProvinceRoll; $i++) 
                            <th><a href="{{$response_data[$i]['meta_title']}}" title="Xổ số {{$response_data[$i]['data']['provinceName']}}"><b class="underline">{{$response_data[$i]['data']['provinceName']}}</b></a><br><span class="s12">Mã: {{$response_data[$i]['data']['provinceCode']}}</span></th>
                            @endfor
                    </tr>
                    <tr class="g8">
                        <td>G8</td>
                        @for($i = 0; $i < $cntProvinceRoll; $i++) <td>
                            <div>@if($response_data[$i]['data']['lotData'][8][0] !== "") {{$response_data[$i]['data']['lotData'][8][0]}} @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</div>
                            </td>
                            @endfor
                    </tr>
                    <tr>
                        <td>G7</td>
                        @for($i = 0; $i < $cntProvinceRoll; $i++) <td>
                            <div>@if($response_data[$i]['data']['lotData'][7][0] !== "") {{$response_data[$i]['data']['lotData'][7][0]}} @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</div>
                            </td>
                            @endfor
                    </tr>
                    <tr>
                        <td>G6</td>
                        @for($i = 0; $i < $cntProvinceRoll; $i++) <td>
                            <div>@if($response_data[$i]['data']['lotData'][6][0] !== "") {{$response_data[$i]['data']['lotData'][6][0]}} @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</div>
                            <div>@if($response_data[$i]['data']['lotData'][6][1] !== "") {{$response_data[$i]['data']['lotData'][6][1]}} @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</div>
                            <div>@if($response_data[$i]['data']['lotData'][6][2] !== "") {{$response_data[$i]['data']['lotData'][6][2]}} @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</div>
                            </td>
                            @endfor
                    </tr>
                    <tr>
                        <td>G5</td>
                        @for($i = 0; $i < $cntProvinceRoll; $i++) <td>
                            <div>@if($response_data[$i]['data']['lotData'][5][0] !== "") {{$response_data[$i]['data']['lotData'][5][0]}} @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</div>
                            </td>
                            @endfor
                    </tr>
                    <tr>
                        <td>G4</td>
                        @for($i = 0; $i < $cntProvinceRoll; $i++) <td>
                            <div>@if($response_data[$i]['data']['lotData'][4][0] !== "") {{$response_data[$i]['data']['lotData'][4][0]}} @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</div>
                            <div>@if($response_data[$i]['data']['lotData'][4][1] !== "") {{$response_data[$i]['data']['lotData'][4][1]}} @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</div>
                            <div>@if($response_data[$i]['data']['lotData'][4][2] !== "") {{$response_data[$i]['data']['lotData'][4][2]}} @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</div>
                            <div>@if($response_data[$i]['data']['lotData'][4][3] !== "") {{$response_data[$i]['data']['lotData'][4][3]}} @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</div>
                            <div>@if($response_data[$i]['data']['lotData'][4][4] !== "") {{$response_data[$i]['data']['lotData'][4][4]}} @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</div>
                            <div>@if($response_data[$i]['data']['lotData'][4][5] !== "") {{$response_data[$i]['data']['lotData'][4][5]}} @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</div>
                            <div>@if($response_data[$i]['data']['lotData'][4][6] !== "") {{$response_data[$i]['data']['lotData'][4][6]}} @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</div>
                            </td>
                            @endfor
                    </tr>
                    <tr>
                        <td>G3</td>
                        @for($i = 0; $i < $cntProvinceRoll; $i++) <td>
                            <div>@if($response_data[$i]['data']['lotData'][3][0] !== "") {{$response_data[$i]['data']['lotData'][3][0]}} @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</div>
                            <div>@if($response_data[$i]['data']['lotData'][3][1] !== "") {{$response_data[$i]['data']['lotData'][3][1]}} @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</div>
                            </td>
                            @endfor
                    </tr>
                    <tr>
                        <td>G2</td>
                        @for($i = 0; $i < $cntProvinceRoll; $i++) <td>
                            <div>@if($response_data[$i]['data']['lotData'][2][0] !== "") {{$response_data[$i]['data']['lotData'][2][0]}} @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</div>
                            </td>
                            @endfor
                    </tr>
                    <tr>
                        <td>G1</td>
                        @for($i = 0; $i < $cntProvinceRoll; $i++) <td>
                            <div>@if($response_data[$i]['data']['lotData'][1][0] !== "") {{$response_data[$i]['data']['lotData'][1][0]}} @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</div>
                            </td>
                            @endfor
                    </tr>
                    <tr class="gdb">
                        <td>ĐB</td>
                        @for($i = 0; $i < $cntProvinceRoll; $i++) <td>
                            <div>@if($response_data[$i]['data']['lotData']['DB'][0] !== "") {{$response_data[$i]['data']['lotData']['DB'][0]}} @else <img src="/images/loader-red.gif" width="15" height="15" alt="">@endif</div>
                            </td>
                            @endfor
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
        <div id="dd" class="col-firstlast colthreecity colgiai">
            <table class="firstlast-mn" border="0" width="100%" cellpadding="0" cellspacing="0">
                <tbody>
                    <tr class="header">
                        <th width="10%" class="first">Đầu</th>
                        @for($i = 0; $i < $cntProvinceRoll; $i++) 
                            <th>{{$response_data[$i]['data']['provinceName']}}</th>
                            @endfor
                    </tr>
                    @for($row = 0; $row < 10; $row++)
                    <tr>
                        <td><b class="clnote">{{$row}}</b></td>
                        @for($i = 0; $i < $cntProvinceRoll; $i++) 
                        <td>{{implode(',', $response_data[$i]['data']['dau'][$row])}}</td>
                            @endfor
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