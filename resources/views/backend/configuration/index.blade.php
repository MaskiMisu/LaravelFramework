@extends(config('app.dir_view').'.layouts.app')
@section('title')
@lang('app.configuration')
@endsection
@section('content')
@if($status == 1)
<div class="alert alert-success">
  <strong>@lang('app.configuration')!</strong> @lang('app.update_success')
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
  <div class="panel panel-info">
    <div class="panel-heading">@lang('app.information')</div>
    <div class="panel-body">
      <div class="row">
        <div class="col-md-6">
          <div class="form-group">
            <label class="control-label strong" for="title">@lang('app.company_name'):</label>
            <div class="controls">
              <input class="form-control" id="company_name" name="company_name" placeholder="@lang('app.company_name')" type="text" value="{!! isset($item->company_name) ? $item->company_name : '' !!}" >
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="form-group">
            <label class="control-label strong" for="title">@lang('app.email'):</label>
            <div class="controls">
              <input class="form-control" id="email" name="email" placeholder="@lang('app.email')" type="text" value="{!! isset($item->email) ? $item->email : '' !!}" >
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6">
          <div class="form-group">
            <label class="control-label strong" for="title">@lang('app.hotline'):</label>
            <div class="controls">
              <input class="form-control" id="hotline" name="hotline" placeholder="@lang('app.hotline')" type="text" value="{!! isset($item->hotline) ? $item->hotline : '' !!}" >
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="form-group">
            <label class="control-label strong" for="title">@lang('app.phone'):</label>
            <div class="controls">
              <input class="form-control" id="phone" name="phone" placeholder="@lang('app.phone')" type="text" value="{!! isset($item->phone) ? $item->phone : '' !!}" >
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6">
          <div class="form-group">
            <label class="control-label strong" for="title">@lang('app.address'):</label>
            <div class="controls">
              <input class="form-control" id="address" name="address" placeholder="@lang('app.address')" type="text" value="{!! isset($item->address) ? $item->address : '' !!}" >
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="form-group">
            <label class="control-label strong" for="title">@lang('app.currency'):</label>
            <div class="controls">
              <select class="form-control" name="currency">
                <option value="$" {!! isset($item->currency) && $item->currency == '$' ? 'selected' : ''  !!}>USD ($)</option>
                <option value="€" {!! isset($item->currency) && $item->currency == '€' ? 'selected' : ''  !!}>EUR (€)</option>
                <option value="¥" {!! isset($item->currency) && $item->currency == '¥' ? 'selected' : ''  !!}>JPY (¥)</option>
                <option value="£" {!! isset($item->currency) && $item->currency == '£' ? 'selected' : ''  !!}>GBP (£)</option>
                <option value="$" {!! isset($item->currency) && $item->currency == '$' ? 'selected' : ''  !!}>AUD ($)</option>
                <option value="đ" {!! isset($item->currency) && $item->currency == 'đ' ? 'selected' : ''  !!}>VND (đ)</option>
              </select>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="panel panel-info">
    <div class="panel-heading">@lang('app.location')</div>
    <div class="panel-body">
      <div class="row">
        <div class="col-md-6">
          <div class="form-group">
            <label class="control-label strong" for="title">@lang('app.location_district'):</label>
            <div class="controls">
              <input class="form-control" id="location_district" name="location_district" placeholder="@lang('app.location_district')" type="text" value="{!! isset($item->location_district) ? $item->location_district : '' !!}" >
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="form-group">
            <label class="control-label strong" for="title">@lang('app.location_province'):</label>
            <div class="controls">
              <input class="form-control" id="location_province" name="location_province" placeholder="@lang('app.location_province')" type="text" value="{!! isset($item->location_province) ? $item->location_province : '' !!}" >
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="form-group">
            <label class="control-label strong" for="title">@lang('app.country'):</label>
            <div class="controls">
              <input class="form-control" id="country" name="country" placeholder="@lang('app.country')" type="text" value="{!! isset($item->country) ? $item->country : '' !!}" >
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="form-group">
            <label class="control-label strong" for="title">@lang('app.timezone'):</label>
            <div class="controls">
              <select class="form-control" name="timezone">
              @foreach(timezone_identifiers_list() as $k => $v)
                <option value="{!! $v !!}" {!! isset($item->timezone) && $item->timezone == $v ? 'selected' : ''  !!}>{!! $v !!}</option>
              @endforeach
              </select>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="panel panel-info">
    <div class="panel-heading">@lang('app.social_network')</div>
    <div class="panel-body">
      <div class="row">
        <div class="col-md-6">
          <div class="form-group">
            <label class="control-label strong" for="title">@lang('app.fanpage_facebook'):</label>
            <div class="controls">
              <input class="form-control" id="fanpage_facebook" name="fanpage_facebook" placeholder="@lang('app.fanpage_facebook')" type="text" value="{!! isset($item->fanpage_facebook) ? $item->fanpage_facebook : '' !!}" >
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="form-group">
            <label class="control-label strong" for="title">@lang('app.google_plus'):</label>
            <div class="controls">
              <input class="form-control" id="google_plus" name="google_plus" placeholder="@lang('app.google_plus')" type="text" value="{!! isset($item->google_plus) ? $item->google_plus : '' !!}" >
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="panel panel-info">
    <div class="panel-heading">@lang('app.seo')</div>
    <div class="panel-body">
      <div class="row">
        <div class="col-md-6">
          <div class="form-group">
            <label class="control-label strong" for="title">@lang('app.meta_title'):</label>
            <div class="controls">
              <input class="form-control" id="meta_title" name="meta_title" placeholder="@lang('app.meta_title')" type="text" value="{!! isset($item->meta_title) ? $item->meta_title : '' !!}" >
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="form-group">
            <label class="control-label strong" for="title">@lang('app.meta_keywords'):</label>
            <div class="controls">
              <input class="form-control" id="meta_keywords" name="meta_keywords" placeholder="@lang('app.meta_keywords')" type="text" value="{!! isset($item->meta_keywords) ? $item->meta_keywords : '' !!}" >
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="form-group">
            <label class="control-label strong" for="title">@lang('app.meta_description'):</label>
            <div class="controls">
              <input class="form-control" id="meta_description" name="meta_description" placeholder="@lang('app.meta_description')" type="text" value="{!! isset($item->meta_description) ? $item->meta_description : '' !!}" >
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="panel panel-info">
    <div class="panel-heading">@lang('app.script')</div>
    <div class="panel-body">
      <div class="form-group">
        <label class="control-label strong" for="title">@lang('app.google_analytic'):</label>
        <div class="controls">
          <textarea name="google_analytic" class="form-control" style="max-width: 100%">{!! isset($item->google_analytic) ? $item->google_analytic : '' !!}</textarea>
        </div>
      </div>
      <div class="form-group">
        <label class="control-label strong" for="title">@lang('app.zophim_chat'):</label>
        <div class="controls">
          <textarea name="zophim_chat" class="form-control"  style="max-width: 100%">{!! isset($item->zophim_chat) ? $item->zophim_chat : '' !!}</textarea>
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
  <input type="hidden" name="id" value="{!! isset($item->id) ? $item->id : '' !!}">
</form>
@endsection