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
            background: none !important;
            background-color: lightgray !important;
        }
        .make_post{
            border-radius: 50px !important;
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
                    <li class="green"><a href="home" class="tooltipped" data-position="left" data-tooltip="Go Home!">
                            <i class="material-icons ">account_balance</i>
                        </a></li>
                    <li class="orange darken-4"><a href="events" class="tooltipped" data-position="left" data-tooltip="Events !">
                            <i class="material-icons ">bubble_chart</i>
                        </a></li>
                    <li class="light-blue darken-2"><a href="chat" class="tooltipped" data-position="left" data-tooltip="Talk with everyone!">
                            <i class="material-icons ">chat</i>
                        </a></li>
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

    <div class="container-fluid">
        <br>
        <div class="row">
            <div class="col s3 offset-s1 grey lighten-3 make_post">
                <h5 class="center">Say Something !</h5>
                <div class="divider"></div>
                {!! Form::open(['url'=>'store','method'=>'post' ,'files'=>true]) !!}
                <div class="row">
                    <div class="input-field col s12">
                        <i class="material-icons prefix">edit</i>
                        <textarea id="content" name="content" class="materialize-textarea"></textarea>
                        <label for="content">Share on Timeline</label>
                    </div>
                    <div class="input-field col s12 right">
                        <span for="file-up" class="grey-text lighten-3">Upload an Image:</span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        {{Form::file('banner_id',['id'=>'file-up'])}}
                    </div>
                </div>
                <div class="row left">
                    <div class="col input-field col s11 offset-s9">
                        <button class="btn waves-effect waves-light purple right" type="submit" name="action">
                            SHARE POST
                        </button>
                    </div>
                </div>
                {!! Form::close() !!}
            </div>
            <div class="col s7">
                <div class="card hoverable">

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
                                        <div class="center">
                                            <img src="{{ $post['banner']['src'] }}" class="center" alt="" width="600" height="350"/>
                                        </div>
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
@stop

@section('extra_scripts')
    <script>
        $(document).ready(function(){

            $('.tooltipped').tooltip();
            $('.modal').modal();
            $('.sidenav').sidenav();

            $('select').attr("class", "browser-default");
        });
    </script>
@stop