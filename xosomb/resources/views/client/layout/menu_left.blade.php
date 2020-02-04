<div class="col-center">
    <!--    <div class="box">-->

    <?php
    $parent = $provinceMB->where('parent_id', 0);
    ?>
    @for($pos = 0; $pos < count($parent); $pos++) <div class="conten-right bullet">
        <div class="title-r">
            <a title="{{$parent[$pos]->provinceName}}" href="{{route('xosolink', $parent[$pos]->meta_title)}}">{{$parent[$pos]->provinceName}}</a>
        </div>
        <ul>
            @foreach($provinceMB->where('parent_id',$parent[$pos]->id) as $province)
            <li>
                <a title="{{$province->provinceName}}" href="{{route('xosolink', $province->meta_title)}}">{{$province->provinceName}}
                </a>&nbsp;&nbsp;
                <img src="./XSMT thứ 7- SXMT thứ 7 - XSMT t7 - Xổ số miền Trung thứ 7 hàng tuần_files/waiting.gif" width="30" height="10" alt="">
            </li>
            @endforeach
        </ul>
</div>
@endfor

<!--</div>-->
</div>