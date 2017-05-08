@extends(config('app.dir_view').'.layouts.app')
@section('title')
{{ $item->title }} - @lang('app.'. config('app.module'))
@endsection
@section('content')
@if($status == 1)
<div class="alert alert-success">
  <strong>@lang('app.'. config('app.module'))!</strong> @lang('app.update_success')
</div>
@endif
<form method="POST" enctype="multipart/form-data">
  <div class="row">
    <div class="col-md-12">
      <div class="btn-group pull-right">
        <a class="btn btn-primary" href=" {{ url('backend/blog_group/create') }} ">@lang('app.create')</a>
        <button class="btn btn-primary" type="submit">@lang('app.save')</button>
      </div>
    </div>
  </div>
  <hr>
  <div class="panel panel-default panel-light">
    <div class="panel-body">
      <div class="form-group">
        <label class="control-label strong" for="title">@lang('app.title'):</label>
        <div class="controls">
          <input class="form-control" id="title" name="title" placeholder="Nhập tên danh mục" type="text" value="{{ $item->title }}" required>
        </div>
      </div>
      <div class="form-group">
        <label class="control-label strong" for="title">@lang('app.picture'):</label>
        <div class="controls">
          <input type="file" name="picture" id="picture">
          <div id="pictureTmp" style="margin: 10px 0px;"><img src="{{ asset($item->picture_thumb) }}" alt="{{ $item->title }}"></div>
        </div>
      </div>
      <div class="form-group">
        <label>@lang('app.short'):</label>
        <textarea id="short" name="short">{{ $item->short }}</textarea>
      </div>
      <div class="form-group">
        <label>@lang('app.content'):</label>
        <textarea id="content" name="content">{{ $item->content }}</textarea>
      </div>
      <div class="form-group">
        <label>@lang('app.parent')</label>
        <select class="form-control" multiple name="parent_nav[]">
          <option value="" selected>@lang('app.choose_group')</option>
          @foreach($groups as $_group)
            <option value="{{ $_group->id }}" {{ in_array($_group->id, $item->parent_nav_arr) ? "selected" : "" }}>{{ $_group->title }}</option>
          @endforeach
        </select>
      </div>
    </div>
  </div>
  <div class="panel panel-default panel-light">
    <div class="panel-body">
      <div class="form-group">
        <div>
          <label class="control-label strong" for="meta_title">@lang('app.meta_title')</label>
          <span class="pull-right">@lang('app.num_char_used'): <b class="bind-char">0</b>/70</span>
        </div>
        <div class="controls">
          <input class="form-control seo-placeholder" id="meta_title" name="meta_title" type="text" value="{{ $item->meta_title }}" placeholder="" onkeyup="app.countChar(this);" maxlength="70">
        </div>
      </div>
      <div class="form-group">
        <div>
          <label class="control-label strong" for="meta_keywords">@lang('app.meta_keywords')</label>
          <span class="pull-right">@lang('app.num_char_used'): <b class="bind-char">0</b>/160</span>
        </div>
        <div class="controls">
          <input class="form-control seo-placeholder" id="meta_keywords" name="meta_keywords" type="text" value="{{ $item->meta_keywords }}" placeholder="" onkeyup="app.countChar(this);" maxlength="70">
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
  <div class="panel panel-default panel-light">
    <div class="panel-body">
      <label class="control-label strong" for="meta_description">@lang('app.showhi')</label>
      <div class="controls">
        <div class="radio">
          <label>
            <input type="radio" name="showhi" id="showhi" value="1" {{ $item->showhi == 1 ? 'checked="checked"' : '' }} >@lang('app.show')
          </label>
        </div>
        <div class="radio">
          <label>
            <input type="radio" name="showhi" id="showhi" value="0" {{ $item->showhi == 0 ? 'checked="checked"' : '' }}>@lang('app.hide')
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
<script src="{{ asset('assets/tinymce/tinymce.min.js') }}"></script>
<script type="text/javascript">
  tinymce.init({
    selector: "textarea#short",
    theme: "modern",
    height: 200,
    plugins: [
    "advlist autolink link image lists charmap print preview hr anchor pagebreak",
    "searchreplace wordcount visualblocks visualchars insertdatetime media nonbreaking spellchecker",
    "table contextmenu directionality emoticons paste textcolor code"
    ],
    relative_urls: false,
    filemanager_title:"Upload image",
    filemanager_crossdomain: true,
    external_filemanager_path: "{{ asset('library/filemanager') }}/",
    external_plugins: {"filemanager" : "{{ asset('library/filemanager/plugin.min.js') }}" } ,
    image_advtab: true,
    toolbar1: "undo redo | bold italic underline | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | styleselect",
    toolbar2: " | image | media | link unlink anchor | print preview | code"
  });
  tinymce.init({
    selector: "textarea#content",
    theme: "modern",
    height: 300,
    plugins: [
    "advlist autolink link image lists charmap print preview hr anchor pagebreak",
    "searchreplace wordcount visualblocks visualchars insertdatetime media nonbreaking spellchecker",
    "table contextmenu directionality emoticons paste textcolor code"
    ],
    relative_urls: false,
    filemanager_title:"Upload image",
    filemanager_crossdomain: true,
    external_filemanager_path: "{{ asset('library/filemanager') }}/",
    external_plugins: {"filemanager" : "{{ asset('library/filemanager/plugin.min.js') }}" } ,
    image_advtab: true,
    toolbar1: "undo redo | bold italic underline | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | styleselect",
    toolbar2: " | image | media | link unlink anchor | print preview | code"
  });
</script>
@endsection