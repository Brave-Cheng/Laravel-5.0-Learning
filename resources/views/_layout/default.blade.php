<!DOCTYPE html>
<html lang="zh-CN">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Laravel 5.0 </title>
        <link href="{{ asset('/css/app.css') }}" rel="stylesheet">
        <link href='http://fonts.useso.com/css?family=Roboto:400,300' rel='stylesheet' type='text/css'>

        <link rel="stylesheet" type="text/css" href="{{ asset('/simditor/styles/simditor.css') }} " />

        <script type="text/javascript" src="{{ asset('/simditor/scripts/jquery.min.js') }}"></script>
        <script type="text/javascript" src="{{ asset('/simditor/scripts/module.js') }}"></script>
        <script type="text/javascript" src="{{ asset('/simditor/scripts/hotkeys.js') }}"></script>
        <script type="text/javascript" src="{{ asset('/simditor/scripts/uploader.js') }}"></script>
        <script type="text/javascript" src="{{ asset('/simditor/scripts/simditor.js') }}"></script>

    </head>
    <body>
        <div class="container" style="margin-top: 20px;">
            @yield('content')
            <div id="footer" style="text-align:center; border-top:dashed 3px #eee; margin:50px 0; padding:20px;">
                ©2015 <a href="http://www.chenghuiyong.com" class="">Brave - Cheng</a>
            </div>
        </div>
    </body>
</html>