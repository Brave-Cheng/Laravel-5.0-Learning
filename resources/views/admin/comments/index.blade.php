@extends('app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="panel panel-default">
                    <div class="panel-heading">管理评论</div>

                    <div class="panel-body">
                        <table class="table table-striped">
                            <tr class="row">
                                <th class="col-lg-4">Content</th>
                                <th class="col-lg-2">User</th>
                                <th class="col-lg-4">Page</th>
                                <th class="col-lg-1">edit</th>
                                <th class="col-lg-1">delete</th>
                            </tr>

                            @foreach ($comments as $comment)
                                <tr class="row">
                                    <td class="col-lg-6">
                                        {!!html_entity_decode($comment->content)!!}
                                    </td>

                                    <td class="col-lg-2">
                                        @if ($comment->website)
                                            <a href="{{ $comment->website }}">
                                                <h4>{{ $comment->nickname }}</h4>
                                            </a>
                                        @else
                                        <h3>{{ $comment->nickname }}</h3>
                                        @endif

                                        {{ $comment->email }}
                                    </td>

                                    <td class="col-lg-4">
                                        <a href="{{ URL('page/' . $comment->page_id) }}" target="_blank">
                                            {{ App\Page::find($comment->page_id)->title }}
                                        </a>
                                    </td>

                                    <td id="td" class="col-lg-1">
                                        <a href="{{ URL('admin/comments/' . $comment->id . '/edit') }}" class="btn btn-success">edit</a>
                                    </td>

                                    <td class="col-lg-1">

                                        <form action="{{ URL('admin/comments/' . $comment->id) }}" method="POST" style="display:inline">

                                            <input type="hidden" name="_method" value="DELETE">
                                            <input type="hidden" name="_token" value="{{ csrf_token() }}">

                                            <button type="submit" class="btn btn-danger">delete</button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop