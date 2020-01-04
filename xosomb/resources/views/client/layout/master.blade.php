<!DOCTYPE html>
<!-- saved from url=(0067)https://xoso.me/xsmt-thu-7-sxmt-ket-qua-xo-so-mien-trung-thu-7.html -->
<html itemscope="" itemtype="http://schema.org/WebPage" lang="vi">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta content="vi" http-equiv="content-language">
    <title>XSMT thứ 7- SXMT thứ 7 - XSMT t7 - Xổ số miền Trung thứ 7 hàng tuần</title>
    <meta name="description"
          content="XSMT thứ 7 - XSMT t7 - SXMT t7 - KQXSMT thứ 7 - Kết quả xổ số miền Trung thứ 7 hàng tuần mở thưởng trực tiếp vào lúc 17h15p - XSMTRUNG thứ 7. Xem xổ số kiến thiết miền Trung thứ 7 tuần rồi và các tuần trước nhanh và chính xác nhất">
    <meta name="keywords"
          content="KQXSMT thu 7, XSMT thu 7, xsmt t7,Xổ số miền Trung thứ 7,xo so mien trung thu 7,xsmt thu 7 hang tuan,xsmt thứ 7 hàng tuần,Kết quả xổ số miền Trung thứ 7, Ket qua xo so mien Trung thu 7">
    <meta name="AUTHOR" content="xoso.me">
    <meta name="COPYRIGHT" content="Copyright (C) 2011 xoso.me">
    <link rel="index" title="Kết quả xổ số" href="https://xoso.me/">
    <link rel="image_src" type="image/jpeg" href="https://images.xoso.me/news_xosome/2015/0825/xsmt-thu-7.png">
    <link rel="alternate" media="handheld" href="https://xoso.me/xsmt-thu-7-sxmt-ket-qua-xo-so-mien-trung-thu-7.html">
    <link rel="shortcut icon" href="https://xoso.me/favicon.ico">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, maximum-scale=2,minimum-scale=1,shrink-to-fit=no">
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">
</head>

<body>
<div id="fb-root"></div>
<div id="menu-mobile-backdrop"></div>
<div class="wrapper">

    @include('client.layout.header')

    @include('client.layout.menu')

    <div class="linkway">
        <div class="main">
            <div class="breadcrumb">
            </div>
        </div>
    </div>

    <div class="content">
        <div class="main clearfix">

            @yield('content')

            @include('client.layout.menu_left')

            @include('client.layout.menu_right')
        </div>
    </div>

    @include('client.layout.footer')
</div>
</body>

</html>

<script>
    var navbar = document.getElementById("nav");
    var sticky = navbar.offsetTop;
    window.addEventListener('scroll', function (event) {
        if (window.pageYOffset >= sticky) {
            navbar.classList.add("sticky");
        } else {
            navbar.classList.remove("sticky");
        }
    });
</script>
