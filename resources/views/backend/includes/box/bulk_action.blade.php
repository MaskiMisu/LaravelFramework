<div id="bulkAction">
  <div class="row">
    <div class="col-md-4">
      <select name="bAction" class="form-control">
        @if( config('app.module') == 'blog' )
          <option value="">@lang('app.choose_action')</option>
          @if(Request::is('backend/'.config('app.module').'/trash'))
          <option value="delete;0">@lang('app.delete_re')</option>
          @endif
          <option value="showhi;1">@lang('app.show')</option>
          <option value="showhi;0">@lang('app.hide')</option>
          @if(Request::is('backend/'.config('app.module').'/trash'))
          <option value="delete;1">@lang('app.delete')</option>
          @else
          <option value="delete;0">@lang('app.move_to_trash')</option>
          @endif
        @endif
      </select>
      <br />
    </div>
    <div class="col-md-2">
      <button class="btn btn-primary">@lang('app.submit')</button>
    </div>
  </div>
</div>