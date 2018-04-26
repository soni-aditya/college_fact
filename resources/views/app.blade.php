<!doctype html>
<html>
<head>
    <title>College Faction</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css">

    <style>
            body{
                background-color: #ffffff !important;
                background: url("/college_fact/public/img/bg.png") no-repeat !important;

            }
    </style>
    @yield('extra_css')

    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js"></script>


</head>
<body>
<div>
    @if(Session::has('flash_message'))
        <div class="green lighten-3 center">
            {{ Session::get('flash_message') }}
        </div>
        @endif
    @yield('content')

</div>
    {{--Scripts--}}



    <!-- Compiled and minified JavaScript -->

    @yield('extra_scripts')
</body>
</html>