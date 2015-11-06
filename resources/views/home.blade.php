@extends('_layout/default')
@section('content')
<div class="" id="title" style="text-align:center">
	<h1>Laravel 5.0 </h1>
	<div style="padding:5px font-size:16px;">{{ Inspiring::quote() }}</div>
</div>
<hr>
<div id="content">
	<ul>
		@foreach ($pages as $page)
		<li style="margin:50px 0;">
			<div class="title">
				<a href="{{ URL('page/' . $page->id) }}">
			<h4>{{ $page->title }}</h4>
				</a>
			</div>

			<div class="body">
				<p>
				{!! html_entity_decode($page->body) !!}
				</p>


			</div>
		</li>
		@endforeach
	</ul>
</div>
@endsection