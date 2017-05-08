@extends(config('app.dir_view').'.layouts.app')
@section('title')
{{ $item->title }} - @lang('app.blog')
@endsection
@section('content')
<div class="row">
  <div class="col-md-6">
    <a href="{!! url('backend/'.config('app.module').'/') !!}" class="btn btn-default">@lang('app.banner_group')</a>
  </div>
  <div class="col-md-6">
    <div class="btn-group pull-right">
      <a href="{!! url('backend/'.config('app.module').'/'.$item->id.'/edit') !!}" class="btn btn-primary">@lang('app.edit')</a>
      <a href="{!! url('backend/'.config('app.module').'/create') !!}" class="btn btn-primary">@lang('app.create')</a>
    </div>
  </div>
</div>
<hr>
<div class="panel panel-default panel-light">
  <div class="panel-body">
    <div class="form-group">
      <label class="control-label strong" for="title">@lang('app.title'):</label>
      <div class="controls">
        {!! $item->title !!}
      </div>
    </div>
    <div class="form-group">
    <label class="control-label strong" for="title">@lang('app.banner_key'):</label>
      <div class="controls">
        {!! $item->banner_key !!}
      </div>
    </div>
    <div class="form-group">
      <label class="control-label strong" for="title">@lang('app.showhi'):</label>
      <div class="controls">
        <span class="label label-{!! ($item->showhi == 1) ? 'success' : 'danger' !!}">{!! $item->showhi_text !!}</span>
      </div>
    </div>
  </div>
</div>
@endsection