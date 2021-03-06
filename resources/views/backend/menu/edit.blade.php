@extends(config('app.dir_view').'.layouts.app')
@section('title')
@lang('app.create') - @lang('app.menu')
@endsection
@section('content')
@if($status == 1)
<div class="alert alert-success">
  <strong>@lang('app.menu')!</strong> @lang('app.create_success')
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
    <div class="panel-heading">@lang('app.menu_info')</div>
    <div class="panel-body">
      <div class="form-group">
        <label class="control-label strong" for="Title">Tên</label>
        <div class="controls">
          <input class="form-control" id="title" name="title" placeholder="vd: Menu chính, Footer,..." type="text" value="{!! $item->title !!}" required>
        </div>
      </div>
      <div class="form-group">
        <label class="control-label strong" for="Alias">Đường dẫn / Alias</label>
        <div class="controls">
          <input class="form-control" id="slug" name="slug" type="text" value="{!! $item->slug !!}" placeholder="" required>
        </div>
      </div>
    </div>
  </div>
  <div class="panel panel-info">
    <div class="panel-heading">@lang('app.menu_url')</div>
    <div class="panel-body">
      <div class="row">
        <div class="col-md-12 text-right">
          <a href="javascript:void(0);" class="btn btn-primary" onclick="app.addLink()">@lang('app.add_link')</a>
        </div>
      </div>
      <hr>
      <div class="row">
        <div class="col-md-1">
        </div>
        <div class="col-md-3">
          <label>@lang('app.title')</label>
        </div>
        <div class="col-md-3">
          <label>@lang('app.menu_url_to')</label>
        </div>
      </div>
      <div class="list-links" id="sortable">
        @if(count($menus) > 0 )
          @foreach($menus as $menu)
            <div id="links-row" class="form-group" style="cursor: pointer;">
              <div class="row">
                <div class="col-md-1">
                  <i class="fa fa-bars" aria-hidden="true"></i>
                </div>
                <div class="col-md-3">
                  <input name="linksTitle[id{!! $menu->id !!}]" placeholder="Nhập tên liên kết" class="form-control form-control smaller" value="{!! $menu->title !!}">
                </div>
                <div class="col-md-3">
                  <select id="links" name="linksContent[id{!! $menu->id !!}]" class="form-control" onchange="app.changeLink(this)">
                    @foreach($links as $link)
                      <option value="{!! $link['type'] !!};{!! $link['slug'] !!}" {!! ($link['type'] == $menu->type) ? 'selected' :'' !!}>{!! $link['title'] !!}</option>
                    @endforeach
                  </select>
                </div>
                <div id="link-generate" class="col-md-3">
                  <select class="form-control {!!!isset($menu->link_c) ? 'hide' : '' !!}" name="linksSlug[id{!! $menu->id !!}]" id="linksSlug">
                    <option value="">{!! isset($menu->choose) ? $menu->choose : '' !!}</option>
                    @if(isset($menu->link_c))
                      @foreach($menu->link_c as $link_c)
                        <option value="{!! $link_c->slug !!}" {!! ($link_c->slug == $menu->slug) ? 'selected' :'' !!}>{!! $link_c->title !!}</option>
                      @endforeach
                    @endif
                  </select>
                  <input type="text" name="linksWeb[id{!! $menu->id !!}]" id="linksWeb" class="form-control {!! ($menu->type != 'web') ? 'hide' : '' !!}" value="{!! $menu->slug !!}">
                </div>
                <div class="col-md-2">
                  <a class="btn btn-default" href="javascript:void(0);" onclick="app.removeLink(this)"><i class="fa fa-trash" aria-hidden="true" style="color: red"></i></a>
                </div>
              </div>
            </div>
          @endforeach
        @else
          <div id="links-row" class="form-group" style="cursor: pointer;">
            <div class="row">
              <div class="col-md-1">
                <i class="fa fa-bars" aria-hidden="true"></i>
              </div>
              <div class="col-md-3">
                <input name="linksTitle[]" placeholder="Nhập tên liên kết" class="form-control form-control smaller">
              </div>
              <div class="col-md-3">
                <select id="links" name="linksContent[]" class="form-control" onchange="app.changeLink(this)">
                  @foreach($links as $link)
                    <option value="{!! $link['type'] !!};{!! $link['slug'] !!}">{!! $link['title'] !!}</option>
                  @endforeach
                </select>
              </div>
              <div id="link-generate" class="col-md-3">
                <select class="form-control hide" name="linksSlug[]" id="linksSlug">
                  <option value=""></option>
                </select>
                <input type="text" name="linksWeb[]" id="linksWeb" class="form-control hide">
              </div>
              <div class="col-md-2">
                <a class="btn btn-default" href="javascript:void(0);" onclick="app.removeLink(this)"><i class="fa fa-trash" aria-hidden="true" style="color: red"></i></a>
              </div>
            </div>
          </div>
        @endif
        <p class="empty_row text-center hide">@lang('app.empty_row')</p>
      </div>
    </div>
  </div>
  <hr>
  <div class="row">
    <div class="col-md-12">
      <div class="btn-group pull-left">
        <a class="btn btn-danger {!! (count($menus) > 0) ? 'hide' :'' !!}" href="{!! @url('backend/menu/'.$item->id.'/destroy') !!}">@lang('app.delete')</a>
      </div>
      <div class="btn-group pull-right">
        <button class="btn btn-primary" type="submit">@lang('app.save')</button>
      </div>
    </div>
  </div>
  <input type="hidden" name="_token" value="{{ csrf_token() }}">
  <input type="hidden" name="parent" value="{{ $item->id }}">
  <input type="hidden" name="level" value="{{ $item->level }}">
  <input type="hidden" name="ids" value="{{ $item->item_c }}">
</form>
<div id="links-dup" class="hide">
  <div id="links-row" class="form-group" style="cursor: pointer;">
    <div class="row">
      <div class="col-md-1">
        <i class="fa fa-bars" aria-hidden="true"></i>
      </div>
      <div class="col-md-3">
        <input name="linksTitle[]" placeholder="Nhập tên liên kết" class="form-control form-control smaller">
      </div>
      <div class="col-md-3">
        <select id="links" name="linksContent[]" class="form-control" onchange="app.changeLink(this)">
          @foreach($links as $link)
            <option value="{!! $link['type'] !!};{!! $link['slug'] !!}">{!! $link['title'] !!}</option>
          @endforeach
        </select>
      </div>
      <div id="link-generate" class="col-md-3">
        <select class="form-control hide" name="linksSlug[]" id="linksSlug">
          <option value="">@lang('app.select_link')</option>
        </select>
        <input type="text" name="linksWeb[]" id="linksWeb" class="form-control hide">
      </div>
      <div class="col-md-2">
        <a class="btn btn-default" href="javascript:void(0);" onclick="app.removeLink(this)"><i class="fa fa-trash" aria-hidden="true" style="color: red"></i></a>
      </div>
    </div>
  </div>
</div>
@endsection