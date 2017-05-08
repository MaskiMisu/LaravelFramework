@extends(config('app.dir_view').'.layouts.app')
@section('title')
{{ $item->title }} - @lang('app.edit')
@endsection
@section('content')
@if($status == 1)
<div class="alert alert-success">
  <strong>@lang('app.'.config('app.module').'')!</strong> @lang('app.update_success')
</div>
@endif
<form method="POST" enctype="multipart/form-data">
  <div class="row">
    <div class="col-md-12">
      <div class="btn-group pull-right">
        <a class="btn btn-primary" href="{{ url('backend/'.config('app.module').'/create') }}">@lang('app.create')</a>
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
              <input class="form-control" id="title" name="title" placeholder="Nhập tên danh mục" type="text" value="{{ $item->title }}" required>
            </div>
          </div>
        </div>
      </div>
      <div class="form-group">
        <label>@lang('app.short')</label>
        <textarea id="short" name="short">{{ $item->short }}</textarea>
      </div>
      <div class="form-group">
        <label>@lang('app.content')</label>
        <textarea id="content" name="content">{{ $item->content }}</textarea>
      </div>
      <div class="form-group">
        <div class="row">
          <div class="col-md-6">
            <label class="control-label strong" for="title">@lang('app.brand')</label>
            <div class="controls">
              <input type="text" name="brand" id="brand" class="form-control" value="{{ $item->brand }}">
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
          <div id="pictureTmp" style="margin: 10px 0px;">
            <div style="border: 1px solid #d3e0e9; padding: 5px;display:inline-block;margin: 5px"><img src="{{ asset($item->picture_thumb) }}" style="width: 100px; height: 100px;" alt="{{ $item->title }}"></div>
          </div>
        </div>
      </div>
      <div class="form-group">
        <label class="control-label strong" for="title">@lang('app.picture_other')</label>
        <div class="controls">
          <input type="file" name="picture_other[]" id="picture_other" multiple>
          <div class="image-list">
          @foreach($item->images as $image)
            <div id="image_{{ $image->id }}" class="image-item" style="border: 1px solid #d3e0e9; padding: 5px;display:inline-block;margin: 5px">
              <img src="{{ asset($image->picture_thumb) }}" style="width: 100px; height: 100px;" alt="{{ $image->alt }}">
              <div class="group-btn text-center">
                <a href="javascript:void(0);" onclick="app.showImage(this)" title="@lang('app.show_image')" data-url= "{{ asset('uploads/'.$item->link_upload.$image->picture) }}"><i class="fa fa-eye" aria-hidden="true"></i></a>
                <a class="aEdit" href="javascript:void(0);" onclick="app.editImage(this)" title="@lang('app.edit')" data-url= "{{ asset('uploads/'.$item->link_upload.$image->picture) }}" data-title= "{{ $image->alt }}" data-id= {{ $image->id }}><i class="fa fa-pencil" aria-hidden="true"></i></a>
                <a href="javascript:void(0);" onclick="app.removeImage(this,{{ $image->id }})" title="@lang('app.delete')"><i class="fa fa-trash" aria-hidden="true"></i></a>
              </div>
            </div>
          @endforeach
          </div>
          <div id="pictureOtherTmp" style="margin: 10px 0px;">
          </div>
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
        <input type="checkbox" name="type[]" value="{{ $type->id }}" id="type_{{ $type->id }}" {{ in_array($type->id, $item->type_arr) ? 'checked="checked"' : ''}}>
        <label for="type_{{ $type->id }}">{{ $type->title }}</label> &nbsp;&nbsp;
        @endforeach
        </div>
      </div>
      <hr>
      <div class="form-group">
        <h4><label class="control-label strong">@lang('app.parent')</label></h4>
        <select class="form-control" multiple name="parent_nav[]" style="height: 200px;">
          <option value="">@lang('app.choose_group')</option>
          @foreach($groups as $_group)
          <option value="{{ $_group->id }};{{ $_group->parent_nav }}" {{ in_array($_group->id, $item->parent_arr) ? 'selected' : ''}}>{{ $_group->title }}</option>
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
                <input class="form-control" type="number" name="price" id="price" value="{{ $item->price }}">
                <span class="input-group-addon">{{ config('app.currency') }}</span>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <label class="control-label">@lang('app.price_old')</label>
            <div class="controls">
              <div class="input-group">
                <input class="form-control" type="number" name="price_old" id="price_old" value="{{ $item->price_old }}">
                <span class="input-group-addon">{{ config('app.currency') }}</span>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <label class="control-label">@lang('app.price_si')</label>
            <div class="controls">
              <div class="input-group">
                <input class="form-control" type="number" name="price_si" id="price_si" value="{{ $item->price_si }}">
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
                <input class="form-control" name="item_code" id="item_code" type="text" value="{{ $item->item_code }}">
              </div>
            </div>
            <div class="col-sm-6">
              <label class="control-label">@lang('app.barcode')<span class="note">@lang('app.barcode_note')</span></label>
              <div class="controls">
                <input class="form-control" name="barcode" id="barcode" type="text" value="{{ $item->barcode }}">
              </div>
            </div>
          </div>
          <div class="row top15">
            <div class="col-sm-6">
              <label class="control-label">@lang('app.manager_inventory')</label>
              <div class="controls">
                <select class="form-control inventory-management" name="manager_inventory">
                  <option selected="selected" value="0" {{ ($item->manager_inventory == 0) ? 'selected' : '' }}>@lang('app.not_manager_inventory')</option>
                  <option value="1" {{ ($item->manager_inventory == 1) ? 'selected' : '' }}>@lang('app.allow_manager_inventory')</option>
                </select>
              </div>
            </div>
            <div class="inventory col-sm-3">
              <label class="control-label">@lang('app.quantity')</label>
              <div class="controls">
                <input class="form-control" type="number" value="{{ $item->inventory }}" name="inventory" id="inventory">
              </div>
            </div>
            <div class="col-sm-3"></div>
            <div class="controls col-sm-12 inventory-policy">
              <div class="checkbox">
                <label>
                <input type="checkbox" name="inventory_policy" id="inventory_policy" value="{{ $item->inventory_policy }}" checked="checked"> @lang('app.cpinventory')
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
          <input class="form-control seo-placeholder" id="meta_title" name="meta_title" type="text" value="{{ $item->meta_title }}" placeholder="" onkeyup="app.countChar(this);"  maxlength="70">
        </div>
      </div>
      <div class="form-group">
        <div>
          <label class="control-label strong" for="meta_keywords">@lang('app.meta_keywords')</label>
          <span class="pull-right">@lang('app.num_char_used'): <b class="bind-char">0</b>/160</span>
        </div>
        <div class="controls">
          <input class="form-control seo-placeholder" id="meta_keywords" name="meta_keywords" type="text" value="{{ $item->meta_keywords }}" placeholder="" onkeyup="app.countChar(this);" maxlength="160">
        </div>
      </div>
      <div class="form-group">
        <div>
          <label class="control-label strong" for="meta_description">@lang('app.meta_description')</label>
          <span class="pull-right">@lang('app.num_char_used'): <b class="bind-char">0</b>/160</span>
        </div>
        <div class="controls">
          <textarea class="form-control seo-placeholder" cols="20" id="meta_description" name="meta_description" placeholder="" rows="2" onkeyup="app.countChar(this);" maxlength="160">{{ $item->meta_description }}</textarea>
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
            <input type="radio" name="showhi" id="showhi" value="1" {{ ($item->showhi == 1) ?  'checked="checked"' : ''}} >@lang('app.show')
          </label>
        </div>
        <div class="radio">
          <label>
            <input type="radio" name="showhi" id="showhi" value="0" {{ ($item->showhi == 0) ?  'checked="checked"' : ''}}>@lang('app.hide')
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

<!-- Modal -->
<div class="modal fade" id="productImageShowModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="modalLabel">@lang('app.'.config('app.module').'') - {{ $item->title }}</h4>
      </div>
      <div class="modal-body text-center">
        <img src="" style="max-width: 100%">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">@lang('app.close')</button>
      </div>
    </div>
  </div>
</div>
<!-- Modal -->
<div class="modal fade" id="productImageEditModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="modalLabel">@lang('app.'.config('app.module').'') - {{ $item->title }}</h4>
      </div>
      <div class="modal-body text-center">
        <img src="" style="max-width: 100%; width: 200px;margin-bottom: 20px;">
        <input type="text" name="alt" id="alt" class="form-control">
        <input type="hidden" name="imageId" id="imageId" value="">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">@lang('app.close')</button>
        <a href="javascript:void(0);" onclick="app.editImageHandle($('#imageId').val())" class="btn btn-primary">@lang('app.save')</a>
      </div>
    </div>
  </div>
</div>
@endsection