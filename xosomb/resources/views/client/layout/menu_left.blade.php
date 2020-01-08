<div class="col-center">
    <!--    <div class="box">-->

        <div class="conten-right bullet">

            <div class="title-r">
                @if($provinceMB[0]->parent_id == 0)
                    <a title="{{$provinceMB[0]->provinceName}}"
                       href="{{route('xosolink', $provinceMB[0]->meta_title)}}">{{$provinceMB[0]->provinceName}}</a>
                @endif
            </div>
            <ul>
                @foreach($provinceMB as $province)
                @if($province->parent_id != 0)
                    <li>
                        <a title="{{$province->provinceName}}"
                           href="{{route('xosolink', $province->meta_title)}}">{{$province->provinceName}}
                        </a>&nbsp;&nbsp;
                        <img
                            src="./XSMT thứ 7- SXMT thứ 7 - XSMT t7 - Xổ số miền Trung thứ 7 hàng tuần_files/waiting.gif"
                            width="30" height="10" alt="">
                    </li>
                    @endif
                @endforeach
            </ul>

        </div>

<!--</div>-->
</div>
