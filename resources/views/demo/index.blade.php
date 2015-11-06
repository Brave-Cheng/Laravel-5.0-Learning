@extends('layout')

@section('content')

<h1>Demo controller</h1>

@stop

@if($name == 'brave')

brave - cheng

@else

Brave - Cheng

@endif

<h3>
    person
</h3>

<ul>
    @foreach($persons as $p)
    <li>{{$p}}</li>
    @endforeach
</ul>

@section('footer')

<!-- <script type="text/javascript">alert('Demo page')</script> -->

@stop