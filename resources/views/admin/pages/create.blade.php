@extends('app')

@section('content')


<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel default">
                <div class="panel-heading">新增Page</div>

                <div class="panel-body">

                    @if (count($errors) > 0)
                        <div class="alert alert-danger">
                            <strong>Whoops!</strong> There are some problems with your input. <br><br>
                        </div>
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                                {{-- expr --}}
                            @endforeach
                        </ul>
                    @endif

                    <form action="{{ URL('admin/pages') }}" method="POST">

                        <input type="hidden" name="_token" value="{{ csrf_token() }}">

                        <input type="text" name="title" class="form-control" required="requird">
                        <br>

                        <textarea name="body" rows=10 class="form-control" required="required" id="editor" placeholder="Balabala" autofocus></textarea>
                        <br>
                        <button class="btn btn-lg btn-info">新增Page</button>

                    </form>


                </div>
            </div>
        </div>
    </div>

    @include('vendor.common')

</div>

@endsection
