<div class="panel panel-default panel-light">
  <div class="pull-body" style="padding: 10px;">
    <form method="POST" enctype="multipart/form-data">
      <div class="row">
        @if( in_array(config('app.module'), ['blog_group', 'blog', 'product_group', 'product', 'banner']))
          <div class="col-md-3">
            <div class="row">
              <label class="col-md-3">Nhóm:</label>
              <div class="col-md-9">
                <select name="parent" class="form-control">
                  <option value="">@lang('app.choose_group')</option>
                  @foreach($groupsSearch as $item)
                  <option value="{{ $item->id }}" {{ (Request::input('parent')== $item->id ) ? 'selected' : ''}} >{{ $item->title }}</option>
                  @endforeach
                </select>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="row">
              <label class="col-md-4">@lang('app.showhi'):</label>
              <div class="col-md-8">
                <select name="showhi" class="form-control">
                  <option value="">@lang('app.showhi')</option>
                  <option value="1" {{ (Request::input('showhi')== '1' ) ? 'selected' : ''}}>@lang('app.show')</option>
                  <option value="0" {{ (Request::input('showhi')== '0' ) ? 'selected' : ''}}>@lang('app.hide')</option>
                </select>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <input class="form-control" placeholder="@lang('app.keywords')" name="keywords" id="keywords" type="text" value="{{ Request::input('keywords') }}">
          </div>
        @else
          <div class="col-md-4">
          <div class="row">
            <label class="col-md-4">@lang('app.showhi'):</label>
            <div class="col-md-8">
              <select name="showhi" class="form-control">
                <option value="">@lang('app.showhi')</option>
                <option value="1" {!! (Request::input('showhi')== '1' ) ? 'selected' : ''!!}>@lang('app.show')</option>
                <option value="0" {!! (Request::input('showhi')== '0' ) ? 'selected' : ''!!}>@lang('app.hide')</option>
              </select>
            </div>
          </div>
        </div>
        <div class="col-md-3">
          <input class="form-control" placeholder="@lang('app.keywords')" name="keywords" id="keywords" type="text" value="{!! Request::input('keywords') !!}">
        </div>
        @endif
        <div class="col-md-2">
          <button class="btn btn-primary">@lang('app.search')</button>
        </div>
      </div>
      <input type="hidden" name="_token" value="{{ csrf_token() }}">
      <input type="hidden" name="_tokenAction" value="search">
    </form>
  </div>
</div>