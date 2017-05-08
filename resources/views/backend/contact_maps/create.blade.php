@extends(config('app.dir_view').'.layouts.app')
@section('title')
@lang('app.create') - @lang('app.contact_m1aps')
@endsection
@section('content')
@if($status == 1)
<div class="alert alert-success">
  <strong>@lang('app.contact_maps')!</strong> @lang('app.add_success')
</div>
@endif
<form method="POST" enctype="multipart/form-data">
  <div class="row">
    <div class="col-md-12">
      <div class="btn-group pull-right">
        <a class="btn btn-primary" href=" {{ url('blog_group/create') }} ">@lang('app.create')</a>
        <button class="btn btn-primary" type="submit">@lang('app.save')</button>
      </div>
    </div>
  </div>
  <hr>
  <div class="panel panel-info panel-light">
    <div class="panel-heading">@lang('app.information')</div>
    <div class="panel-body">
      <div class="form-group">
        <label class="control-label strong" for="title">@lang('app.title'):</label>
        <div class="controls">
          <input class="form-control" id="title" name="title" placeholder="Nhập tên danh mục" type="text" value="" required>
        </div>
      </div>
      <div class="form-group">
        <label>@lang('app.content'):</label>
        <textarea id="content" name="content"></textarea>
      </div>
    </div>
  </div>
  <div class="panel panel-info">
    <div class="panel-heading">@lang('app.map')</div>
    <div class="panel-body">
      <div class="form-group">
        <label class="control-label strong" for="title">@lang('app.address'):</label>
        <div class="controls">
          <input class="form-control" id="address" name="address" placeholder="@lang('app.address')" type="text" value="{!! $address !!}" onchange="app.getMap(this)" required>
          <input type="hidden" name="lat" id="lat" value="{!! $lat !!}">
          <input type="hidden" name="lng" id="lng" value="{!! $lng !!}">
        </div>
      </div>
      <div class="form-group">
        <div id="map" style="height: 400px;"></div>
      </div>
    </div>
  </div>
  <div class="panel panel-default panel-light">
    <div class="panel-body">
      <div class="form-group">
        <label class="control-label strong" for="meta_description">@lang('app.showhi')</label>
        <div class="controls">
          <div class="radio">
            <label>
              <input type="radio" name="showhi" id="showhi" value="1" checked>@lang('app.show')
            </label>
          </div>
          <div class="radio">
            <label>
              <input type="radio" name="showhi" id="showhi" value="0" >@lang('app.hide')
            </label>
          </div>
        </div>
      </div>
    </div>
  </div>
  <hr>
  <div class="row">
    <div class="col-md-12">
      <div class="btn-group pull-right">
        <button class="btn btn-primary" type="submit">@lang('app.save')</button>
      </div>
    </div>
  </div>
  <input type="hidden" name="_token" value="{{ csrf_token() }}">
</form>
<script defer src="https://maps.googleapis.com/maps/api/js?key={!! config('app.google_api_key') !!}&callback=app.initMap"></script>
<script type="text/javascript">
  $(function(){
    app.initMap({!! $lat !!}, {!! $lng !!}, '{!! $address !!}');
  });
</script>
@endsection