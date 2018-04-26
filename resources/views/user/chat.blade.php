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
        .friends{
            position: fixed;
            height:100%;
            left: 0 !important;
            overflow-y: scroll;
        }
        .chats{
            overflow-y: scroll;
            position: fixed;
            height:100%;
            right: 0 !important;
        }
        .card-content{
            padding-top: 0 !important;
            padding-bottom: 0 !important;
        }
        .chat-form{
            position: fixed;
            bottom: 0 !important;
            width: 65% !important;
        }
        .message-button{
            width: 50% !important;
        }
        .message-input{
            width: 63% !important;
        }
        .user_one{
            border-radius: 25px !important;
            padding-right: 5px !important;
            padding-left: 5px !important;
        }
        .user_two{
            border-radius: 25px !important;
            padding-right: 5px !important;
            padding-left: 5px !important;
        }
        /*.user_chats{*/
        /*overflow-y: scroll;*/
        /*overflow-x: none;*/
        /*width: 100% !important;*/
        /*height: 100% !important;*/
        /*}*/
        .msg{
            margin-bottom: 5px !important;
        }
        h6{
            border-radius: 50px !important;
            padding: 15px !important;
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

    {{--Content--}}
    <div class="container ">
        <div class="row">
            <div class="col  s4">
                <br>
                <div class="collection">
                    <a href="#!" class="collection-item center grey lighten-2 black-text" id="group-chat">
                        <h5>Get Together</h5>
                    </a>
                </div>
                <div class="collection">
                    @foreach($members as $member)
                        @if($member->id != (Auth::user())->id)
                            <a href="#!" class="collection-item member" id="{{$member->id}}" name="{{$member->name}}">
                                <h5>
                                    <img src="/college_fact/public/img/user.jpeg" height="15" width="15" class="circle">
                                    {{ $member->name }}
                                </h5>
                            </a>
                        @endif
                    @endforeach

                </div>
            </div>
            <div class="col s8">
                <br>
                <h6>
                    <img src="/college_fact/public/img/user.jpeg" height="15" width="15" class="circle">
                    <span id="member-name"></span>
                </h6>
                <div class="divider"></div>
                <div class=" user_chats messages" id="conversation">
                    {{--<div class="row msg">--}}
                    {{--<div class=" col s6 left ">--}}
                        {{--<h6 class="grey left">--}}
                            {{--<span>--}}
                                {{--<strong>Him</strong>--}}
                                {{--&nbsp;&nbsp;&nbsp;--}}
                                {{--<small>Date </small>--}}
                            {{--</span>--}}
                            {{--<div class="divider black"></div>--}}
                            {{--<br>--}}
                            {{--Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five c</h6>--}}
                    {{--</div>--}}
                    {{--</div>--}}
                    {{--<div class="row msg">--}}
                    {{--<div class="col s6 right">--}}
                    {{--<h6 class=" blue lighten-4 right">HelLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five clo</h6>--}}
                    {{--</div>--}}
                    {{--</div>--}}
                </div>
                <br><br><br>
                <div class="chat-form s12 white">
                    {!! Form::open() !!}
                    <div class="message-input">
                        <div class="input-field col s11">
                            <input id="message" type="text" class="validate" id="message-written">
                            <label for="message">Write Something..</label>
                        </div>
                        <div class="input-field col s1">
                            <button class="btn waves-effect waves-light green" type="button" name="action" id="send">
                                send <i class="material-icons right">send</i>
                            </button>
                        </div>
                    </div>
                    {!! Form::close() !!}
                </div>

            </div>
        </div>
    </div>
@stop

@section('extra_scripts')
    <script>
        $(document).ready(function(){
            $('.tooltipped').tooltip();
            var user=null;
            var name=null;
            var user_curr=null;
            var conversation_id = null;

            var current_chat = null;

            /*
            This function gets the previous conversation between user and the friends in circle
             */
            $('.member').click(function () {
                user = $(this).attr('id');
                name = $(this).attr('name');

                current_chat = user;

                $('#member-name').text(name);

                $.post("/college_fact/public/chat-start",{ user_one:{{(Auth::user())->id}},user_two:user,_token: '{{csrf_token()}}' }, function(data){
                    var info = data;
                    user_curr = {{(Auth::user())->id}};
                    var conv = '';
                    conversation_id = data['conv_id'];
                    if(info['size'] >0){
                        for(var i=0; i< info['size']; i++){
                            if(info[i]['user_from'] === user_curr){
                                conv = conv+ '<div class="row msg">' +
                                    '<div class=" col s6 right ">' +
                                    '<h6 class="blue lighten-4 right">'+info[i]['message']+'</h6>' +
                                    '</div>' +
                                    '</div>';
                            }
                            else{
                                conv = conv+ '<div class="row msg">' +
                                    '<div class=" col s6 left ">' +
                                    '<h6 class="grey left">'+info[i]['message']+'</h6>' +
                                    '</div>' +
                                    '</div>';
                            }
                        }
                    }
                    else{
                        conv = '<br><center><strong>No Messages Yet</strong></center>';
                    }
                    $('#conversation').html(conv);
                    $("html, body").animate({ scrollTop: $(document).height() }, 1000);
                });
            });



            $('#send').click(function () {
                // alert($('input:text').val()+user+user_curr+'  '+conversation_id);
                var msg= $('input:text').val();
                $.post("/college_fact/public/chat-create",{ user_one:{{(Auth::user())->id}},user_two:user,conv:conversation_id,msg:msg,_token: '{{csrf_token()}}' }, function(data){
                    if(data['success'] === 1){
                        $.post("/college_fact/public/chat-start",{ user_one:{{(Auth::user())->id}},user_two:user,_token: '{{csrf_token()}}' }, function(data){
                            var info = data;
                            user_curr = {{(Auth::user())->id}};
                            var conv = '';
                            conversation_id = data['conv_id'];
                            if(info['size'] >0){
                                for(var i=0; i< info['size']; i++){
                                    if(info[i]['user_from'] === user_curr){
                                        conv = conv+ '<div class="row msg">' +
                                            '<div class=" col s6 right ">' +
                                            '<h6 class="blue lighten-4 right">'+info[i]['message']+'</h6>' +
                                            '</div>' +
                                            '</div>';
                                    }
                                    else{
                                        conv = conv+ '<div class="row msg">' +
                                            '<div class=" col s6 left ">' +
                                            '<h6 class="grey left">'+info[i]['message']+'</h6>' +
                                            '</div>' +
                                            '</div>';
                                    }
                                }
                            }
                            else{
                                conv = '<br><center><strong>No Messages Yet</strong></center>';
                            }
                            $('#conversation').html(conv);

                            $("html, body").animate({ scrollTop: $(document).height() }, 1000);
                        });


                        $('input:text').val('');

                    }
                    else{
                        alert('Error sending message, please try again');
                    }
                });
            });






            
            $('#group-chat').click(function () {

            });





            setInterval(function(){
                //get ajax call
                // console.log('New Call');
                if(current_chat === null)
                {

                }
                else
                {
                    $.post("/college_fact/public/chat-start",{ user_one:{{(Auth::user())->id}},user_two:current_chat,_token: '{{csrf_token()}}' }, function(data){
                        var info = data;
                        user_curr = {{(Auth::user())->id}};
                        var conv = '';
                        conversation_id = data['conv_id'];
                        if(info['size'] >0){
                            for(var i=0; i< info['size']; i++){
                                if(info[i]['user_from'] === user_curr){
                                    conv = conv+ '<div class="row msg">' +
                                        '<div class=" col s6 right ">' +
                                        '<h6 class="blue lighten-4 right">'+info[i]['message']+'</h6>' +
                                        '</div>' +
                                        '</div>';
                                }
                                else{
                                    conv = conv+ '<div class="row msg">' +
                                        '<div class=" col s6 left ">' +
                                        '<h6 class="grey left">'+info[i]['message']+'</h6>' +
                                        '</div>' +
                                        '</div>';
                                }
                            }
                        }
                        else{
                            conv = '<br><center><strong>No Messages Yet</strong></center>';
                        }
                        $('#conversation').html(conv);
                        $("html, body").animate({ scrollTop: $(document).height() }, 1000);
                    });
                }
            }, 2000);
        });
    </script>
@stop
