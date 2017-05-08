@extends(config('app.dir_view').'.layouts.app')
@section('title')
{{ $item->title }} - @lang('app.blog')
@endsection
@section('content')
<div class="row">
  <div class="col-md-12">
    <div class="btn-group pull-right">
      <a href="{!! url('backend/page/'.$item->id.'/edit') !!}" class="btn btn-primary">@lang('app.edit')</a>
      <a href="{!! url('backend/page/create') !!}" class="btn btn-primary">@lang('app.create')</a>
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
    <label class="control-label strong" for="title">@lang('app.content'):</label>
      <div class="controls">
        {!! $item->content !!}
      </div>
    </div>
    <div class="form-group">
      <label class="control-label strong" for="title">@lang('app.meta_title'):</label>
      <div class="controls">
        <div id="map" style="height: 400px;"></div>
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
<script defer src="https://maps.googleapis.com/maps/api/js?key={!! config('app.google_api_key') !!}&callback=app.initMap"></script>
<script type="text/javascript">
  $(function(){
    app.initMap({!! $item->lat !!}, {!! $item->lng !!}, '{!! $item->address !!}');
  });
</script>
@endsection