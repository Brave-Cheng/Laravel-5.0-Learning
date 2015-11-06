@extends('_layout.default')

@section('content')

    <h6>
        <a href="/"><span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span> 返回首页</a>
    </h6>

    <h1 style="text-align:center; margin-top:50px;"> {{ $page->title }}</h1>

    <hr>

    <div id="date" style="text-align:right">
        {{ $page->updated_at }}
    </div>

    <div id="content" style="padding:50px;">
        <p>

        {!!html_entity_decode($page->body)!!}
        </p>
    </div>

    <div class="" id="comments" style="margin-bottom:100px">

        @if (count($errors) > 0)
            <div class="alert alert-danger">
                <strong>Whoops</strong> There are some problems with your input. <br><br>

                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif

        <div id="new">
            <form action="{{ URL('comment/store') }}" method="POST">
                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                <input type="hidden" name="page_id" value="{{ $page->id }}">

                <div class="form-group">
                    <label for="">Nickname</label>
                    <input type="text" name="nickname" class="form-control" style="width:300px;" required="required">
                </div>

                <div class="form-group">
                    <label for="">Email Address</label>
                    <input type="text" name="email" class="form-control" style="width:300px;">
                </div>

                <div class="form-group">
                    <label for="">Home Page</label>
                    <input type="text" name="website" class="form-control" style="width:300px">
                </div>

                <div class="form-group">
                    <label for="">Content</label>
                    <textarea name="content" rows="10" class="form-control" required="required" id="editor" placeholder="Balabala" autofocus></textarea>
                </div>

                <button class="btn btn-lg btn-success col-lg-12" type="submit">
                    Submit
                </button>
            </form>
        </div>

        @include('vendor.common')

        <script>
            function reply(a) {
                var nickname = a.parentNode.parentNode.firstChild.nextSibling.getAttribute('data');
                var textarea = a.document.getElementById('editor');
                textarea.innerHTML = '@'+nickname+'';
            }
        </script>

        <div class="comments" style="margin-top:100px">

            @foreach ($page->hasManyComments as $comment)
                <div class="one" style="border-top:20px solid #efefef;padding:5px 20px">
                    @if ($comment->website)
                        <a href="{{ $comment->website }}" class="">
                            <h3>{{ $comment->nickname }}</h3>
                        </a>
                    @else
                        <h3>{{ $comment->nickname }}</h3>
                    @endif
                        <h6>{{ $comment->created_at }}</h6>
                </div>

                <div class="content">
                    <p style="padding:20px">
                        {!!html_entity_decode($comment->content)!!}
                    </p>
                </div>

                <div class="reply" style="text-align:right; padding:5px">
                    <a href="#new" onclick="reply(this)">回复</a>
                </div>
            @endforeach
        </div>
    </div>

@stop

