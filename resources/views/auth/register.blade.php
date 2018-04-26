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
    {{--Content--}}

    <div class="row">
        <div class="col s12 m6 offset-m3 offset-s0">
            <div class="card hoverable">
                <div class="card-content">
                    <span class="purple-text card-title">
                        <img src="/college_fact/public/img/logoVector.svg" alt="" width="18" height="18">
                        Register
                    </span>
                    <div class="divider"></div>


                    <div class="row">
                        {!! Form::open(['url'=>'register',   'method'=>'post']) !!}
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="name" type="text" class="validate" name="name">
                                <label for="name">Name</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="email" type="email" class="validate" name="email">
                                <label for="email">Email</label>
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
                                <input id="password_confirmation" type="password" class="validate" name="password_confirmation">
                                <label for="password_confirmation">Confirm Password</label>
                            </div>
                        {{--</div>--}}
                        {{--<div class="row">--}}
                            {{--<div class="input-field col s12">--}}
                                {{--<input id="address" type="text" class="validate" name="address">--}}
                                {{--<label for="address">Address</label>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                        {{--<div class="row">--}}
                            {{--<div class="input-field col s12">--}}
                                {{--<input type="text" class="datepicker" id="year_of_passing" name="year_of_passing" value="2018">--}}
                                {{--<label for="year_of_passing">Year of Passing</label>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                        {{--<div class="row">--}}
                            {{--<div class="input-field col s12">--}}
                                {{--<select name="institution">--}}
                                    {{--<option value="" disabled selected>Choose your option</option>--}}
                                    {{--<option value="1">Option 1</option>--}}
                                    {{--<option value="2">Option 2</option>--}}
                                    {{--<option value="3">Option 3</option>--}}
                                {{--</select>--}}
                                {{--<label>Institution</label>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                        <div class="row">
                            <div class="input-field col s12">
                                &nbsp;&nbsp;&nbsp;<button class="btn waves-effect waves-light purple" type="submit" name="action">
                                    REGISTER
                                </button>
                            </div>
                        </div>
                        {!! Form::close() !!}


                        <div>
                            Already Have a Username and Password ?
                            &nbsp;&nbsp;
                            <a href="{{ url('/') }}">Login</a>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>
    <div>
        @foreach($errors->all() as $error)
            <li>{{$error}}</li>
        @endforeach
    </div>
@stop

@section('extra_scripts')
    <script>
        // $(document).ready(function(){
        //     $('.datepicker').datepicker();
        //     $('select').formSelect();
        // });
    </script>
@stop




































































{{--@extends('layouts.app')--}}

{{--@section('content')--}}
{{--<div class="container">--}}
    {{--<div class="row justify-content-center">--}}
        {{--<div class="col-md-8">--}}
            {{--<div class="card">--}}
                {{--<div class="card-header">{{ __('Register') }}</div>--}}

                {{--<div class="card-body">--}}
                    {{--<form method="POST" action="{{ route('register') }}">--}}
                        {{--@csrf--}}

                        {{--<div class="form-group row">--}}
                            {{--<label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Name') }}</label>--}}

                            {{--<div class="col-md-6">--}}
                                {{--<input id="name" type="text" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" name="name" value="{{ old('name') }}" required autofocus>--}}

                                {{--@if ($errors->has('name'))--}}
                                    {{--<span class="invalid-feedback">--}}
                                        {{--<strong>{{ $errors->first('name') }}</strong>--}}
                                    {{--</span>--}}
                                {{--@endif--}}
                            {{--</div>--}}
                        {{--</div>--}}

                        {{--<div class="form-group row">--}}
                            {{--<label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>--}}

                            {{--<div class="col-md-6">--}}
                                {{--<input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required>--}}

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
                            {{--<label for="password-confirm" class="col-md-4 col-form-label text-md-right">{{ __('Confirm Password') }}</label>--}}

                            {{--<div class="col-md-6">--}}
                                {{--<input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>--}}
                            {{--</div>--}}
                        {{--</div>--}}

                        {{--<div class="form-group row mb-0">--}}
                            {{--<div class="col-md-6 offset-md-4">--}}
                                {{--<button type="submit" class="btn btn-primary">--}}
                                    {{--{{ __('Register') }}--}}
                                {{--</button>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                    {{--</form>--}}
                {{--</div>--}}
            {{--</div>--}}
        {{--</div>--}}
    {{--</div>--}}
{{--</div>--}}
{{--@endsection--}}
