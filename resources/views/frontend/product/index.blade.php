@extends('frontend.layouts.app')
@section('content')
<section class="bread-crumb">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<ul class="breadcrumb" itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb">					
					<li class="home">
						<a itemprop="url" href="/"><span itemprop="title">Trang chủ</span></a>						
						<span><i class="fa fa-angle-right"></i></span>
					</li>
					
					
					<li><strong><span itemprop="title"> Quà giáng sinh</span></strong></li>
						
						
				</ul>
			</div>
		</div>
	</div>
</section>
<div class="container">
	<div class="row">					
		<section class="main_container collection col-lg-9 col-md-9 col-lg-push-3 col-md-push-3">
			<h1 class="hidden title-head margin-top-0">Quà giáng sinh</h1>			
			<div class="category-products products">
					
				<div class="sortPagiBar">
	<div class="row">
		<div class="col-xs-5 col-sm-7">						
			<div class="view-mode">
				<a href="javascript:;" data-view="grid">
					<b class="btn button-view-mode view-mode-grid active ">
						<i class="fa fa-th" aria-hidden="true"></i>					
					</b>
					<span>Lưới</span>
				</a>
				<a href="javascript:;" data-view="list" onclick="switchView('list')">
					<b class="btn button-view-mode view-mode-list ">
						<i class="fa fa-bars" aria-hidden="true"></i>
					</b>
					<span>Danh sách</span>
				</a>
				<div class="tt hidden-sm hidden-xs">
					
					
					
						
					
					

					

					
					
					
					<span class="hidden-sm hidden-xs">
						Hiển thị 1 - 24 trong tổng số 12 sản phẩm</span>
				</div>
			</div>
		</div>
		<div class="col-xs-7 col-sm-5 text-xs-left text-sm-right">
			<div id="sort-by">
				<label class="left hidden-xs">Sắp xếp: </label>
				<ul>
					<li><span>Thứ tự</span>
						<ul>                    
							<li><a href="javascript:;" onclick="sortby('default')">Mặc định</a></li>								
							<li><a href="javascript:;" onclick="sortby('alpha-asc')">A → Z</a></li>
							<li><a href="javascript:;" onclick="sortby('alpha-desc')">Z → A</a></li>
							<li><a href="javascript:;" onclick="sortby('price-asc')">Giá tăng dần</a></li>
							<li><a href="javascript:;" onclick="sortby('price-desc')">Giá giảm dần</a></li>
							<li><a href="javascript:;" onclick="sortby('created-desc')">Hàng mới nhất</a></li>
							<li><a href="javascript:;" onclick="sortby('created-asc')">Hàng cũ nhất</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
				<section class="products-view products-view-grid">
	<div class="row row-noGutter">
		
		
		
		
		
		
		 
		
		
		
						
		<div class="col-xs-6 col-sm-4 col-lg-3">
			
<div class="product-box">	
	<h3 class="product-name"><a href="/day-chuyen-thanh-gia" title="Dây chuyền thánh giá">Dây chuyền thánh giá</a></h3>
	<div class="bizweb-product-reviews-badge" data-id="5611644"><div class="bizweb-product-reviews-star" data-score="0" data-number="5" title="Not rated yet!" style="color: rgb(255, 190, 0);"><i data-alt="1" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="2" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="3" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="4" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="5" class="star-off-png" title="Not rated yet!"></i><input name="score" type="hidden" readonly=""></div><div><p>0</p></div><div><img src="https://productreviews.bizwebapps.vn//assets/images/user.png" width="18" height="17"></div></div>
	<div class="product-thumbnail">		
		
		<a href="/day-chuyen-thanh-gia" title="Dây chuyền thánh giá">
			<img src="//bizweb.dktcdn.net/thumb/medium/100/177/134/products/pcr13-00000009c131-0086814-w1-sq-e490d6ca-6122-4933-95fc-d5308df04b11-f9520d3e-cdf4-4a84-b0fd-d78a087467a8-ea92d030-6681-4c56-9f77-e0e6f6fa4812.jpg?v=1487129520190" alt="Dây chuyền thánh giá" class="bethua" style="padding-top: 12px;">
		</a>	
	</div>
	<div class="product-info a-left">		
		
		
		
		<div class="price-box clearfix">

			<div class="special-price f-left">
				<span class="price product-price">390.000₫</span>
			</div>											
		</div>
		
		
	</div>
	<div class="product-action clearfix">
		<form action="/cart/add" method="post" class="variants form-nut-grid" data-id="product-actions-5611644" enctype="multipart/form-data">
			<div class="a-center">
				<span class="action-info">Chọn hoạt động</span>
			</div>
			<div>
				
				<a data-title="Yêu thích" class="btn btn-circle iWishAdd iwishAddWrapper" href="javascript:;" data-customer-id="0" data-product="5611644" data-variant="8992110"><i class="fa fa-heart"></i></a>
				<a data-title="Bỏ yêu thích" class="btn btn-circle iWishAdded iwishAddWrapper iWishHidden" href="javascript:;" data-customer-id="0" data-product="5611644" data-variant="8992110"><i class="fa fa-heart"></i></a>
				
				
				<input type="hidden" name="variantId" value="8992110">
				<button class="btn-buy btn-cart btn btn-circle left-to add_to_cart " data-title="Thêm vào giỏ hàng">
					<i class="fa fa-shopping-basket"></i>
				</button>
				
				
				<a data-title="Xem nhanh" href="/day-chuyen-thanh-gia" data-handle="day-chuyen-thanh-gia" class="btn-circle btn_view btn  right-to quick-view">
					<i class="fa fa-search-plus"></i>
				</a>
				
			</div>
		</form>
	</div>

</div>			
		</div>		
						
		<div class="col-xs-6 col-sm-4 col-lg-3">
<div class="product-box">	
	<h3 class="product-name"><a href="/vong-tay-trai-tim" title="Vòng tay trái tim">Vòng tay trái tim</a></h3>
	<div class="bizweb-product-reviews-badge" data-id="5611625"><div class="bizweb-product-reviews-star" data-score="3" data-number="5" title="regular" style="color: rgb(255, 190, 0);"><i data-alt="1" class="star-on-png" title="regular"></i>&nbsp;<i data-alt="2" class="star-on-png" title="regular"></i>&nbsp;<i data-alt="3" class="star-on-png" title="regular"></i>&nbsp;<i data-alt="4" class="star-off-png" title="regular"></i>&nbsp;<i data-alt="5" class="star-off-png" title="regular"></i><input name="score" type="hidden" value="3" readonly=""></div><div><p>1</p></div><div><img src="https://productreviews.bizwebapps.vn//assets/images/user.png" width="18" height="17"></div></div>
	<div class="product-thumbnail">		
		
		<a href="/vong-tay-trai-tim" title="Vòng tay trái tim">
			<img src="//bizweb.dktcdn.net/thumb/medium/100/177/134/products/pcr14-15p40-smlss-cp-sq-292b7e32-7062-41fe-b570-091bebd585a3-0740a247-b415-4109-a686-7c32c972b200.jpg?v=1487129460710" alt="Vòng tay trái tim" class="bethua" style="padding-top: 12px;">
		</a>	
	</div>
	<div class="product-info a-left">		
		
		
		
		<div class="price-box clearfix">

			<div class="special-price f-left">
				<span class="price product-price">390.000₫</span>
			</div>											
		</div>
		
		
	</div>
	<div class="product-action clearfix">
		<form action="/cart/add" method="post" class="variants form-nut-grid" data-id="product-actions-5611625" enctype="multipart/form-data">
			<div class="a-center">
				<span class="action-info">Chọn hoạt động</span>
			</div>
			<div>
				
				<a data-title="Yêu thích" class="btn btn-circle iWishAdd iwishAddWrapper" href="javascript:;" data-customer-id="0" data-product="5611625" data-variant="8992087"><i class="fa fa-heart"></i></a>
				<a data-title="Bỏ yêu thích" class="btn btn-circle iWishAdded iwishAddWrapper iWishHidden" href="javascript:;" data-customer-id="0" data-product="5611625" data-variant="8992087"><i class="fa fa-heart"></i></a>
				
				
				<input type="hidden" name="variantId" value="8992087">
				<button class="btn-buy btn-cart btn btn-circle left-to add_to_cart " data-title="Thêm vào giỏ hàng">
					<i class="fa fa-shopping-basket"></i>
				</button>
				
				
				<a data-title="Xem nhanh" href="/vong-tay-trai-tim" data-handle="vong-tay-trai-tim" class="btn-circle btn_view btn  right-to quick-view">
					<i class="fa fa-search-plus"></i>
				</a>
				
			</div>
		</form>
	</div>

</div>			
		</div>			
		<div class="col-xs-6 col-sm-4 col-lg-3">
<div class="product-box">	
	<h3 class="product-name"><a href="/vong-tay-thoi-trang" title="Vòng tay thời trang">Vòng tay thời trang</a></h3>
	<div class="bizweb-product-reviews-badge" data-id="5611609"><div class="bizweb-product-reviews-star" data-score="0" data-number="5" title="Not rated yet!" style="color: rgb(255, 190, 0);"><i data-alt="1" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="2" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="3" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="4" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="5" class="star-off-png" title="Not rated yet!"></i><input name="score" type="hidden" readonly=""></div><div><p>0</p></div><div><img src="https://productreviews.bizwebapps.vn//assets/images/user.png" width="18" height="17"></div></div>
	<div class="product-thumbnail">		
		
		<a href="/vong-tay-thoi-trang" title="Vòng tay thời trang">
			<img src="//bizweb.dktcdn.net/thumb/medium/100/177/134/products/pcr12-00000008d161-0074868-w1-sq-905030ab-062d-45aa-bf73-02b5f32d4bfd.jpg?v=1487129383427" alt="Vòng tay thời trang" class="bethua" style="padding-top: 12px;">
		</a>	
	</div>
	<div class="product-info a-left">		
		
		
		
		<div class="price-box clearfix">

			<div class="special-price f-left">
				<span class="price product-price">490.000₫</span>
			</div>											
		</div>
		
		
	</div>
	<div class="product-action clearfix">
		<form action="/cart/add" method="post" class="variants form-nut-grid" data-id="product-actions-5611609" enctype="multipart/form-data">
			<div class="a-center">
				<span class="action-info">Chọn hoạt động</span>
			</div>
			<div>
				
				<a data-title="Yêu thích" class="btn btn-circle iWishAdd iwishAddWrapper" href="javascript:;" data-customer-id="0" data-product="5611609" data-variant="8992070"><i class="fa fa-heart"></i></a>
				<a data-title="Bỏ yêu thích" class="btn btn-circle iWishAdded iwishAddWrapper iWishHidden" href="javascript:;" data-customer-id="0" data-product="5611609" data-variant="8992070"><i class="fa fa-heart"></i></a>
				
				
				<input type="hidden" name="variantId" value="8992070">
				<button class="btn-buy btn-cart btn btn-circle left-to add_to_cart " data-title="Thêm vào giỏ hàng">
					<i class="fa fa-shopping-basket"></i>
				</button>
				
				
				<a data-title="Xem nhanh" href="/vong-tay-thoi-trang" data-handle="vong-tay-thoi-trang" class="btn-circle btn_view btn  right-to quick-view">
					<i class="fa fa-search-plus"></i>
				</a>
				
			</div>
		</form>
	</div>

</div>			
		</div>					
		<div class="col-xs-6 col-sm-4 col-lg-3">
<div class="product-box">	
	<h3 class="product-name"><a href="/vong-trai-tim-kim-cuong" title="Vòng trái tim kim cương">Vòng trái tim kim cương</a></h3>
	<div class="bizweb-product-reviews-badge" data-id="5611505"><div class="bizweb-product-reviews-star" data-score="0" data-number="5" title="Not rated yet!" style="color: rgb(255, 190, 0);"><i data-alt="1" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="2" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="3" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="4" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="5" class="star-off-png" title="Not rated yet!"></i><input name="score" type="hidden" readonly=""></div><div><p>0</p></div><div><img src="https://productreviews.bizwebapps.vn//assets/images/user.png" width="18" height="17"></div></div>
	<div class="product-thumbnail">		
		
		<div class="sale-flash">- 
21% 
</div>
		
		<a href="/vong-trai-tim-kim-cuong" title="Vòng trái tim kim cương">
			<img src="//bizweb.dktcdn.net/thumb/medium/100/177/134/products/pcr13-0000014s138s-seamless-sq.jpg?v=1487129251937" alt="Vòng trái tim kim cương" class="bethua" style="padding-top: 12px;">
		</a>	
	</div>
	<div class="product-info a-left">		
		
		
		

		<div class="price-box clearfix">			
			<div class="special-price f-left">
				<span class="price product-price">550.000₫</span>
			</div>
			
			<div class="old-price">															 
				<span class="price product-price-old">
					700.000₫			
				</span>
			</div>
						
		</div>		
		
		
	</div>
	<div class="product-action clearfix">
		<form action="/cart/add" method="post" class="variants form-nut-grid" data-id="product-actions-5611505" enctype="multipart/form-data">
			<div class="a-center">
				<span class="action-info">Chọn hoạt động</span>
			</div>
			<div>
				
				<a data-title="Yêu thích" class="btn btn-circle iWishAdd iwishAddWrapper" href="javascript:;" data-customer-id="0" data-product="5611505" data-variant="8991905"><i class="fa fa-heart"></i></a>
				<a data-title="Bỏ yêu thích" class="btn btn-circle iWishAdded iwishAddWrapper iWishHidden" href="javascript:;" data-customer-id="0" data-product="5611505" data-variant="8991905"><i class="fa fa-heart"></i></a>
				
				
				<input type="hidden" name="variantId" value="8991905">
				<button class="btn-buy btn-cart btn btn-circle left-to add_to_cart " data-title="Thêm vào giỏ hàng">
					<i class="fa fa-shopping-basket"></i>
				</button>
				
				
				<a data-title="Xem nhanh" href="/vong-trai-tim-kim-cuong" data-handle="vong-trai-tim-kim-cuong" class="btn-circle btn_view btn  right-to quick-view">
					<i class="fa fa-search-plus"></i>
				</a>
				
			</div>
		</form>
	</div>

</div>			
		</div>					
		<div class="col-xs-6 col-sm-4 col-lg-3">
<div class="product-box">	
	<h3 class="product-name"><a href="/coc-tang-sinh-nhat" title="Cốc tặng sinh nhật">Cốc tặng sinh nhật</a></h3>
	<div class="bizweb-product-reviews-badge" data-id="5611397"><div class="bizweb-product-reviews-star" data-score="0" data-number="5" title="Not rated yet!" style="color: rgb(255, 190, 0);"><i data-alt="1" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="2" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="3" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="4" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="5" class="star-off-png" title="Not rated yet!"></i><input name="score" type="hidden" readonly=""></div><div><p>0</p></div><div><img src="https://productreviews.bizwebapps.vn//assets/images/user.png" width="18" height="17"></div></div>
	<div class="product-thumbnail">		
		
		<a href="/coc-tang-sinh-nhat" title="Cốc tặng sinh nhật">
			<img src="//bizweb.dktcdn.net/thumb/medium/100/177/134/products/p0104346b.jpg?v=1487128652603" alt="Cốc tặng sinh nhật" class="bethua" style="padding-top: 12px;">
		</a>	
	</div>
	<div class="product-info a-left">		
		
		
		
		<div class="price-box clearfix">

			<div class="special-price f-left">
				<span class="price product-price">99.000₫</span>
			</div>											
		</div>
		
		
	</div>
	<div class="product-action clearfix">
		<form action="/cart/add" method="post" class="variants form-nut-grid" data-id="product-actions-5611397" enctype="multipart/form-data">
			<div class="a-center">
				<span class="action-info">Chọn hoạt động</span>
			</div>
			<div>
				
				<a data-title="Yêu thích" class="btn btn-circle iWishAdd iwishAddWrapper" href="javascript:;" data-customer-id="0" data-product="5611397" data-variant="8991772"><i class="fa fa-heart"></i></a>
				<a data-title="Bỏ yêu thích" class="btn btn-circle iWishAdded iwishAddWrapper iWishHidden" href="javascript:;" data-customer-id="0" data-product="5611397" data-variant="8991772"><i class="fa fa-heart"></i></a>
				
				
				<input type="hidden" name="variantId" value="8991772">
				<button class="btn-buy btn-cart btn btn-circle left-to add_to_cart " data-title="Thêm vào giỏ hàng">
					<i class="fa fa-shopping-basket"></i>
				</button>
				
				
				<a data-title="Xem nhanh" href="/coc-tang-sinh-nhat" data-handle="coc-tang-sinh-nhat" class="btn-circle btn_view btn  right-to quick-view">
					<i class="fa fa-search-plus"></i>
				</a>
				
			</div>
		</form>
	</div>

</div>			
		</div>					
		<div class="col-xs-6 col-sm-4 col-lg-3">
<div class="product-box">	
	<h3 class="product-name"><a href="/lo-cam-hoa-thuy-tinh-vuong" title="Lọ cắm hoa thủy tinh vuông">Lọ cắm hoa thủy tinh vuông</a></h3>
	<div class="bizweb-product-reviews-badge" data-id="5610447"><div class="bizweb-product-reviews-star" data-score="0" data-number="5" title="Not rated yet!" style="color: rgb(255, 190, 0);"><i data-alt="1" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="2" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="3" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="4" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="5" class="star-off-png" title="Not rated yet!"></i><input name="score" type="hidden" readonly=""></div><div><p>0</p></div><div><img src="https://productreviews.bizwebapps.vn//assets/images/user.png" width="18" height="17"></div></div>
	<div class="product-thumbnail">		
		
		<a href="/lo-cam-hoa-thuy-tinh-vuong" title="Lọ cắm hoa thủy tinh vuông">
			<img src="//bizweb.dktcdn.net/thumb/medium/100/177/134/products/acc-11-va0606-w1-sq-91a57e17-6217-4ea6-b0b0-31137654f1f5-bb795ab9-a0d5-42df-bcb2-4ab368e3f5df.jpg?v=1487125287103" alt="Lọ cắm hoa thủy tinh vuông" class="bethua" style="padding-top: 12px;">
		</a>	
	</div>
	<div class="product-info a-left">		
		
		
		
		<div class="price-box clearfix">

			<div class="special-price f-left">
				<span class="price product-price">150.000₫</span>
			</div>											
		</div>
		
		
	</div>
	<div class="product-action clearfix">
		<form action="/cart/add" method="post" class="variants form-nut-grid" data-id="product-actions-5610447" enctype="multipart/form-data">
			<div class="a-center">
				<span class="action-info">Chọn hoạt động</span>
			</div>
			<div>
				
				<a data-title="Yêu thích" class="btn btn-circle iWishAdd iwishAddWrapper" href="javascript:;" data-customer-id="0" data-product="5610447" data-variant="8990506"><i class="fa fa-heart"></i></a>
				<a data-title="Bỏ yêu thích" class="btn btn-circle iWishAdded iwishAddWrapper iWishHidden" href="javascript:;" data-customer-id="0" data-product="5610447" data-variant="8990506"><i class="fa fa-heart"></i></a>
				
				
				<input type="hidden" name="variantId" value="8990506">
				<button class="btn-buy btn-cart btn btn-circle left-to add_to_cart " data-title="Thêm vào giỏ hàng">
					<i class="fa fa-shopping-basket"></i>
				</button>
				
				
				<a data-title="Xem nhanh" href="/lo-cam-hoa-thuy-tinh-vuong" data-handle="lo-cam-hoa-thuy-tinh-vuong" class="btn-circle btn_view btn  right-to quick-view">
					<i class="fa fa-search-plus"></i>
				</a>
				
			</div>
		</form>
	</div>

</div>			
		</div>		
		<div class="col-xs-6 col-sm-4 col-lg-3">
<div class="product-box">	
	<h3 class="product-name"><a href="/binh-gom-trai-tim" title="Bình gốm trái tim">Bình gốm trái tim</a></h3>
	<div class="bizweb-product-reviews-badge" data-id="5610418"><div class="bizweb-product-reviews-star" data-score="0" data-number="5" title="Not rated yet!" style="color: rgb(255, 190, 0);"><i data-alt="1" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="2" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="3" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="4" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="5" class="star-off-png" title="Not rated yet!"></i><input name="score" type="hidden" readonly=""></div><div><p>0</p></div><div><img src="https://productreviews.bizwebapps.vn//assets/images/user.png" width="18" height="17"></div></div>
	<div class="product-thumbnail">		
		
		<a href="/binh-gom-trai-tim" title="Bình gốm trái tim">
			<img src="//bizweb.dktcdn.net/thumb/medium/100/177/134/products/acc-15-va0025-w1-sq-02ffa4d5-35e2-4e8f-acc6-52fa6e84f6e5-6d3e4cb5-8038-4015-b66d-9ce98abc6d15.jpg?v=1487125197123" alt="Bình gốm trái tim" class="bethua" style="padding-top: 12px;">
		</a>	
	</div>
	<div class="product-info a-left">		
		
		
		
		<div class="price-box clearfix">

			<div class="special-price f-left">
				<span class="price product-price">150.000₫</span>
			</div>											
		</div>
		
		
	</div>
	<div class="product-action clearfix">
		<form action="/cart/add" method="post" class="variants form-nut-grid" data-id="product-actions-5610418" enctype="multipart/form-data">
			<div class="a-center">
				<span class="action-info">Chọn hoạt động</span>
			</div>
			<div>
				
				<a data-title="Yêu thích" class="btn btn-circle iWishAdd iwishAddWrapper" href="javascript:;" data-customer-id="0" data-product="5610418" data-variant="8990454"><i class="fa fa-heart"></i></a>
				<a data-title="Bỏ yêu thích" class="btn btn-circle iWishAdded iwishAddWrapper iWishHidden" href="javascript:;" data-customer-id="0" data-product="5610418" data-variant="8990454"><i class="fa fa-heart"></i></a>
				
				
				<input type="hidden" name="variantId" value="8990454">
				<button class="btn-buy btn-cart btn btn-circle left-to add_to_cart " data-title="Thêm vào giỏ hàng">
					<i class="fa fa-shopping-basket"></i>
				</button>
				
				
				<a data-title="Xem nhanh" href="/binh-gom-trai-tim" data-handle="binh-gom-trai-tim" class="btn-circle btn_view btn  right-to quick-view">
					<i class="fa fa-search-plus"></i>
				</a>
				
			</div>
		</form>
	</div>

</div>			
		</div>						
		<div class="col-xs-6 col-sm-4 col-lg-3">
<div class="product-box">	
	<h3 class="product-name"><a href="/coc-trai-tim" title="Cốc trái tim">Cốc trái tim</a></h3>
	<div class="bizweb-product-reviews-badge" data-id="5610395"><div class="bizweb-product-reviews-star" data-score="0" data-number="5" title="Not rated yet!" style="color: rgb(255, 190, 0);"><i data-alt="1" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="2" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="3" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="4" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="5" class="star-off-png" title="Not rated yet!"></i><input name="score" type="hidden" readonly=""></div><div><p>0</p></div><div><img src="https://productreviews.bizwebapps.vn//assets/images/user.png" width="18" height="17"></div></div>
	<div class="product-thumbnail">		
		
		<a href="/coc-trai-tim" title="Cốc trái tim">
			<img src="//bizweb.dktcdn.net/thumb/medium/100/177/134/products/acc-15-va0023-w1-sq-ac5baaa6-5a15-4540-966c-f208043f98ed.jpg?v=1487125189917" alt="Cốc trái tim" class="bethua" style="padding-top: 12px;">
		</a>	
	</div>
	<div class="product-info a-left">		
		
		
		
		<div class="price-box clearfix">

			<div class="special-price f-left">
				<span class="price product-price">150.000₫</span>
			</div>											
		</div>
		
		
	</div>
	<div class="product-action clearfix">
		<form action="/cart/add" method="post" class="variants form-nut-grid" data-id="product-actions-5610395" enctype="multipart/form-data">
			<div class="a-center">
				<span class="action-info">Chọn hoạt động</span>
			</div>
			<div>
				
				<a data-title="Yêu thích" class="btn btn-circle iWishAdd iwishAddWrapper" href="javascript:;" data-customer-id="0" data-product="5610395" data-variant="8990431"><i class="fa fa-heart"></i></a>
				<a data-title="Bỏ yêu thích" class="btn btn-circle iWishAdded iwishAddWrapper iWishHidden" href="javascript:;" data-customer-id="0" data-product="5610395" data-variant="8990431"><i class="fa fa-heart"></i></a>
				
				
				<input type="hidden" name="variantId" value="8990431">
				<button class="btn-buy btn-cart btn btn-circle left-to add_to_cart " data-title="Thêm vào giỏ hàng">
					<i class="fa fa-shopping-basket"></i>
				</button>
				
				
				<a data-title="Xem nhanh" href="/coc-trai-tim" data-handle="coc-trai-tim" class="btn-circle btn_view btn  right-to quick-view">
					<i class="fa fa-search-plus"></i>
				</a>
				
			</div>
		</form>
	</div>

</div>			
		</div>					
		<div class="col-xs-6 col-sm-4 col-lg-3">
<div class="product-box">	
	<h3 class="product-name"><a href="/binh-trang-tri-cao-cap" title="Bình trang trí cao cấp">Bình trang trí cao cấp</a></h3>
	<div class="bizweb-product-reviews-badge" data-id="5610386"><div class="bizweb-product-reviews-star" data-score="0" data-number="5" title="Not rated yet!" style="color: rgb(255, 190, 0);"><i data-alt="1" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="2" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="3" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="4" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="5" class="star-off-png" title="Not rated yet!"></i><input name="score" type="hidden" readonly=""></div><div><p>0</p></div><div><img src="https://productreviews.bizwebapps.vn//assets/images/user.png" width="18" height="17"></div></div>
	<div class="product-thumbnail">		
		
		<a href="/binh-trang-tri-cao-cap" title="Bình trang trí cao cấp">
			<img src="//bizweb.dktcdn.net/thumb/medium/100/177/134/products/acc-11-va0122-w1-sq.jpg?v=1487124929280" alt="Bình trang trí cao cấp" class="bethua" style="padding-top: 12px;">
		</a>	
	</div>
	<div class="product-info a-left">		
		
		
		
		<div class="price-box clearfix">

			<div class="special-price f-left">
				<span class="price product-price">150.000₫</span>
			</div>											
		</div>
		
		
	</div>
	<div class="product-action clearfix">
		<form action="/cart/add" method="post" class="variants form-nut-grid" data-id="product-actions-5610386" enctype="multipart/form-data">
			<div class="a-center">
				<span class="action-info">Chọn hoạt động</span>
			</div>
			<div>
				
				<a data-title="Yêu thích" class="btn btn-circle iWishAdd iwishAddWrapper" href="javascript:;" data-customer-id="0" data-product="5610386" data-variant="8990422"><i class="fa fa-heart"></i></a>
				<a data-title="Bỏ yêu thích" class="btn btn-circle iWishAdded iwishAddWrapper iWishHidden" href="javascript:;" data-customer-id="0" data-product="5610386" data-variant="8990422"><i class="fa fa-heart"></i></a>
				
				
				<input type="hidden" name="variantId" value="8990422">
				<button class="btn-buy btn-cart btn btn-circle left-to add_to_cart " data-title="Thêm vào giỏ hàng">
					<i class="fa fa-shopping-basket"></i>
				</button>
				
				
				<a data-title="Xem nhanh" href="/binh-trang-tri-cao-cap" data-handle="binh-trang-tri-cao-cap" class="btn-circle btn_view btn  right-to quick-view">
					<i class="fa fa-search-plus"></i>
				</a>
				
			</div>
		</form>
	</div>

</div>			
		</div>					
		<div class="col-xs-6 col-sm-4 col-lg-3">
<div class="product-box">	
	<h3 class="product-name"><a href="/tho-choi-vong" title="Thỏ chơi vòng">Thỏ chơi vòng</a></h3>
	<div class="bizweb-product-reviews-badge" data-id="5604178"><div class="bizweb-product-reviews-star" data-score="4" data-number="5" title="good" style="color: rgb(255, 190, 0);"><i data-alt="1" class="star-on-png" title="good"></i>&nbsp;<i data-alt="2" class="star-on-png" title="good"></i>&nbsp;<i data-alt="3" class="star-on-png" title="good"></i>&nbsp;<i data-alt="4" class="star-on-png" title="good"></i>&nbsp;<i data-alt="5" class="star-off-png" title="good"></i><input name="score" type="hidden" value="4" readonly=""></div><div><p>1</p></div><div><img src="https://productreviews.bizwebapps.vn//assets/images/user.png" width="18" height="17"></div></div>
	<div class="product-thumbnail">		
		
		<a href="/tho-choi-vong" title="Thỏ chơi vòng">
			<img src="//bizweb.dktcdn.net/thumb/medium/100/177/134/products/articlesharedimage-6565-adc9a304-5b05-4a4a-8ced-7736f6b1abe1-63ccfd94-bc32-4867-ab0c-e813a234bc5a.jpg?v=1487066455663" alt="" class="bethua" style="padding-top: 12px;">
		</a>	
	</div>
	<div class="product-info a-left">		
		
		
		
		<div class="price-box clearfix">

			<div class="special-price f-left">
				<span class="price product-price">120.000₫</span>
			</div>											
		</div>
		
		
	</div>
	<div class="product-action clearfix">
		<form action="/cart/add" method="post" class="variants form-nut-grid" data-id="product-actions-5604178" enctype="multipart/form-data">
			<div class="a-center">
				<span class="action-info">Chọn hoạt động</span>
			</div>
			<div>
				
				<a data-title="Yêu thích" class="btn btn-circle iWishAdd iwishAddWrapper" href="javascript:;" data-customer-id="0" data-product="5604178" data-variant="8979081"><i class="fa fa-heart"></i></a>
				<a data-title="Bỏ yêu thích" class="btn btn-circle iWishAdded iwishAddWrapper iWishHidden" href="javascript:;" data-customer-id="0" data-product="5604178" data-variant="8979081"><i class="fa fa-heart"></i></a>
				
				
				<input type="hidden" name="variantId" value="8979081">
				<button class="btn-buy btn-cart btn btn-circle left-to add_to_cart " data-title="Thêm vào giỏ hàng">
					<i class="fa fa-shopping-basket"></i>
				</button>
				
				
				<a data-title="Xem nhanh" href="/tho-choi-vong" data-handle="tho-choi-vong" class="btn-circle btn_view btn  right-to quick-view">
					<i class="fa fa-search-plus"></i>
				</a>
				
			</div>
		</form>
	</div>

</div>			
		</div>					
		<div class="col-xs-6 col-sm-4 col-lg-3">
<div class="product-box">	
	<h3 class="product-name"><a href="/tho-choi-xe-day" title="Thỏ chơi xe đẩy">Thỏ chơi xe đẩy</a></h3>
	<div class="bizweb-product-reviews-badge" data-id="5604110"><div class="bizweb-product-reviews-star" data-score="2" data-number="5" title="poor" style="color: rgb(255, 190, 0);"><i data-alt="1" class="star-on-png" title="poor"></i>&nbsp;<i data-alt="2" class="star-on-png" title="poor"></i>&nbsp;<i data-alt="3" class="star-off-png" title="poor"></i>&nbsp;<i data-alt="4" class="star-off-png" title="poor"></i>&nbsp;<i data-alt="5" class="star-off-png" title="poor"></i><input name="score" type="hidden" value="2" readonly=""></div><div><p>1</p></div><div><img src="https://productreviews.bizwebapps.vn//assets/images/user.png" width="18" height="17"></div></div>
	<div class="product-thumbnail">		
		
		<a href="/tho-choi-xe-day" title="Thỏ chơi xe đẩy">
			<img src="//bizweb.dktcdn.net/thumb/medium/100/177/134/products/articlesharedimage-1928-f22353de-1d3a-48dd-98e7-a1dfed49fe1f.jpg?v=1487066343037" alt="" class="bethua" style="padding-top: 12px;">
		</a>	
	</div>
	<div class="product-info a-left">		
		
		
		
		<div class="price-box clearfix">

			<div class="special-price f-left">
				<span class="price product-price">120.000₫</span>
			</div>											
		</div>
		
		
	</div>
	<div class="product-action clearfix">
		<form action="/cart/add" method="post" class="variants form-nut-grid" data-id="product-actions-5604110" enctype="multipart/form-data">
			<div class="a-center">
				<span class="action-info">Chọn hoạt động</span>
			</div>
			<div>
				
				<a data-title="Yêu thích" class="btn btn-circle iWishAdd iwishAddWrapper" href="javascript:;" data-customer-id="0" data-product="5604110" data-variant="8979012"><i class="fa fa-heart"></i></a>
				<a data-title="Bỏ yêu thích" class="btn btn-circle iWishAdded iwishAddWrapper iWishHidden" href="javascript:;" data-customer-id="0" data-product="5604110" data-variant="8979012"><i class="fa fa-heart"></i></a>
				
				
				<input type="hidden" name="variantId" value="8979012">
				<button class="btn-buy btn-cart btn btn-circle left-to add_to_cart " data-title="Thêm vào giỏ hàng">
					<i class="fa fa-shopping-basket"></i>
				</button>
				
				
				<a data-title="Xem nhanh" href="/tho-choi-xe-day" data-handle="tho-choi-xe-day" class="btn-circle btn_view btn  right-to quick-view">
					<i class="fa fa-search-plus"></i>
				</a>
				
			</div>
		</form>
	</div>

</div>			
		</div>			
		<div class="col-xs-6 col-sm-4 col-lg-3">
<div class="product-box">	
	<h3 class="product-name"><a href="/tho-flopsy-nhoi-bong" title="Thỏ Flopsy nhồi bông">Thỏ Flopsy nhồi bông</a></h3>
	<div class="bizweb-product-reviews-badge" data-id="5603994"><div class="bizweb-product-reviews-star" data-score="0" data-number="5" title="Not rated yet!" style="color: rgb(255, 190, 0);"><i data-alt="1" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="2" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="3" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="4" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="5" class="star-off-png" title="Not rated yet!"></i><input name="score" type="hidden" readonly=""></div><div><p>0</p></div><div><img src="https://productreviews.bizwebapps.vn//assets/images/user.png" width="18" height="17"></div></div>
	<div class="product-thumbnail">		
		
		<div class="sale-flash">- 
91% 
</div>
		
		<a href="/tho-flopsy-nhoi-bong" title="Thỏ Flopsy nhồi bông">
			<img src="//bizweb.dktcdn.net/thumb/medium/100/177/134/products/articlesharedimage-46527.jpg?v=1487066189030" alt="" class="bethua" style="padding-top: 12px;">
		</a>	
	</div>
	<div class="product-info a-left">		
		
		
		

		<div class="price-box clearfix">			
			<div class="special-price f-left">
				<span class="price product-price">480.000₫</span>
			</div>
			
			<div class="old-price">															 
				<span class="price product-price-old">
					5.500.000₫			
				</span>
			</div>
						
		</div>		
		
		
	</div>
	<div class="product-action clearfix">
		<form action="/cart/add" method="post" class="variants form-nut-grid" data-id="product-actions-5603994" enctype="multipart/form-data">
			<div class="a-center">
				<span class="action-info">Chọn hoạt động</span>
			</div>
			<div>
				
				<a data-title="Yêu thích" class="btn btn-circle iWishAdd iwishAddWrapper" href="javascript:;" data-customer-id="0" data-product="5603994" data-variant="8978888"><i class="fa fa-heart"></i></a>
				<a data-title="Bỏ yêu thích" class="btn btn-circle iWishAdded iwishAddWrapper iWishHidden" href="javascript:;" data-customer-id="0" data-product="5603994" data-variant="8978888"><i class="fa fa-heart"></i></a>
				
				
				<input type="hidden" name="variantId" value="8978888">
				<button class="btn-buy btn-cart btn btn-circle left-to add_to_cart " data-title="Thêm vào giỏ hàng">
					<i class="fa fa-shopping-basket"></i>
				</button>
				
				
				<a data-title="Xem nhanh" href="/tho-flopsy-nhoi-bong" data-handle="tho-flopsy-nhoi-bong" class="btn-circle btn_view btn  right-to quick-view">
					<i class="fa fa-search-plus"></i>
				</a>
				
			</div>
		</form>
	</div>

</div>			
		</div>		
		
	</div>
	<div class="text-xs-right">
		
		<div class="margin-bottom-30">
			&nbsp;
		</div>
		
	</div>

</section>		
				
			</div>
		</section>
		
		<aside class="dqdt-sidebar sidebar left left-content col-lg-3 col-md-3 col-lg-pull-9 col-md-pull-9">
			<script src="//bizweb.dktcdn.net/100/177/134/themes/235073/assets/search_filter.js?1492652132636" type="text/javascript"></script>
	
<aside class="aside-item sidebar-category collection-category">
	<div class="aside-title">
		<h2 class="title-head margin-top-0"><span>Danh mục</span></h2>
	</div>
	<div class="aside-content">
		<nav class="nav-category navbar-toggleable-md">
			<ul class="nav navbar-pills">
				
				<li class="nav-item">
					<i class="fa fa-caret-right"></i>

					<a href="/thu-nhoi-bong" class="nav-link">Thú nhồi bông (3)</a>
					<i class="fa fa-angle-down"></i>
					<ul class="dropdown-menu">
						<li class="nav-item">
							<i class="fa fa-caret-right"></i>
							<a class="nav-link" href="/thu-nhoi-bong">Gấu bông đủ loại (3)</a>
						</li>
						<li class="nav-item">
							<i class="fa fa-caret-right"></i>
							<a class="nav-link" href="/thu-nhoi-bong">Bộ gấu bông (3)</a>
						</li>
						<li class="nav-item">
							<i class="fa fa-caret-right"></i>
							<a class="nav-link" href="/thu-nhoi-bong">Mẫu mới (3)</a>
						</li>
						<li class="nav-item">
							<i class="fa fa-caret-right"></i>
							<a class="nav-link" href="/thu-nhoi-bong">Mấu khuyến mãi (3)</a>
						</li>
					</ul>
				</li>
				<li class="nav-item">
					<i class="fa fa-caret-right"></i>

					<a href="/qua-giang-sinh" class="nav-link">Quà tặng giáng sinh (12)</a>
					<i class="fa fa-angle-down"></i>
					<ul class="dropdown-menu">
						
						<li class="nav-item">
							<i class="fa fa-caret-right"></i>
							<a class="nav-link" href="/qua-giang-sinh">Trang phục giáng sinh (12)</a>
						</li>
						<li class="nav-item">
							<i class="fa fa-caret-right"></i>
							<a class="nav-link" href="/collections/all">Đồ trang trí </a>
						</li>
						<li class="dropdown-submenu nav-item">
							<i class="fa fa-caret-right"></i>
							<a class="nav-link" href="/hoa-tuoi">Hoa tươi (14)</a>
							<i class="fa fa-angle-down"></i>
							<ul class="dropdown-menu">
								<li class="nav-item">
									<i class="fa fa-caret-right"></i>
									<a class="nav-link" href="/collections/all">Gấu bông </a>
								</li>								
								<li class="nav-item">
									<i class="fa fa-caret-right"></i>
									<a class="nav-link" href="/collections/all">Hoa tươi 8/3 </a>
								</li>
								<li class="nav-item">
									<i class="fa fa-caret-right"></i>
									<a class="nav-link" href="/collections/all">Hoa valentine </a>
								</li>
								<li class="nav-item">
									<i class="fa fa-caret-right"></i>
									<a class="nav-link" href="/collections/all">Hoa hồng vàng 24k </a>
								</li>
							</ul>                      
						</li>
						<li class="nav-item">
							<i class="fa fa-caret-right"></i>
							<a class="nav-link" href="/collections/all">Hộp quà </a>
						</li>
					</ul>
				</li>
				<li class="nav-item">
					<i class="fa fa-caret-right"></i>

					<a href="/do-choi-cho-be" class="nav-link">Đồ chơi cho bé (8)</a>
					<i class="fa fa-angle-down"></i>
					<ul class="dropdown-menu">
						<li class="nav-item">
							<i class="fa fa-caret-right"></i>
							<a class="nav-link" href="/thu-nhoi-bong">Gầu bông (3)</a>
						</li>						
						<li class="nav-item">
							<i class="fa fa-caret-right"></i>
							<a class="nav-link" href="/qua-giang-sinh">Quà giáng sinh (12)</a>
						</li>
						<li class="nav-item">
							<i class="fa fa-caret-right"></i>
							<a class="nav-link" href="/collections/all">Quà mua nhiều </a>
						</li>						
						<li class="nav-item">
							<i class="fa fa-caret-right"></i>
							<a class="nav-link" href="/collections/all">Đang giảm giá </a>
						</li>
					</ul>
				</li>
				<li class="nav-item">
					<i class="fa fa-caret-right"></i>

					<a href="/qua-luu-niem" class="nav-link">Quà lưu niệm (12)</a>
					<i class="fa fa-angle-down"></i>
					<ul class="dropdown-menu">						
						<li class="dropdown-submenu nav-item">
							<i class="fa fa-caret-right"></i>
							<a class="nav-link" href="/collections/all">Thú nhồi bông </a>
							<i class="fa fa-angle-down"></i>
							<ul class="dropdown-menu">
								<li class="nav-item">
									<i class="fa fa-caret-right"></i>
									<a class="nav-link" href="/thu-nhoi-bong">Gấu bông đủ loại (3)</a>
								</li>
								
								<li class="nav-item">
									<i class="fa fa-caret-right"></i>
									<a class="nav-link" href="/thu-nhoi-bong">Bộ gấu bông (3)</a>
								</li>
								
								<li class="nav-item">
									<i class="fa fa-caret-right"></i>
									<a class="nav-link" href="/thu-nhoi-bong">Mẫu mới (3)</a>
								</li>
																<li class="nav-item">
									<i class="fa fa-caret-right"></i>
									<a class="nav-link" href="/thu-nhoi-bong">Mấu khuyến mãi (3)</a>
								</li>
							</ul>                      
						</li>
						<li class="nav-item">
							<i class="fa fa-caret-right"></i>
							<a class="nav-link" href="/collections/all">Hot Deal </a>
						</li>
						
						<li class="nav-item">
							<i class="fa fa-caret-right"></i>
							<a class="nav-link" href="/collections/all">Hàng mua nhiều </a>
						</li>
						<li class="nav-item">
							<i class="fa fa-caret-right"></i>
							<a class="nav-link" href="/collections/all">Hàng giảm giá </a>
						</li>
					</ul>
				</li>
				
				<li class="nav-item">
					<i class="fa fa-caret-right"></i>

					<a href="/qua-luu-niem" class="nav-link">Valentine (12)</a>
					<i class="fa fa-angle-down"></i>
					<ul class="dropdown-menu">
						<li class="dropdown-submenu nav-item">
							<i class="fa fa-caret-right"></i>
							<a class="nav-link" href="/hoa-tuoi">Hoa tươi (14)</a>
							<i class="fa fa-angle-down"></i>
							<ul class="dropdown-menu">
								<li class="nav-item">
									<i class="fa fa-caret-right"></i>
									<a class="nav-link" href="/collections/all">Gấu bông </a>
								</li>
								<li class="nav-item">
									<i class="fa fa-caret-right"></i>
									<a class="nav-link" href="/collections/all">Hoa tươi 8/3 </a>
								</li>
								<li class="nav-item">
									<i class="fa fa-caret-right"></i>
									<a class="nav-link" href="/collections/all">Hoa valentine </a>
								</li>
								<li class="nav-item">
									<i class="fa fa-caret-right"></i>
									<a class="nav-link" href="/collections/all">Hoa hồng vàng 24k </a>
								</li>
							</ul>                      
						</li>
						<li class="nav-item">
							<i class="fa fa-caret-right"></i>
							<a class="nav-link" href="/collections/all">Socola </a>
						</li>
						<li class="nav-item">
							<i class="fa fa-caret-right"></i>
							<a class="nav-link" href="/thu-nhoi-bong">Gấu bông (3)</a>
						</li>						
						<li class="nav-item">
							<i class="fa fa-caret-right"></i>
							<a class="nav-link" href="/collections/all">Mua nhiều </a>
						</li>
					</ul>
				</li>				
				<li class="nav-item">
					<i class="fa fa-caret-right"></i>

					<a href="/hoa-tuoi" class="nav-link">Hoa tươi (14)</a>
					<i class="fa fa-angle-down"></i>
					<ul class="dropdown-menu">
						<li class="nav-item">
							<i class="fa fa-caret-right"></i>
							<a class="nav-link" href="/collections/all">Gấu bông </a>
						</li>
						<li class="nav-item">
							<i class="fa fa-caret-right"></i>
							<a class="nav-link" href="/collections/all">Hoa tươi 8/3 </a>
						</li>
						<li class="nav-item">
							<i class="fa fa-caret-right"></i>
							<a class="nav-link" href="/collections/all">Hoa valentine </a>
						</li>
						<li class="nav-item">
							<i class="fa fa-caret-right"></i>
							<a class="nav-link" href="/collections/all">Hoa hồng vàng 24k </a>
						</li>
					</ul>
				</li>
				<li class="nav-item">
					<i class="fa fa-caret-right"></i>

					<a href="/cay-canh" class="nav-link">Cây cảnh (1)</a>
					<i class="fa fa-angle-down"></i>
					<ul class="dropdown-menu">
						<li class="nav-item">
							<i class="fa fa-caret-right"></i>
							<a class="nav-link" href="/cay-canh">Cây cảnh để bàn (1)</a>
						</li>
						<li class="nav-item">
							<i class="fa fa-caret-right"></i>
							<a class="nav-link" href="/cay-canh">Cây cảnh trang trí (1)</a>
						</li>
						<li class="nav-item">
							<i class="fa fa-caret-right"></i>
							<a class="nav-link" href="/cay-canh">Cây cảnh hot (1)</a>
						</li>
						<li class="nav-item">
							<i class="fa fa-caret-right"></i>
							<a class="nav-link" href="/cay-canh">Khuyến mãi (1)</a>
						</li>
					</ul>
				</li>
				<li class="nav-item">
					<i class="fa fa-caret-right"></i>

					<a href="/ban-chay" class="nav-link">Quà 8/3 (8)</a>
					<i class="fa fa-angle-down"></i>
					<ul class="dropdown-menu">
						<li class="dropdown-submenu nav-item">
							<i class="fa fa-caret-right"></i>
							<a class="nav-link" href="/thu-nhoi-bong">Thú nhồi bông (3)</a>
							<i class="fa fa-angle-down"></i>
							<ul class="dropdown-menu">
								<li class="nav-item">
									<i class="fa fa-caret-right"></i>
									<a class="nav-link" href="/thu-nhoi-bong">Gấu bông đủ loại (3)</a>
								</li>
								<li class="nav-item">
									<i class="fa fa-caret-right"></i>
									<a class="nav-link" href="/thu-nhoi-bong">Bộ gấu bông (3)</a>
								</li>
								<li class="nav-item">
									<i class="fa fa-caret-right"></i>
									<a class="nav-link" href="/thu-nhoi-bong">Mẫu mới (3)</a>
								</li>
								<li class="nav-item">
									<i class="fa fa-caret-right"></i>
									<a class="nav-link" href="/thu-nhoi-bong">Mấu khuyến mãi (3)</a>
								</li>
							</ul>                      
						</li>
						<li class="dropdown-submenu nav-item">
							<i class="fa fa-caret-right"></i>
							<a class="nav-link" href="/hoa-tuoi">Hoa tươi (14)</a>
							<i class="fa fa-angle-down"></i>
							<ul class="dropdown-menu">
								<li class="nav-item">
									<i class="fa fa-caret-right"></i>
									<a class="nav-link" href="/collections/all">Gấu bông </a>
								</li>
								<li class="nav-item">
									<i class="fa fa-caret-right"></i>
									<a class="nav-link" href="/collections/all">Hoa tươi 8/3 </a>
								</li>
								<li class="nav-item">
									<i class="fa fa-caret-right"></i>
									<a class="nav-link" href="/collections/all">Hoa valentine </a>
								</li>								
								<li class="nav-item">
									<i class="fa fa-caret-right"></i>
									<a class="nav-link" href="/collections/all">Hoa hồng vàng 24k </a>
								</li>
							</ul>                      
						</li>
						<li class="nav-item">
							<i class="fa fa-caret-right"></i>
							<a class="nav-link" href="/collections/all">Hàng mới về </a>
						</li>
						<li class="nav-item">
							<i class="fa fa-caret-right"></i>
							<a class="nav-link" href="/collections/all">Hot Deal </a>
						</li>
						
						

					</ul>
				</li>
				
				
			</ul>
		</nav>
	</div>
</aside>

	
<script src="//bizweb.dktcdn.net/100/177/134/themes/235073/assets/search_filter.js?1492652132636" type="text/javascript"></script>
<div class="aside-filter">
	<div class="filter-container">	
		<div class="filter-container__selected-filter" style="display: none;">
			<div class="filter-container__selected-filter-header clearfix">
				<span class="filter-container__selected-filter-header-title"><i class="fa fa-arrow-left hidden-sm-up"></i> Bạn chọn</span>
				<a href="javascript:void(0)" onclick="clearAllFiltered()" class="filter-container__clear-all">Bỏ hết <i class="fa fa-angle-right"></i></a>
			</div>
			<div class="filter-container__selected-filter-list">
				<ul></ul>
			</div>
		</div>
	</div>
	
	

	<link href="//bizweb.dktcdn.net/100/177/134/themes/235073/assets/jquery-ui.min.css?1492652132636" rel="stylesheet" type="text/css">
	<script src="//bizweb.dktcdn.net/100/177/134/themes/235073/assets/jquery-ui.min.js?1492652132636" type="text/javascript"></script>
	<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jqueryui-touch-punch/0.2.3/jquery.ui.touch-punch.min.js"></script>

	<aside class="aside-item filter-price">
		<div class="aside-title">
			<h2 class="title-head margin-top-0"><span>Mức giá</span></h2>
		</div>
		<div class="aside-content filter-group">			

			<div id="slider" class="ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"><div class="ui-slider-range ui-corner-all ui-widget-header" style="left: 0%; width: 100%;"></div><span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default" style="left: 0%;"></span><span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default" style="left: 100%;"></span></div>
			<div id="start"><input value="0"></div>
			<div id="stop"><input value="10000000"></div>
			<a id="old-value" href="javascript:;"></a>
			<a id="filter-value" class="btn btn-primary" href="javascript:;" onclick="_toggleFilterdqdt(this);" data-value="(>-1 AND <10000001)">Lọc giá</a>

			<script>
				var maxx = 10000000/10;
				$('#slider').slider({
					min: '0',
					max: maxx,
					range: true,
					values: [0,10000000],
					slide: function(event, ui) {
						if(ui.values[0] >= ui.values[1]) {
							if(ui.handle == $("#slider a")[0]) {
								$("#slider").slider("values", 1, ui.value);
								ui.values[0] = ui.value;
								ui.values[1] = ui.value;
							} else {
								$("#slider").slider("values", 0, ui.value);
								ui.values[0] = ui.value;
								ui.values[1] = ui.value;
							}
						}			
						var uimax =ui.values[1]+1;					
						$('#start input').val(ui.values[0]);
						$('#stop input').val(ui.values[1]+1);
						var uimin =ui.values[0]-1;
						var uimax =ui.values[1]+2;
						$('#filter-value').attr('data-value','(>'+uimin+' AND <'+uimax+')');
					}
				});
				$(document).on('change','#start',function(e){
					var val = parseInt($('#start input').val())-1;
					var val2 = parseInt($('#stop input').val())+1;

					$("#slider").slider("values",0,parseInt(val));
					$('#filter-value').attr('data-value','(>'+val+' AND <'+val2+')');
				});
				$(document).on('change','#stop',function(e){
					var val = parseInt($('#start input').val())-1;
					var val2 = parseInt($('#stop input').val())+1;

					$("#slider").slider("values",1,parseInt(val2));
					$('#filter-value').attr('data-value','(>'+val+' AND <'+val2+')');
				});

			</script>
		</div>
	</aside>

	
	


	
	<aside class="aside-item filter-type">
		<div class="aside-title">
			<h2 class="title-head margin-top-0"><span>Sản phẩm</span></h2>
		</div>
		<div class="aside-content filter-group">
			<ul>
				
				
				<li class="filter-item filter-item--check-box filter-item--green">
					<span>
						<label for="filter-hoa-tuoi">
							<input type="checkbox" id="filter-hoa-tuoi" onchange="toggleFilter(this)" data-group="Loại" data-field="product_type" data-text="Hoa tươi" value="(Hoa tươi)" data-operator="OR">
							<i class="fa"></i>
							Hoa tươi
						</label>
					</span>
				</li>
				
				
				
				<li class="filter-item filter-item--check-box filter-item--green">
					<span>
						<label for="filter-qua-sinh-nhat">
							<input type="checkbox" id="filter-qua-sinh-nhat" onchange="toggleFilter(this)" data-group="Loại" data-field="product_type" data-text="Quà sinh nhật" value="(Quà sinh nhật)" data-operator="OR">
							<i class="fa"></i>
							Quà sinh nhật
						</label>
					</span>
				</li>
				
				
				
				<li class="filter-item filter-item--check-box filter-item--green">
					<span>
						<label for="filter-thu-nhoi-bong">
							<input type="checkbox" id="filter-thu-nhoi-bong" onchange="toggleFilter(this)" data-group="Loại" data-field="product_type" data-text="Thú nhồi bông" value="(Thú nhồi bông)" data-operator="OR">
							<i class="fa"></i>
							Thú nhồi bông
						</label>
					</span>
				</li>
				
				
				
				<li class="filter-item filter-item--check-box filter-item--green">
					<span>
						<label for="filter-trang-suc">
							<input type="checkbox" id="filter-trang-suc" onchange="toggleFilter(this)" data-group="Loại" data-field="product_type" data-text="Trang sức" value="(Trang sức)" data-operator="OR">
							<i class="fa"></i>
							Trang sức
						</label>
					</span>
				</li>
				
				
			</ul>
		</div>
	</aside>
	


	
	


	<aside class="aside-item filter-tag-style-1">
		<div class="aside-title">
			<h2 class="title-head margin-top-0"><span>Màu sắc</span></h2>
		</div>
		<div class="aside-content filter-group clearfix">
			<ul style="overflow: visible;">
				 
				

				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				<li class="filter-item color filter-item--check-box filter-item--green">
					<span>
						<label for="filter-vang">
							<input type="checkbox" id="filter-vang" onchange="toggleFilter(this)" data-group="tag1" data-field="tags" data-text="Vàng" value="(Vàng)" data-operator="OR">
							<i class="fa vang" style="background-color:#F4FA58;"></i>
							Vàng
						</label>
					</span>
				</li>	
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				<li class="filter-item color filter-item--check-box filter-item--green">
					<span>
						<label for="filter-do">
							<input type="checkbox" id="filter-do" onchange="toggleFilter(this)" data-group="tag1" data-field="tags" data-text="Đỏ" value="(Đỏ)" data-operator="OR">
							<i class="fa do" style="background-color:#FF0000;"></i>
							Đỏ
						</label>
					</span>
				</li>	
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				<li class="filter-item color filter-item--check-box filter-item--green">
					<span>
						<label for="filter-trang">
							<input type="checkbox" id="filter-trang" onchange="toggleFilter(this)" data-group="tag1" data-field="tags" data-text="Trắng" value="(Trắng)" data-operator="OR">
							<i class="fa trang" style="background-color:#FFFFFF;border:1px solid #ebebeb;"></i>
							Trắng
						</label>
					</span>
				</li>	
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				<li class="filter-item color filter-item--check-box filter-item--green">
					<span>
						<label for="filter-nau">
							<input type="checkbox" id="filter-nau" onchange="toggleFilter(this)" data-group="tag1" data-field="tags" data-text="Nâu" value="(Nâu)" data-operator="OR">
							<i class="fa nau" style="background-color:#DF3A01;"></i>
							Nâu
						</label>
					</span>
				</li>	
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				<li class="filter-item color filter-item--check-box filter-item--green">
					<span>
						<label for="filter-da-cam">
							<input type="checkbox" id="filter-da-cam" onchange="toggleFilter(this)" data-group="tag1" data-field="tags" data-text="Da cam" value="(Da cam)" data-operator="OR">
							<i class="fa da-cam" style="background-color:#FF4000;"></i>
							Da cam
						</label>
					</span>
				</li>	
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				<li class="filter-item color filter-item--check-box filter-item--green">
					<span>
						<label for="filter-hong">
							<input type="checkbox" id="filter-hong" onchange="toggleFilter(this)" data-group="tag1" data-field="tags" data-text="Hồng" value="(Hồng)" data-operator="OR">
							<i class="fa hong" style="background-color:#FA58AC;"></i>
							Hồng
						</label>
					</span>
				</li>	
				

			</ul>
		</div>
	</aside>
	
	

	


	
	<aside class="aside-item filter-tag-style-1">
		<div class="aside-title">
			<h2 class="title-head margin-top-0"><span>Kích thước</span></h2>
		</div>
		<div class="aside-content filter-group">
			<ul>
				 
				
				
				
				<li class="filter-item filter-item--check-box filter-item--green">
					<span>
						<label for="filter-lon">
							<input type="checkbox" id="filter-lon" onchange="toggleFilter(this)" data-group="tag2" data-field="tags" data-text="Lớn" value="(Lớn)" data-operator="OR">
							<i class="fa"></i>
							Lớn
						</label>
					</span>
				</li>	
				
				
				
				<li class="filter-item filter-item--check-box filter-item--green">
					<span>
						<label for="filter-nho">
							<input type="checkbox" id="filter-nho" onchange="toggleFilter(this)" data-group="tag2" data-field="tags" data-text="Nhỏ" value="(Nhỏ)" data-operator="OR">
							<i class="fa"></i>
							Nhỏ
						</label>
					</span>
				</li>	
				
				
				
				<li class="filter-item filter-item--check-box filter-item--green">
					<span>
						<label for="filter-vua">
							<input type="checkbox" id="filter-vua" onchange="toggleFilter(this)" data-group="tag2" data-field="tags" data-text="Vừa" value="(Vừa)" data-operator="OR">
							<i class="fa"></i>
							Vừa
						</label>
					</span>
				</li>	
				
				
				
				<li class="filter-item filter-item--check-box filter-item--green">
					<span>
						<label for="filter-s-10-12kg">
							<input type="checkbox" id="filter-s-10-12kg" onchange="toggleFilter(this)" data-group="tag2" data-field="tags" data-text="S (10 - 12kg)" value="(S (10 - 12kg))" data-operator="OR">
							<i class="fa"></i>
							S (10 - 12kg)
						</label>
					</span>
				</li>	
				

			</ul>
		</div>
	</aside>
		
</div>	



	
<div class="aside-item aside-tags">
	<div>
		<div class="aside-title margin-top-5">
			<h2 class="title-head"><span>Thẻ tags</span></h2>
		</div>
		<div class="aside-content list-tags">
			
						
			
							
			
			
			
							
			
			
			
							
			
			
			
							
			
			
			
							
			
			
			
							
			
			
			
							
			
			
									
			
			<span class="tag-item"><a href="/collections/all/binh-trang-tri">Bình trang trí</a></span>
			
							
			
			
			
							
			
			
			
			
						
			
							
			
			
			
							
			
			
			
							
			
			
			
							
			
			
			
							
			
			
			
							
			
			
									
			
			<span class="tag-item"><a href="/collections/all/qua-luu-niem">Quà lưu niệm</a></span>
			
							
			
			
			
							
			
			
			
							
			
			
			
			
						
			
							
			
			
			
							
			
			
									
			
			<span class="tag-item"><a href="/collections/all/qua-valentine">Quà valentine</a></span>
			
							
			
			
			
							
			
			
			
							
			
			
			
							
			
			
			
							
			
			
			
							
			
			
			
							
			
			
			
			
						
			
							
			
			
									
			
			<span class="tag-item"><a href="/collections/all/sinh-nhat">Sinh nhật</a></span>
			
							
			
			
			
							
			
			
			
							
			
			
			
							
			
			
			
							
			
			
			
							
			
			
			
							
			
			
			
							
			
			
			
			
						
			
							
			
			
			
							
			
			
			
							
			
			
			
							
			
			
									
			
			<span class="tag-item"><a href="/collections/all/thu-bong">Thú bông</a></span>
			
							
			
			
			
							
			
			
			
							
			
			
			
							
			
			
			
							
			
			
			
			
						
			
							
			
			
			
							
			
			
			
							
			
			
									
			
			<span class="tag-item"><a href="/collections/all/trang-suc">Trang sức</a></span>
			
							
			
			
			
							
			
			
			
							
			
			
			
							
			
			
			
							
			
			
			
							
			
			
			
			
						
			
							
			
			
			
							
			
			
			
							
			
			
			
							
			
			
			
							
			
			
									
			
			<span class="tag-item"><a href="/collections/all/valentine">valentine</a></span>
			
							
			
			
			
							
			
			
			
							
			
			
			
							
			
			
			
			
			
						
		</div>
	</div>
</div>




<div class="aside-item aside-mini-list-product">
	<div>
		<div class="aside-title margin-top-5">
			<h2 class="title-head" style="background:url(//bizweb.dktcdn.net/100/177/134/themes/235073/assets/bg-mini-title.jpg?1492652132636);    background-size: cover;">
				<a href="/san-pham-noi-bat">Sản phẩm nổi bật</a>
			</h2>
		</div>
		<div class="aside-content related-product">
			<div class="product-mini-lists">											
				<div class="products">					
					 					
					<div class="row row-noGutter">						
						<div class="col-sm-12">
							




 












<div class="product-mini-item clearfix  ">
	<a href="/collections/qua-giang-sinh/products/coc-tang-sinh-nhat" class="product-img">

		

		

		<img src="//bizweb.dktcdn.net/thumb/small/100/177/134/products/p0104346b.jpg?v=1487128652603" alt="Cốc tặng sinh nhật">
	</a>

	<div class="product-info"> 

		<h3><a href="/collections/qua-giang-sinh/products/coc-tang-sinh-nhat" title="Cốc tặng sinh nhật" class="product-name">Cốc tặng sinh nhật</a></h3>    
		<div class="bizweb-product-reviews-badge" data-id="5611397"><div class="bizweb-product-reviews-star" data-score="0" data-number="5" title="Not rated yet!" style="color: rgb(255, 190, 0);"><i data-alt="1" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="2" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="3" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="4" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="5" class="star-off-png" title="Not rated yet!"></i><input name="score" type="hidden" readonly=""></div><div><p>0</p></div><div><img src="https://productreviews.bizwebapps.vn//assets/images/user.png" width="18" height="17"></div></div>
		<div class="price-box">
			

			
		
		<div class="special-price"><span class="price product-price">99.000₫</span> </div> <!-- Giá -->
		
		
		

	</div>

</div>
</div>																
						</div>
					</div>
					 					
					<div class="row row-noGutter">						
						<div class="col-sm-12">
							




 












<div class="product-mini-item clearfix  ">
	<a href="/collections/qua-giang-sinh/products/tho-choi-vong" class="product-img">

		

		

		<img src="//bizweb.dktcdn.net/thumb/small/100/177/134/products/articlesharedimage-6565-adc9a304-5b05-4a4a-8ced-7736f6b1abe1-63ccfd94-bc32-4867-ab0c-e813a234bc5a.jpg?v=1487066455663" alt="">
	</a>

	<div class="product-info"> 

		<h3><a href="/collections/qua-giang-sinh/products/tho-choi-vong" title="Thỏ chơi vòng" class="product-name">Thỏ chơi vòng</a></h3>    
		<div class="bizweb-product-reviews-badge" data-id="5604178"><div class="bizweb-product-reviews-star" data-score="4" data-number="5" title="good" style="color: rgb(255, 190, 0);"><i data-alt="1" class="star-on-png" title="good"></i>&nbsp;<i data-alt="2" class="star-on-png" title="good"></i>&nbsp;<i data-alt="3" class="star-on-png" title="good"></i>&nbsp;<i data-alt="4" class="star-on-png" title="good"></i>&nbsp;<i data-alt="5" class="star-off-png" title="good"></i><input name="score" type="hidden" value="4" readonly=""></div><div><p>1</p></div><div><img src="https://productreviews.bizwebapps.vn//assets/images/user.png" width="18" height="17"></div></div>
		<div class="price-box">
			

			
		
		<div class="special-price"><span class="price product-price">120.000₫</span> </div> <!-- Giá -->
		
		
		

	</div>

</div>
</div>																
						</div>
					</div>
					 					
					<div class="row row-noGutter">						
						<div class="col-sm-12">
							




 












<div class="product-mini-item clearfix  ">
	<a href="/collections/qua-giang-sinh/products/tho-choi-xe-day" class="product-img">

		

		

		<img src="//bizweb.dktcdn.net/thumb/small/100/177/134/products/articlesharedimage-1928-f22353de-1d3a-48dd-98e7-a1dfed49fe1f.jpg?v=1487066343037" alt="">
	</a>

	<div class="product-info"> 

		<h3><a href="/collections/qua-giang-sinh/products/tho-choi-xe-day" title="Thỏ chơi xe đẩy" class="product-name">Thỏ chơi xe đẩy</a></h3>    
		<div class="bizweb-product-reviews-badge" data-id="5604110"><div class="bizweb-product-reviews-star" data-score="2" data-number="5" title="poor" style="color: rgb(255, 190, 0);"><i data-alt="1" class="star-on-png" title="poor"></i>&nbsp;<i data-alt="2" class="star-on-png" title="poor"></i>&nbsp;<i data-alt="3" class="star-off-png" title="poor"></i>&nbsp;<i data-alt="4" class="star-off-png" title="poor"></i>&nbsp;<i data-alt="5" class="star-off-png" title="poor"></i><input name="score" type="hidden" value="2" readonly=""></div><div><p>1</p></div><div><img src="https://productreviews.bizwebapps.vn//assets/images/user.png" width="18" height="17"></div></div>
		<div class="price-box">
			

			
		
		<div class="special-price"><span class="price product-price">120.000₫</span> </div> <!-- Giá -->
		
		
		

	</div>

</div>
</div>																
						</div>
					</div>
					 					
					<div class="row row-noGutter">						
						<div class="col-sm-12">
							




 














<div class="product-mini-item clearfix   on-sale">
	<a href="/collections/qua-giang-sinh/products/tho-flopsy-nhoi-bong" class="product-img">

		

		

		<img src="//bizweb.dktcdn.net/thumb/small/100/177/134/products/articlesharedimage-46527.jpg?v=1487066189030" alt="">
	</a>

	<div class="product-info"> 

		<h3><a href="/collections/qua-giang-sinh/products/tho-flopsy-nhoi-bong" title="Thỏ Flopsy nhồi bông" class="product-name">Thỏ Flopsy nhồi bông</a></h3>    
		<div class="bizweb-product-reviews-badge" data-id="5603994"><div class="bizweb-product-reviews-star" data-score="0" data-number="5" title="Not rated yet!" style="color: rgb(255, 190, 0);"><i data-alt="1" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="2" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="3" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="4" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="5" class="star-off-png" title="Not rated yet!"></i><input name="score" type="hidden" readonly=""></div><div><p>0</p></div><div><img src="https://productreviews.bizwebapps.vn//assets/images/user.png" width="18" height="17"></div></div>
		<div class="price-box">
			

			
		
		<span class="price"><span class="price product-price">480.000₫</span> </span> <!-- Giá Khuyến mại -->

		<span class="old-price"><del class="sale-price">5.500.000₫</del> </span> <!-- Giá gốc -->
		
		
		

	</div>

</div>
</div>																
						</div>
					</div>
						
					<a href="/san-pham-noi-bat" class="btn btn-link">Tất cả  <i class="fa  fa-angle-right"></i></a>
				</div><!-- /.products -->
				
			</div>
		</div>
	</div>
</div>

<script>
	var selectedSortby;
	var tt = 'Thứ tự';
	var selectedViewData = "data";
	var filter = new Bizweb.SearchFilter()
	
	filter.addValue("collection", "collections", "871487", "AND");
	 
	 function toggleFilter(e) {
		 _toggleFilter(e);
		 renderFilterdItems();
		 doSearch(1);
	 }
	  function _toggleFilterdqdt(e) {
		  var $element = $(e);
		  var group = 'Khoảng giá';
		  var field = 'price_min';
		  var operator = 'OR';	 
		  var value = $element.attr("data-value");	
		  filter.deleteValuedqdt(group, field, value, operator);
		  filter.addValue(group, field, value, operator);

		  renderFilterdItems();
		  doSearch(1);
	  }

	  function _toggleFilter(e) {
		  var $element = $(e);
		  var group = $element.attr("data-group");
		  var field = $element.attr("data-field");
		  var text = $element.attr("data-text");
		  var value = $element.attr("value");
		  var operator = $element.attr("data-operator");
		  var filterItemId = $element.attr("id");

		  if (!$element.is(':checked')) {
			  filter.deleteValue(group, field, value, operator);
		  }
		  else{
			  filter.addValue(group, field, value, operator);
		  }

		  $(".catalog_filters li[data-handle='" + filterItemId + "']").toggleClass("active");
	  }

	  function renderFilterdItems() {
		  var $container = $(".filter-container__selected-filter-list ul");
		  $container.html("");

		  $(".filter-container input[type=checkbox]").each(function(index) {
			  if ($(this).is(':checked')) {
				  var id = $(this).attr("id");
				  var name = $(this).closest("label").text();

				  addFilteredItem(name, id);
			  }
		  });

		  if($(".filter-container input[type=checkbox]:checked").length > 0)
			  $(".filter-container__selected-filter").show();
		  else
			  $(".filter-container__selected-filter").hide();
	  }

	  function addFilteredItem(name, id) {
		  var filteredItemTemplate = "<li class='filter-container__selected-filter-item' for='{3}'><a href='javascript:void(0)' onclick=\"{0}\"><i class='fa fa-close'></i> {1}</a></li>";
		  filteredItemTemplate = filteredItemTemplate.replace("{0}", "removeFilteredItem('" + id + "')");
		  filteredItemTemplate = filteredItemTemplate.replace("{1}", name);
		  filteredItemTemplate = filteredItemTemplate.replace("{3}", id);
		  var $container = $(".filter-container__selected-filter-list ul");
		  $container.append(filteredItemTemplate);
	  }

	  function removeFilteredItem(id) {
		  $(".filter-container #" + id).trigger("click");
	  }

	  function clearAllFiltered() {
		  filter = new Bizweb.SearchFilter();
		  
		  filter.addValue("collection", "collections", "871487", "AND");
		   

		   $(".filter-container__selected-filter-list ul").html("");
			$(".filter-container input[type=checkbox]").attr('checked', false);
			$(".filter-container__selected-filter").hide();

			doSearch(1);
		   }

		   function doSearch(page, options) {
			   if(!options) options = {};

			   //NProgress.start();
			   $('.aside.aside-mini-products-list.filter').removeClass('active');
			   awe.showPopup('.loading');
			   filter.search({
				   view: selectedViewData,
				   page: page,
				   sortby: selectedSortby,
				   success: function (html) {
					   var $html = $(html);
					   // Muốn thay thẻ DIV nào khi filter thì viết như này
					   var $categoryProducts = $($html[0]); 
					   var xxx = $categoryProducts.find('.call-count');
					
					   $('.tt span').text(xxx.text());
					 
					  
					   $(".category-products").html($categoryProducts.html());
					   pushCurrentFilterState({sortby: selectedSortby, page: page});
					   awe.hidePopup('.loading');
					   initQuickView();
					   $('.add_to_cart').click(function(e){
						   e.preventDefault();
						   var $this = $(this);						   
						   var form = $this.parents('form');						   
						   $.ajax({
							   type: 'POST',
							   url: '/cart/add.js',
							   async: false,
							   data: form.serialize(),
							   dataType: 'json',
							   error: addToCartFail,
							   beforeSend: function() {  
								   if(window.theme_load == "icon"){
									   awe.showLoading('.btn-addToCart');
								   } else{
									   awe.showPopup('.loading');
								   }
							   },
							   success: addToCartSuccess,
							   cache: false
						   });
					   });
					   $('html, body').animate({
						   scrollTop: $('.category-products').offset().top
					   }, 0);

					   resizeimage();
					   setTimeout(function(){					 
						   resizeimage();
					   },200);
					   setTimeout(function(){					   
						   resizeimage();
					   },400);
					   setTimeout(function(){					   
						   resizeimage();
					   },600);
					   resortby(selectedSortby);
					   product_action();
					   callbackW();
					   $('.open-filters').removeClass('open');
					   $('.dqdt-sidebar').removeClass('open');
					     $('.tt span').text(xxx.text());
					   return window.BPR.initDomEls(), window.BPR.loadBadges();

				   }
			   });		

		   }

		   function sortby(sort) {			 
			   switch(sort) {
				   case "price-asc":
					   selectedSortby = "price_min:asc";					   
					   break;
				   case "price-desc":
					   selectedSortby = "price_min:desc";
					   break;
				   case "alpha-asc":
					   selectedSortby = "name:asc";
					   break;
				   case "alpha-desc":
					   selectedSortby = "name:desc";
					   break;
				   case "created-desc":
					   selectedSortby = "created_on:desc";
					   break;
				   case "created-asc":
					   selectedSortby = "created_on:asc";
					   break;
				   default:
					   selectedSortby = "";
					   break;
			   }

			   doSearch(1);
		   }

		   function resortby(sort) {
			   switch(sort) {				  
				   case "price_min:asc":
					   tt = "Giá tăng dần";
					   break;
				   case "price_min:desc":
					   tt = "Giá giảm dần";
					   break;
				   case "name:asc":
					   tt = "Tên A → Z";
					   break;
				   case "name:desc":
					   tt = "Tên Z → A";
					   break;
				   case "created_on:desc":
					   tt = "Hàng mới nhất";
					   break;
				   case "created_on:asc":
					   tt = "Hàng cũ nhất";
					   break;
				   default:
					   tt = "Mặc định";
					   break;
			   }			   
			   $('#sort-by > ul > li > span').html(tt);

		   }


		   function _selectSortby(sort) {			 
			   resortby(sort);
			   switch(sort) {
				   case "price-asc":
					   selectedSortby = "price_min:asc";
					   break;
				   case "price-desc":
					   selectedSortby = "price_min:desc";
					   break;
				   case "alpha-asc":
					   selectedSortby = "name:asc";
					   break;
				   case "alpha-desc":
					   selectedSortby = "name:desc";
					   break;
				   case "created-desc":
					   selectedSortby = "created_on:desc";
					   break;
				   case "created-asc":
					   selectedSortby = "created_on:asc";
					   break;
				   default:
					   selectedSortby = sort;
					   break;
			   }
		   }

		   function toggleCheckbox(id) {
			   $(id).click();
		   }

		   function pushCurrentFilterState(options) {

			   if(!options) options = {};
			   var url = filter.buildSearchUrl(options);
			   var queryString = url.slice(url.indexOf('?'));			  
			   if(selectedViewData == 'data_list'){
				   queryString = queryString + '&view=list';				 
			   }
			   else{
				   queryString = queryString + '&view=grid';				   
			   }

			   pushState(queryString);
		   }

		   function pushState(url) {
			   window.history.pushState({
				   turbolinks: true,
				   url: url
			   }, null, url)
		   }
		   function switchView(view) {			  
			   switch(view) {
				   case "list":
					   selectedViewData = "data_list";					   
					   break;
				   default:
					   selectedViewData = "data";

					   break;
			   }			   
			   doSearch(1);
		   }

		   function selectFilterByCurrentQuery() {
			   var isFilter = false;
			   var url = window.location.href;
			   var queryString = decodeURI(window.location.search);
			   var filters = queryString.match(/\(.*?\)/g);

			   if(filters && filters.length > 0) {
				   filters.forEach(function(item) {
					   item = item.replace(/\(\(/g, "(");
					   var element = $(".filter-container input[value='" + item + "']");
					   element.attr("checked", "checked");
					   _toggleFilter(element);
				   });

				   isFilter = true;
			   }

			   var sortOrder = getParameter(url, "sortby");
			   if(sortOrder) {
				   _selectSortby(sortOrder);
			   }

			   if(isFilter) {
				   doSearch(1);
			   }
		   }

		   function getParameter(url, name) {
			   name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
			   var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
				   results = regex.exec(url);
			   return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
		   }

		   $( document ).ready(function() {
			   selectFilterByCurrentQuery();
			   $('.filter-group .filter-group-title').click(function(e){
				   $(this).parent().toggleClass('active');
			   });

			   $('.filter-mobile').click(function(e){
				   $('.aside.aside-mini-products-list.filter').toggleClass('active');
			   });

			   $('#show-admin-bar').click(function(e){
				   $('.aside.aside-mini-products-list.filter').toggleClass('active');
			   });

			   $('.filter-container__selected-filter-header-title').click(function(e){
				   $('.aside.aside-mini-products-list.filter').toggleClass('active');
			   });
		   });
</script>			
		</aside>
		
		<div id="open-filters" class="open-filters hidden-lg hidden-md">
			<i class="fa fa-filter"></i>
			<span>Lọc</span>
		</div>
	</div>
</div>
@endsection