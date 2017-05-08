@extends('frontend.layouts.app')
@section('module_title')Contact @endsection
@section('module_picture')//bizweb.dktcdn.net/100/075/918/themes/220564/assets/contact_heading_bg.jpg?1483497950031 @endsection
@section('content')
@include('frontend.includes.sidebar')
<div class="col-md-12 col-sm-12 col-xs-12">
  <h4 style="padding: 10px 0; font-size: 18px; color:#333; margin:0">CHÚNG TÔI Ở ĐÂY</h4>
</div>

<div class="col-md-5 col-sm-5 col-xs-12">

  <p>
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d979.6977785509154!2d106.67661599999998!3d10.827291499999992!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528fdf4930535%3A0xcbb44a8dbaa24d8a!2zSOG6u20gNjEgUXVhbmcgVHJ1bmcsIHBoxrDhu51uZyAxMCwgR8OyIFbhuqVwLCBI4buTIENow60gTWluaCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1440672170562" width="100%" height="245" frameborder="0" style="border:0" allowfullscreen=""></iframe>
  </p>

</div>

<div class="col-md-7 col-sm-7 col-xs-12">
  {!! $item->content !!}
</div>
<div class="clearfix"></div>

<div class="col-md-12 col-sm-12 col-xs-12">
  <h4 style="padding: 10px 0; font-size: 18px; color:#333; margin:0">@lang('contact.send_contact')</h4>
</div>

<form accept-charset="UTF-8" action="/contact" id="contact" method="post">
  <input name="FormType" type="hidden" value="contact">
  <input name="utf8" type="hidden" value="true">

  <div class="padT10">
    <div class="col-xs-12 col-sm-6 col-md-6">
      <div class="" style="border-right: solid 1px #ccc">
        <div class="form-group">

          <div class="col-xs-12 col-sm-12 col-md-12">
            <label>Họ Tên</label>
            <input required="" type="text" name="contact[name]" value="" class="form-control">
          </div>
          <div class="clearfix"></div>
        </div>
        <div class="form-group">
          <div class="col-xs-12 col-sm-6 col-md-6">
            <label for="text-email">Email</label>
            <input required="" type="email" id="text-email" class="form-control" name="contact[email]" value="">
            <span class="field-validation-valid" data-valmsg-for="From" data-valmsg-replace="true"></span>
          </div>
          <div class="col-xs-12 col-sm-6 col-md-6">
            <label for="text-phone">Điện thoại<span class="option-field">&nbsp;(Tùy chọn)</span></label>
            <input required="" type="text" id="text-phone" class="form-control" name="contact[phone]">
          </div>
          <div class="clearfix"></div>
        </div>

        <div class="form-group">
          <div class="col-xs-12 col-sm-12 col-md-12">
            <label for="text-comment">Nội dung<span class="option-field">&nbsp;(Tùy chọn)</span></label>
            <textarea name="contact[body]" id="text-comment" class="form-control"></textarea>

          </div>
          <div class="clearfix"></div>
        </div>
        <div class="form-group padT10">
          <div class="col-xs-12 col-sm-6 col-md-6">
            <input class="btn-submit" type="submit" data-toggle="modal" data-target="#question-confirm-modal" value="Gửi yêu cầu">
          </div>
          <div class="clearfix"></div>
        </div>
      </div>
    </div>

    <div class="col-xs-12 col-sm-6 col-md-6">
      <ul class="list list-excection">
        <li class="list-excection-item">Vui lòng điền đầy đủ thông tin theo yêu cầu để chúng tôi có thể hỗ trợ quý khách tốt nhất</li>
        <li class="list-excection-item none-list-style">
          <div class="hotline-contact padT10">
            <p><img src="//bizweb.dktcdn.net/100/075/918/themes/220564/assets/icon_contact_hotline.png?1483497950031"> <strong class="phone-number padL5 f32">0987654321</strong></p>
          </div>
        </li>
      </ul>
    </div>
    <div class="clearfix padB10"></div>
  </div>
</form>
@endsection