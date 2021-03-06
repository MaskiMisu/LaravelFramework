@extends(config('app.dir_view').'.layouts.app')
@section('title')
@lang('app.'. config('app.module'))
@endsection
@section('content')
@include(config('app.dir_view').'.includes.box.search')
<div class="row">
  <div class="col-md-12">
    <div class="btn-group pull-right">
      <a href="{{ url('backend/'. config('app.module') .'/trash') }}" class="btn btn-danger">@lang('app.trash')</a>
      <a href="{{ url('backend/'. config('app.module') .'/create') }}" class="btn btn-primary">@lang('app.create')</a>
    </div>
  </div>
</div>
<hr>
<div class="panel panel-default panel-light">
  <div class="pull-body" style="padding: 10px">
    <form method="POST" enctype="multipart/form-data">
      @include(config('app.dir_view').'.includes.box.bulk_action')
      <table class="table table-striped">
        <thead>
          <tr>
            <th><input type="checkbox" id="checkAll"></th>
            <th>#</th>
            @foreach(config('app.'.config('app.module').'.columns') as $column)
            <th>
              @lang('app.'.$column)
              @if(in_array($column, config('app.'.config('app.module').'.sort')))
              <a href="?sortType={{$column}};asc"><i class="fa fa-long-arrow-up" aria-hidden="true"></i></a>
              <a href="?sortType={{$column}};desc"><i class="fa fa-long-arrow-down" aria-hidden="true"></i></a>
              @endif
              </th>
            @endforeach
            <th>@lang('app.action')</th>
          </tr>
        </thead>
        <tbody>
          @if($counts > 0 )
            @foreach($items as $item)
            <tr>
              <th scope="row"><input type="checkbox" name="ids[]" id="ids" value="{{ $item->id }}"></th>
              <th scope="row">{{ $item->stt }}</th>
              @foreach(config('app.'.config('app.module').'.columns') as $column)
                <td>
                @if($column == 'picture')
                  <img src="{{ asset($item->picture_thumb) }}" alt="{{ $item->title }}" style="width: 50px; height: 50px;">
                @elseif($column == 'title')
                  <a href="{{ url('backend/'. config('app.module') .'/'.$item->id) }}">{{ $item->title }}</a>
                @elseif($column == 'showhi')
                  <span class="label label-{{ ($item->showhi == 1) ? 'success' : 'danger' }}">{{ $item->showhi_text }}</span>
                @elseif($column == 'parent_nav')
                  @foreach($item->parent_nav as $k=> $parent)
                    <a href="{{ url('backend/blog_group/'.$parent->id) }}" target="_blank">{{ $parent->title }} &nbsp;</a>
                  @endforeach
                @else
                  {{ $item->$column }}
                @endif
                </td>
              @endforeach
              <td class="action-group">
                <a href="{{ url('backend/'. config('app.module') .'/'.$item->id.'/edit') }}" title="@lang('app.edit')"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                <a href="{{ url('backend/'. config('app.module') .'/'.$item->id.'/destroy') }}" title="@lang('app.delete')"><i class="fa fa-trash" aria-hidden="true"></i></a>
                <a href="{{ url('backend/'. config('app.module') .'/'.$item->id.'/duplicate') }}"  title="@lang('app.duplicate')"><i class="fa fa-files-o" aria-hidden="true"></i></a>
              </td>
            </tr>
            @endforeach
          @else
          <tr><td class="text-center">@lang('app.empty_row')</td></tr>
          @endif
        </tbody>
      </table>
      <input type="hidden" name="_token" value="{{ csrf_token() }}">
      <input type="hidden" name="_tokenAction" value="bulk">
    </form>
  </div>
</div>
{{ $items->render() }}
@endsection
