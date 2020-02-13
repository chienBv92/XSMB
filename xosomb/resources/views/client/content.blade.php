<div class="col-l">
    <div class="see-more">
        <ul class="list-html-link two-column">
            <li><a href="https://xoso.me/thong-ke-lo-gan-xo-so-mien-bac-xsmb.html" title="TK lô gan MB">TK
                    lô gan MB</a></li>
            <li><a href="https://xoso.me/thong-ke-giai-dac-biet-xo-so-mien-bac-xsmb.html" title="Thống kê XSMB">Thống kê XSMB</a></li>
            <li><a href="https://xoso.me/du-doan-ket-qua-xo-so-mien-bac-xsmb-c228.html" title="Dự đoán miền Bắc">Dự đoán miền Bắc</a></li>
            <li><a href="https://xoso.me/quay-thu-xsmb-quay-thu-xo-so-mien-bac.html" title="Quay thử miền Bắc">Quay thử miền Bắc</a></li>
        </ul>
    </div>
    <?php
    $paths = array_keys(config('constants.paths'));
    ?>
    @if(request()->is('/') || request()->is($paths[0].'*') || request()->is($paths[1].'*') || request()->is($paths[2].'*'))
    <ul class="tab-panel">
        <li class="active">
            <a href="{!! Request::segment(1) !!}">Miền
                bắc</a>
        </li>
        <?php
        $queryArray = parse_url(Request::getRequestUri());
        ?>
        <li class="{{ in_array('dOW=1',$queryArray) ? 'active' : '' }}">
            <a href="{!! Request::segment(1) !!}?dOW=1" title="Xsmb Thứ 2">Thứ
                2</a>
        </li>
        <li class="{{ in_array('dOW=2',$queryArray) ? 'active' : '' }}"><a href="{!! Request::segment(1) !!}?dOW=2" title="Xsmb Thứ 3">Thứ
                3</a>
        </li>
        <li class="{{ in_array('dOW=3',$queryArray) ? 'active' : '' }}"><a href="{!! Request::segment(1) !!}?dOW=3" title="Xsmb Thứ 4">Thứ
                4</a>
        </li>
        <li class="{{ in_array('dOW=4',$queryArray) ? 'active' : '' }}">
            <a href="{!! Request::segment(1) !!}?dOW=4" title="Xsmb Thứ 5">Thứ
                5</a>
        </li>
        <li class="{{ in_array('dOW=5',$queryArray) ? 'active' : '' }}"><a href="{!! Request::segment(1) !!}?dOW=5" title="Xsmb Thứ 6">Thứ
                6</a>
        </li>
        <li class="{{ in_array('dOW=6',$queryArray) ? 'active' : '' }}"><a href="{!! Request::segment(1) !!}?dOW=6" title="Xsmb Thứ 7">Thứ
                7</a>
        </li>
        <li class="{{ in_array('dOW=0',$queryArray) ? 'active' : '' }}"><a href="{!! Request::segment(1) !!}?dOW=0" title="Xsmb Chủ nhật">CN</a>
        </li>
    </ul>
    @endif
    <input type="hidden" id="decreaseDay" name="decreaseDay" value="">
    <div id="box_xs">

    </div>

    @if(Request::segment(1) === null || config('constants.paths')[Request::segment(1)] === 'XSMB')
    <button class="btn-see-more magb10" id="result-see-more" value="Xem thêm" data-page="2" data-province="mb">Xem thêm
    </button>
    @endif
    <div class="box box-html">
        {!!(html_entity_decode ($roll_Info_Html))!!}
    </div>
</div>

<script>
    $(document).ready(function() {
        var dayOfWeek = getURLParameter('dOW');
        var rollDate = getURLParameter('rollDate');

        getDataXSMBFromAPI(rollDate, dayOfWeek);
    });

    /** Get Data XSMB From API */
    function getDataXSMBFromAPI(beforeDay, dayOfWeek) {
        var _url = '';

        _url += '/' + $('#provinceId').val();

        if (dayOfWeek === undefined || dayOfWeek === null || dayOfWeek === '') {
            _url = '/getBox' + _url;
            if (beforeDay !== undefined)
                _url += '/' + beforeDay;
        } else {
            _url = '/getBoxByDOW' + _url + '/' + dayOfWeek;
            if (beforeDay !== undefined)
                _url += '/' + beforeDay;
        }

        if (window.location.pathname == "/")
            _url = '/ket-qua-xo-so-mien-bac' + _url;
        else
            _url = window.location.pathname + _url;

        $.ajax({
            type: 'GET',
            url: _url,
            data: null,
            success: function(res) {
                $("#box_xs").append(res.html);
                $("#decreaseDay").val(res.roll_day);
            },
            error: function(res) {
                alert(res.responseText);
                // alert("Something incorrect when render HTML");
            }
        });
    }

    $('#result-see-more').click(function() {
        var dayOfWeek = getURLParameter('dOW');
        var roll_Date = new Date($("#decreaseDay").val());
        roll_Date.setDate(roll_Date.getDate());
        $("#decreaseDay").val(formatDate(roll_Date), null);

        getDataXSMBFromAPI($("#decreaseDay").val(), dayOfWeek);
    })

    function getURLParameter(sParam) {
        var sPageURL = window.location.search.substring(1);
        var sURLVariables = sPageURL.split('&');
        for (var i = 0; i < sURLVariables.length; i++) {
            var sParameterName = sURLVariables[i].split('=');
            if (sParameterName[0] == sParam) {
                return sParameterName[1];
            }
        }
    }

    function formatDate(date) {
        var d = new Date(date),
            month = '' + (d.getMonth() + 1),
            day = '' + d.getDate(),
            year = d.getFullYear();

        if (month.length < 2) month = '0' + month;
        if (day.length < 2) day = '0' + day;

        return [year, month, day].join('-');
    }
</script>