@extends(config('app.dir_view').'.layouts.app')
@section('title')
@lang('app.create') - @lang('app.'.config('app.module').'')
@endsection
@section('content')
@if($status == 1)
<div class="alert alert-success">
  <strong>@lang('app.'.config('app.module').'')!</strong> @lang('app.create_success')
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
    <div class="panel-heading panel-primary">@lang('app.information')</div>
    <div class="panel-body">
      <div class="form-group">
        <div class="row">
          <div class="col-md-12">
            <label class="control-label strong" for="title">@lang('app.title')</label>
            <div class="controls">
              <input class="form-control" id="title" name="title" placeholder="Nhập tên danh mục" type="text" value="" required>
            </div>
          </div>
        </div>
      </div>
      <div class="form-group">
        <label>@lang('app.short')</label>
        <textarea id="short" name="short"></textarea>
      </div>
      <div class="form-group">
        <label>@lang('app.content')</label>
        <textarea id="content" name="content"></textarea>
      </div>
      <div class="form-group">
        <div class="row">
          <div class="col-md-6">
            <label class="control-label strong" for="title">@lang('app.brand')</label>
            <div class="controls">
              <input type="text" name="brand" id="brand" class="form-control">
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="panel panel-info">
    <div class="panel-heading">@lang('app.picture')</div>
    <div class="panel-body">
      <div class="form-group">
        <label class="control-label strong" for="title">@lang('app.avatar')</label>
        <div class="controls">
          <input type="file" name="picture" id="picture">
          <div id="pictureTmp" style="margin: 10px 0px;"></div>
        </div>
      </div>
      <div class="form-group">
        <label class="control-label strong" for="title">@lang('app.picture_other')</label>
        <div class="controls">
          <input type="file" name="picture_other[]" id="picture_other" multiple>
          <div id="pictureOtherTmp" style="margin: 10px 0px;"></div>
        </div>
      </div>
    </div>
  </div>
  <div class="panel panel-info">
    <div class="panel-heading">@lang('app.parent_and_type')</div>
    <div class="panel-body">
      <div class="form-group">
        <h4><label class="control-label strong">@lang('app.product_type')</label></h4>
        <div class="controls">
        @foreach($types as $type)
        <input type="checkbox" name="type[]" value="{{ $type->id }}" id="type_{{ $type->id }}">
        <label for="type_{{ $type->id }}">{{ $type->title }}</label> &nbsp;&nbsp;
        @endforeach
        </div>
      </div>
      <hr>
      <div class="form-group">
        <h4><label class="control-label strong">@lang('app.parent')</label></h4>
        <select class="form-control" multiple name="parent_nav[]" style="height: 200px">
          <option value="" >@lang('app.choose_group')</option>
          @foreach($groups as $_group)
          <option value="{{ $_group->id }};{{ $_group->parent_nav }}">{{ $_group->title }}</option>
          @endforeach
        </select>
      </div>
    </div>
  </div>
  <div class="panel panel-info panel-light">
    <div class="panel-heading">@lang('app.product_manager_other')</div>
    <div class="panel-body">
      <div class="form-group">
        <h4><label class="control-label strong">@lang('app.dprice')</label></h4>
        <div class="row">
          <div class="col-md-4">
            <label class="control-label">@lang('app.price')</label>
            <div class="controls">
              <div class="input-group">
                <input class="form-control" type="number" name="price" id="price" value="0">
                <span class="input-group-addon">{{ config('app.currency') }}</span>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <label class="control-label">@lang('app.price_old')</label>
            <div class="controls">
              <div class="input-group">
                <input class="form-control" type="number" name="price_old" id="price_old" value="0">
                <span class="input-group-addon">{{ config('app.currency') }}</span>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <label class="control-label">@lang('app.price_si')</label>
            <div class="controls">
              <div class="input-group">
                <input class="form-control" type="number" name="price_si" id="price_si" value="0">
                <span class="input-group-addon">{{ config('app.currency') }}</span>
              </div>
            </div>
          </div>
          <div class="controls col-md-12">
            <div class="checkbox">
              <label>
                <input checked="checked" id="has_vat" name="has_vat" type="checkbox" value="1"> @lang('app.price_has_vat')
              </label>
            </div>
          </div>
        </div>
        <hr>
        <div class="form-group">
          <h4>
            <label class="control-label strong">@lang('app.kh')</label>
          </h4>
          <div class="row">
            <div class="col-sm-6">
              <label class="control-label">@lang('app.item_code')</label>
              <div class="controls">
                <input class="form-control" name="item_code" id="item_code" type="text" value="">
              </div>
            </div>
            <div class="col-sm-6">
              <label class="control-label">@lang('app.barcode')<span class="note">@lang('app.barcode_note')</span></label>
              <div class="controls">
                <input class="form-control" name="barcode" id="barcode" type="text" value="">
              </div>
            </div>
          </div>
          <div class="row top15">
            <div class="col-sm-6">
              <label class="control-label">@lang('app.manager_inventory')</label>
              <div class="controls">
                <select class="form-control inventory-management" name="manager_inventory">
                  <option selected="selected" value="0">@lang('app.not_manager_inventory')</option>
                  <option value="1">@lang('app.allow_manager_inventory')</option>
                </select>
              </div>
            </div>
            <div class="inventory col-sm-3">
              <label class="control-label">@lang('app.quantity')</label>
              <div class="controls">
                <input class="form-control" type="number" value="1" name="inventory" id="inventory">
              </div>
            </div>
            <div class="col-sm-3"></div>
            <div class="controls col-sm-12 inventory-policy">
              <div class="checkbox">
                <label>
                <input type="checkbox" name="inventory_policy" id="inventory_policy" value="1" checked="checked"> @lang('app.cpinventory')
                </label>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="panel panel-info">
    <div class="panel-heading">@lang('app.seo')</div>
    <div class="panel-body">
      <div class="form-group">
        <div>
          <label class="control-label strong" for="meta_title">@lang('app.meta_title')</label>
          <span class="pull-right">@lang('app.num_char_used'): <b class="bind-char">0</b>/70</span>
        </div>
        <div class="controls">
          <input class="form-control seo-placeholder" id="meta_title" name="meta_title" type="text" value="" placeholder="" onkeyup="app.countChar(this);"  maxlength="70">
        </div>
      </div>
      <div class="form-group">
        <div>
          <label class="control-label strong" for="meta_keywords">@lang('app.meta_keywords')</label>
          <span class="pull-right">@lang('app.num_char_used'): <b class="bind-char">0</b>/160</span>
        </div>
        <div class="controls">
          <input class="form-control seo-placeholder" id="meta_keywords" name="meta_keywords" type="text" value="" placeholder="" onkeyup="app.countChar(this);" maxlength="160">
        </div>
      </div>
      <div class="form-group">
        <div>
          <label class="control-label strong" for="meta_description">@lang('app.meta_description')</label>
          <span class="pull-right">@lang('app.num_char_used'): <b class="bind-char">0</b>/160</span>
        </div>
        <div class="controls">
          <textarea class="form-control seo-placeholder" cols="20" id="meta_description" name="meta_description" placeholder="" rows="2" onkeyup="app.countChar(this);" maxlength="160"></textarea>
        </div>
      </div>
    </div>
  </div>
  <div class="panel panel-info panel-light">
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