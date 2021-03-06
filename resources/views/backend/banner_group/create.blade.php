@extends(config('app.dir_view').'.layouts.app')
@section('title')
@lang('app.create') - @lang('app.blog')
@endsection
@section('content')
  @if($status == 1)
  <div class="alert alert-success">
    <strong>@lang('app.banner_group')!</strong> @lang('app.create_success')
  </div>
  @endif
  <form method="POST" enctype="multipart/form-data">
    <div class="row">
      <div class="col-md-6">
        <div class="btn-group pull-left">
          <a href="{!! url('backend/banner_group') !!}" class="btn btn-default">@lang('app.banner_group')</a>
        </div>
      </div>
      <div class="col-md-6">
        <div class="btn-group pull-right">
          <button class="btn btn-primary" type="submit">@lang('app.save')</button>
        </div>
      </div>
    </div>
    <hr>
    <div class="panel panel-info panel-light">
      <div class="panel-heading">@lang('app.information')</div>
      <div class="panel-body">
        <div class="form-group">
          <label class="control-label strong" for="title">@lang('app.title')</label>
          <div class="controls">
            <input class="form-control" id="title" name="title" placeholder="@lang('app.title')" type="text" value="" required>
          </div>
        </div>
        <div class="form-group">
          <label class="control-label strong" for="title">@lang('app.banner_key')</label>
          <div class="controls">
            <input class="form-control" id="banner_key" name="banner_key" placeholder="@lang('app.banner_key')" type="text" value="" required>
          </div>
        </div>
      </div>
    </div>
    <div class="panel panel-default panel-light">
      <div class="panel-body">
        <label class="control-label strong" for="meta_description">@lang('app.showhi')</label>
        <div class="controls">
          <div class="radio">
            <label>
              <input type="radio" name="showhi" id="showhi" value="1" checked="checked">@lang('app.show')
            </label>
          </div>
          <div class="radio">
            <label>
              <input type="radio" name="showhi" id="showhi" value="0">@lang('app.hide')
            </label>
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
@endsection