@extends(config('app.dir_view').'.layouts.app')
@section('title')
{{ $item->title }} - @lang('app.banner')
@endsection
@section('content')
<div class="row">
  <div class="col-md-12">
    <div class="btn-group pull-right">
      <a href="{{ url('/blog/'.$item->id.'/edit') }}" class="btn btn-primary">@lang('app.edit')</a>
      <a href="{{ url('/blog/create') }}" class="btn btn-primary">@lang('app.create')</a>
    </div>
  </div>
</div>
<hr>
<div class="panel panel-default panel-light">
  <div class="panel-body">
    <div class="form-group">
      <label class="control-label strong" for="title">@lang('app.title'):</label>
      <div class="controls">
        {{ $item->title }}
      </div>
    </div>
    <div class="form-group">
      <label class="control-label strong" for="title">@lang('app.picture'):</label>
      <div class="controls"><img src="{{ asset($item->picture_thumb) }}" title="{{ $item->title }}"></div>
    </div>
    <div class="form-group">
    <label class="control-label strong" for="title">@lang('app.content'):</label>
      <div class="controls">
        <textarea class="form-control" rows="10" readonly>{{ strip_tags($item->content) }}</textarea>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label strong" for="title">@lang('app.parent'):</label>
      <div class="controls">
        <p><a href="{{ url('backend/blog_group/'.$item->group->id) }}" target="_blank">{{ $item->group->title }}</a></p>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label strong" for="title">@lang('app.showhi'):</label>
      <div class="controls">
        <span class="label label-{{ ($item->showhi == 1) ? 'success' : 'danger' }}">{{ $item->showhi_text }}</span>
      </div>
    </div>
  </div>
</div>
@endsection