@extends(config('app.dir_view').'.layouts.app')
@section('title')
@lang('app.create') - @lang('app.blog')
@endsection
@section('content')
  @if($status == 1)
  <div class="alert alert-success">
    <strong>@lang('app.page')!</strong> @lang('app.create_success')
  </div>
  @endif
  <form method="POST" enctype="multipart/form-data">
    <div class="row">
      <div class="col-md-12">
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
          <div class="row">
            <div class="col-md-6">
              <label class="control-label strong" for="title">@lang('app.title')</label>
              <div class="controls">
                <input class="form-control" id="title" name="title" placeholder="@lang('app.title')" type="text" value="" required>
              </div>
            </div>
            <div class="col-md-6">
              <label class="control-label strong" for="title">@lang('app.parent')</label>
              <div class="controls">
                <select name="group" id="group" class="form-control">
                  <option value="">@lang('app.choose_group')</option>
                  @foreach($groups as $group)
                    <option value="{!! $group->id !!}">{!! $group->title !!}</option>
                  @endforeach
                </select>
              </div>
            </div>
          </div>
        </div>
        <div class="form-group">
          <label class="control-label strong" for="title">@lang('app.picture')</label>
          <div class="controls">
            <input type="file" name="picture" id="picture">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label strong" for="title">@lang('app.alt')</label>
          <div class="controls">
            <input class="form-control" id="alt" name="alt" placeholder="@lang('app.alt')" type="text" value="" required>
          </div>
        </div>
        <div class="form-group">
          <label>@lang('app.content')</label>
          <textarea id="content" name="content"></textarea>
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