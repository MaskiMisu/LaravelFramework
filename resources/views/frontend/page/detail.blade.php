@extends('frontend.layouts.app')
@section('title', $item->title)
@section('module_picture', '//bizweb.dktcdn.net/100/075/918/themes/220564/assets/about_heading_bg.jpg?1483497950031')
@section('content')
@include('frontend.includes.sidebar')
<div id="mainbar" class="col-md-9 col-sm-9 col-xs-12 ">
  <div class="article ">
    <div class=" article-detail">
      <h1 class="title">{!! $item->title !!}</h1>
      <div class="clear"></div>
      <div class="content">{!! $item->content !!}</div>
    </div>
  </div>
</div>
@stop