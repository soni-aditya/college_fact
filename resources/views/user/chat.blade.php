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
            width: 100% !important;
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
    </style>
@stop


@section('content')
    {{--Nav bar--}}
    <nav class="purple">
        <div class="nav-wrapper">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span class="brand-logo">
                    <img src="/college_fact/public/img/logoVectorWhite.svg" alt="" width="25" height="25">&nbsp;College Faction
                </span>


            <ul id="nav-mobile" class="right hide-on-med-and-down">
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

    {{--Content--}}

    <div class="row">
        <div class="col s3 friends">
            <div class="white center">
                <h5>Members</h5>
                <div class="divider"></div>
            </div>
            <div class="col s12">
                @foreach($members as $member)
                    @if($member->id != (Auth::user())->id)
                        <div class="card horizontal hoverable member" id="{{$member->id}}" name="{{$member->name}}">
                            <div class="card-image">
                                <img src="/college_fact/public/img/user.jpeg" height="60" width="60" class="circle">
                            </div>

                            <div class="card-content">
                                <h5>{{ $member->name }}</h5>
                            </div>
                            {{--</div>--}}
                        </div>
                    @endif
                @endforeach
            </div>
        </div>
        <div class="col s8 chats">
            <div class="white chat-top s12">
                <h4 id="member-name"> Username </h4>
                <div class="divider"></div>

            </div>
            <br>
            <div class="messages center s12" id="conversation">
                {{--No Messages yet--}}

                {{--<div class="user_two row right red lighten-2">--}}
                    {{--<h5>Aditya &nbsp;</h5>--}}
                {{--</div>--}}
                {{--<br><br><br>--}}
                {{--<div class="user_one row left green lighten-2">--}}
                    {{--<h5>&nbsp;Aditya</h5>--}}
                {{--</div>--}}
            </div>
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
@stop

@section('extra_scripts')
    <script>
        $(document).ready(function(){
            $('.tooltipped').tooltip();
            var user=null;
            var name=null;
            var user_curr=null;
            var conversation_id = null;




            /*
            This function gets the previous conversation between user and the friends in circle
             */
            $('.member').click(function () {
                user = $(this).attr('id');
                name = $(this).attr('name');


                $('#member-name').text(name);
                $.post("/college_fact/public/chat-start",{ user_one:{{(Auth::user())->id}},user_two:user,_token: '{{csrf_token()}}' }, function(data){
                    var info = data;
                    user_curr = {{(Auth::user())->id}};
                    var conv = '';
                    conversation_id = data['conv_id'];
                    if(info['size'] >0){
                        for(var i=0; i< info['size']; i++){
                            if(info[i]['user_from'] === user_curr){
                                conv = conv + '<div class="user_two row right red lighten-2" class="user-chat">' +
                                    '<h5>'+info[i]['message']+'&nbsp;</h5>' +
                                    '</div><br><br><br>';
                            }
                            else{
                                conv = conv +   '<div class="user_one row left green lighten-2" class="user-chat">' +
                                    '<h5>&nbsp;'+ info[i]['message']+'</h5>' +
                                    '</div><br><br><br>';
                            }
                        }
                    }
                    else{
                        conv = '<strong>No Messages Yet</strong>';
                    }
                    $('#conversation').html(conv);
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
                                        conv = conv + '<div class="user_two row right red lighten-2" class="user-chat">' +
                                            '<h5>'+info[i]['message']+'&nbsp;</h5>' +
                                            '</div><br><br><br>';
                                    }
                                    else{
                                        conv = conv +   '<div class="user_one row left green lighten-2" class="user-chat">' +
                                            '<h5>&nbsp;'+ info[i]['message']+'</h5>' +
                                            '</div><br><br><br>';
                                    }
                                }
                            }
                            else{
                                conv = '<strong>No Messages Yet</strong>';
                            }
                            $('#conversation').html(conv);
                        });


                        $('input:text').val('');







                    }
                    else{
                        alert('Error sending message, please try again');
                    }
                });
            });

            // setInterval(function(){
            //     //get ajax call
            //     // console.log('New Call');
            // }, 2000);
        });
    </script>
@stop
