@extends('app')

@section('extra_css')
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
                <li><a href="#">Know Us</a></li>
            </ul>
        </div>
    </nav>

    {{--Content--}}

    <div class="row">
        <div class="col s12 m6 offset-m3 offset-s0">
            <div class="card hoverable">
                <div class="card-content">
                    <span class="purple-text card-title">
                        Login
                    </span>
                    <div class="divider"></div>


                    <div class="row">
                        {!! Form::open(['url'=>'login',   'method'=>'post']) !!}
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="email" type="email" class="validate" name="email">
                                <label for="email">Username / Email</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="password" type="password" class="validate" name="password">
                                <label for="password">Password</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <p>
                                    <label>
                                        <input type="checkbox"  class="purple" name="remember"/>
                                        <span>Remember Me</span>
                                    </label>
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <button class="btn waves-effect waves-light purple" type="submit" name="action">
                                    LOGIN
                                </button>
                            </div>
                        </div>
                        {!! Form::close() !!}


                        <div>
                            <a href="{{ url('register') }}">Register</a>
                            &nbsp;&nbsp;|| &nbsp;&nbsp;
                            <a href="{{ route('password.request') }}">Forgot Password ?</a>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>
@stop






















































{{--@extends('layouts.app')--}}

{{--@section('content')--}}
{{--<div class="container">--}}
    {{--<div class="row justify-content-center">--}}
        {{--<div class="col-md-8">--}}
            {{--<div class="card">--}}
                {{--<div class="card-header">{{ __('Login') }}</div>--}}

                {{--<div class="card-body">--}}
                    {{--<form method="POST" action="{{ route('login') }}">--}}
                        {{--@csrf--}}

                        {{--<div class="form-group row">--}}
                            {{--<label for="email" class="col-sm-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>--}}

                            {{--<div class="col-md-6">--}}
                                {{--<input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required autofocus>--}}

                                {{--@if ($errors->has('email'))--}}
                                    {{--<span class="invalid-feedback">--}}
                                        {{--<strong>{{ $errors->first('email') }}</strong>--}}
                                    {{--</span>--}}
                                {{--@endif--}}
                            {{--</div>--}}
                        {{--</div>--}}

                        {{--<div class="form-group row">--}}
                            {{--<label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>--}}

                            {{--<div class="col-md-6">--}}
                                {{--<input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>--}}

                                {{--@if ($errors->has('password'))--}}
                                    {{--<span class="invalid-feedback">--}}
                                        {{--<strong>{{ $errors->first('password') }}</strong>--}}
                                    {{--</span>--}}
                                {{--@endif--}}
                            {{--</div>--}}
                        {{--</div>--}}

                        {{--<div class="form-group row">--}}
                            {{--<div class="col-md-6 offset-md-4">--}}
                                {{--<div class="checkbox">--}}
                                    {{--<label>--}}
                                        {{--<input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}> {{ __('Remember Me') }}--}}
                                    {{--</label>--}}
                                {{--</div>--}}
                            {{--</div>--}}
                        {{--</div>--}}

                        {{--<div class="form-group row mb-0">--}}
                            {{--<div class="col-md-8 offset-md-4">--}}
                                {{--<button type="submit" class="btn btn-primary">--}}
                                    {{--{{ __('Login') }}--}}
                                {{--</button>--}}

                                {{--<a class="btn btn-link" href="{{ route('password.request') }}">--}}
                                    {{--{{ __('Forgot Your Password?') }}--}}
                                {{--</a>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                    {{--</form>--}}
                {{--</div>--}}
            {{--</div>--}}
        {{--</div>--}}
    {{--</div>--}}
{{--</div>--}}
{{--@endsection--}}
