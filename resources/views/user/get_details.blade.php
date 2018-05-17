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
        <div class="col s12 m6 offset-m3 offset-s0">
            <div class="card hoverable">
                <div class="card-content">
                    <span class="purple-text card-title">
                        User Details
                    </span>
                    <div class="divider"></div>


                    <div class="row">
                        {!! Form::open(['url'=>'get_initial_details',   'method'=>'post']) !!}

                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                <input type="text" class="datepicker" id="year_of_passing" name="year_of_passing" value="2018">
                                <label for="year_of_passing">Date of Passing</label>
                                </div>
                            </div>
                            <div class="row">
                                    <div class="input-field col s12">
                                        <div><label>Choose an Institution</label></div>
                                        {{Form::select('institute', ['Institute 1','GKV Haridwar','IIT Roorkee'])}}
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <div><label>Choose a Course</label></div>
                                    {{Form::select('course', ['Course 1','Course 2'])}}
                            </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <button class="btn waves-effect waves-light purple sub" type="submit" name="action">
                                        UPDATE USER DETAILS
                                    </button>
                                </div>
                            </div>
                            {!! Form::close() !!}
                        </div>


                    </div>
            </div>
        </div>
    </div>
@stop

@section('extra_scripts')
    <script>
        $(document).ready(function(){
            $('.tooltipped').tooltip();
            $('.datepicker').datepicker();

            //Pelhe Render Karne do bhodsi wale ko fir uski value bind karna
            // nito maa chuda lega
            $('select').attr("class", "browser-default");
            // $('select').material_select();
            $('select').formSelect();

        });
    </script>
@stop


















































