<?php
  use App\Http\Helpers\Helper;
  $menu = Helper::generateMenu(10);
?>
<!DOCTYPE html>
<html lang="vi">
@include('frontend.includes.head')
<body>
  @include('frontend.includes.header')
  @if( config('frontend.module') == 'home')
  	<section class="awe-section-1">	
			<div class="container hidden-xs">
				<a href="#" class="img1 inline-block"><img src="//bizweb.dktcdn.net/100/177/134/themes/235073/assets/banner.jpg?1492652132636" alt="img-responsive"></a>
			</div>
		</section>
		<section class="awe-section-2">	
	<div class="container xs-full">
		<div class="home-slider owl-carousel owl-loaded owl-drag" data-lg-items="1" data-md-items="1" data-sm-items="1" data-xs-items="1" data-margin="0" data-dot="true">
		
		<div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 2820px;"><div class="owl-item active" style="width: 940px;"><div class="item">
				<a href="#" class="clearfix">
					<img src="//bizweb.dktcdn.net/100/177/134/themes/235073/assets/slider_1.jpg?1492652132636" alt="slider-1">
				</a>	
			</div></div><div class="owl-item" style="width: 940px;"><div class="item">
				<a href="#" class="clearfix">
					<img src="//bizweb.dktcdn.net/100/177/134/themes/235073/assets/slider_2.jpg?1492652132636" alt="slider-2">
				</a>	
			</div></div><div class="owl-item" style="width: 940px;"><div class="item">
				<a href="#" class="clearfix">
					<img src="//bizweb.dktcdn.net/100/177/134/themes/235073/assets/slider_3.jpg?1492652132636" alt="slider-3">
				</a>	
			</div></div></div></div><div class="owl-nav disabled"><div class="owl-prev">prev</div><div class="owl-next">next</div></div><div class="owl-dots"><div class="owl-dot active"><span></span></div><div class="owl-dot"><span></span></div><div class="owl-dot"><span></span></div></div></div><!-- /.products -->
		</div>
	</section>
  @endif
  @yield('content')
</body>
@include('frontend.includes.footer')
</html>
