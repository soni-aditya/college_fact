{{--<html>--}}

{{--<head>--}}
    {{--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">--}}
    {{--<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>--}}
    {{--<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>--}}
    {{--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>--}}



        {{--<style>--}}
            {{--body{--}}
                {{--background: #ffffff !important;--}}
            {{--}--}}
            {{--.side-nav{--}}
                {{--background: #eeeeee !important;--}}

            {{--}--}}
            {{--.navbar{--}}
                {{--background: #9c27b0 !important;--}}
            {{--}--}}
            {{--.share{--}}
                {{--background: #eeeeee !important;--}}
            {{--}--}}
        {{--</style>--}}

{{--</head>--}}

{{--<body>--}}
{{--<!-- Just an image -->--}}
{{--<nav class="navbar navbar bg-dark .text-secondary">--}}
    {{--<a class="navbar-brand" href="#">--}}
        {{--<img src="/college_fact/public/img/logoVectorWhite.svg" width="30" height="30" alt="">--}}
    {{--</a>--}}
{{--</nav>--}}
{{--<div class="row">--}}

    {{--<div class="share col-sm-12 col-md-10 offset-md-1">--}}
        {{--<br>--}}
        {{--<h4 class="text-secondary">Share on Timeline</h4>--}}
        {{--<hr>--}}

        {{--{!! Form::open(['url'=>'store',   'method'=>'post' ,'file'=>true]) !!}--}}
            {{--<div class="form-group">--}}
                {{--<textarea class="form-control" name="content" class="content" placeholder="Share on Timeline... " id="exampleFormControlTextarea1" rows="3"></textarea>--}}
            {{--</div>--}}
            {{--<div class="form-group row">--}}
                {{--<label for="exampleFormControlFile1" class="col-sm-2">Choose Photo</label>--}}
                {{--{{ Form::file('banner',['class' => 'form-control-file col-sm-8', 'id'=>'exampleFormControlFile1' ,'name'=>'banner']) }}--}}
            {{--</div>--}}
            {{--<button type="submit" class="btn btn-outline-success " type="submit">Share</button>--}}
        {{--{!! Form::close() !!}--}}
    {{--</div>--}}

{{--</div>--}}
{{--</body>--}}
{{--</html>--}}






















@extends('app')

@section('extra_css')
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style>
        .input-field input:focus + label {
            color: #ce93d8 !important;
        }
        /* label underline focus color */
        .row .input-field input:focus {
            border-bottom: 1px solid #ce93d8 !important;
            box-shadow: 0 1px 0 0 #ce93d8 !important
        }
        body{
            background: #fff !important;
        }
    </style>
@stop


@section('content')
    {{--Nav bar--}}
    <header>
        <nav class="purple navbar-fixed">
            <div class="nav-wrapper ">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="brand-logo">
                    <img src="/college_fact/public/img/logoVectorWhite.svg" alt="" width="25" height="25">&nbsp;College Faction
                </span>


                <ul id="nav-mobile" class="right">
                    <li>Welcome {{ Auth::user()->name }} ! &nbsp;</li>
                    <li class="red"><a href="{{ route('logout') }}" class="tooltipped" data-position="left" data-tooltip="Log Yourself Out" onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                            <i class="material-icons ">power_settings_new</i>
                        </a></li>
                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                        @csrf
                    </form>
                </ul>
            </div>
        </nav>
    </header>

    {{--Content--}}
    <main>
        <div class="cotainer">
            <div class="row">
                    <div class="row col m4 s12 left grey lighten-2">
                        <div class="col s11">
                            <br>
                            <a href="#" class="purple-text">
                                {{--<img class="circle" src="/college_fact/public/img/logoVector.svg" height="50" width="50">--}}
                                <div>
                                    <img class="circle" src="{{ $banner }}" height="85" width="85">
                                    {{--<i class="material-icons large">account_circle</i>--}}
                                    <h5>{{Auth::user()->email }}</h5>
                                </div>
                            </a>
                            <div class="divider"></div>
                            <div>
                                <a class="btn-floating btn-large waves-effect waves-light grey right"><i class="material-icons">brightness_7</i></a>

                                <a class="btn-floating btn-large waves-effect waves-light amber accent-4"><i class="material-icons">chat</i></a>
                                <a class="btn-floating btn-large waves-effect waves-light red accent-4"><i class="material-icons">child_care</i></a>
                            </div>
                            <br><br>
                        </div>
                    </div>
                    <div class="row col m8 right grey lighten-5 s12">
                        {!! Form::open(['url'=>'store',   'method'=>'post' ,'file'=>true]) !!}
                        <div class="row">
                            <div class="input-field col s12">
                                <i class="material-icons prefix">edit</i>
                                <textarea id="content" name="content" class="materialize-textarea"></textarea>
                                <label for="content">Share on Timeline</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                    <div for="banner_id">
                                        <i class="material-icons prefix">aspect_ratio</i>
                                    </div>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    {{Form::file('banner_id')}}
                            </div>
                        </div>
                        <div class="row">
                            <div class="col input-field col s12 m2">
                                <button class="btn waves-effect waves-light green right" type="submit" name="action">
                                    POST
                                </button>
                            </div>
                        </div>
                        {!! Form::close() !!}
                    </div>
            </div>
            <div class="grid">

                <div class="row">
                    <div class="col s12 m8 offset-m2">


                            @if(isset($posts))
                                @foreach($posts as $post)
                                    <div class="card hoverable">
                                        <div class="grid">
                                            <div class="card-content Black-text row">
                                                <span class="card-title">{{ $post['sender_name']['name'] }}</span>
                                                <small>{{ $post['created_at']  }}</small>
                                                <div class="divider"></div>
                                                <br>
                                                <p>{{$post['content']}}</p>
                                            </div>
                                            <div class="card-action row">
                                                <a href="#" class="right">Like</a>
                                                <a href="#" class="right">Comment</a>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            @else
                                <center>No Posts Yet</center>
                                @endif



                    </div>
                </div>
            </div>
        </div>
    </main>
@stop

@section('extra_scripts')
    <script>
        $(document).ready(function(){

            $('.tooltipped').tooltip();
            $('.modal').modal();
            $('.sidenav').sidenav();

            $('select').attr("class", "browser-default");
            //

        });
    </script>
@stop


















































