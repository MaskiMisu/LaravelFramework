@extends(config('app.dir_view').'.layouts.app')
@section('title')
{{ $item->title }} - @lang('app.'. config('app.module'))
@endsection
@section('content')
<div class="row">
  <div class="col-md-12">
    <div class="btn-group pull-right">
      <a href="{{ url('backend/'. config('app.module') .'/'.$item->id.'/edit') }}" class="btn btn-primary">@lang('app.edit')</a>
      <a href="{{ url('backend/'. config('app.module') .'/create') }}" class="btn btn-primary">@lang('app.create')</a>
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
        <label class="control-label strong" for="title">@lang('app.short'):</label>
        <div class="controls">
          <textarea class="form-control" rows="10" readonly>{{ strip_tags($item->short) }}</textarea>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label strong" for="title">@lang('app.parent'):</label>
        <div class="controls">
          @foreach($groups as $_group)
            <p><a href="{{ url('blog_group/'.$_group->id) }}">{{ $_group->title }}</a></p>
          @endforeach
        </div>
    </div>
    <div class="form-group">
        <label class="control-label strong" for="title">@lang('app.meta_title'):</label>
        <div class="controls">
          {{ strip_tags($item->meta_title) }}
        </div>
    </div>
    <div class="form-group">
        <label class="control-label strong" for="title">@lang('app.meta_keywords'):</label>
        <div class="controls">
          {{ strip_tags($item->meta_keywords) }}
        </div>
    </div>
    <div class="form-group">
        <label class="control-label strong" for="title">@lang('app.meta_description'):</label>
        <div class="controls">
          <textarea class="form-control" rows="3" readonly>{{ strip_tags($item->meta_description) }}</textarea>
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