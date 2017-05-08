@extends(config('app.dir_view').'.layouts.app')
@section('title')
@lang('app.menu')
@endsection
@section('content')
<div class="row">
  <div class="col-md-12">
    <div class="btn-group pull-right">
      <a href="{{ url('backend/'. config('app.module') .'/create') }}" class="btn btn-primary">@lang('app.create')</a>
    </div>
  </div>
</div>
<hr>
{!! $menus !!}
@endsection