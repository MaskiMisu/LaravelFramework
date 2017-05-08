<div id="sidebar" class="col-md-3 col-sm-3  col-xs-12 hidden-xs">
  @if(config('frontend.module') == 'page')
    <div class="row">
      <div class="col-md-12">
        <form class="frmSearch" action="/search">
          <div class="input-group">
            <input type="hidden" name="type" value="article">

            <input class="form-control" type="search" name="query" placeholder="Tìm kiếm">
            <span class="input-group-btn">
              <button type="submit" class="btn btn-default">
                <span class="icon icon-search"></span>
              </button>
            </span>
            <input type="hidden" name="view" value="article">

          </div>
        </form>
      </div>
      <div class="clear padT20"></div>
    </div>
    <div class="row sidebar-block">
      <div class="col-md-12">
        <div class="block-title">EGALAND</div>
        <div class="list-article col-md-12">
          <div class="item  padB10">
            <div class="thumbnail  col-sm-5 col-xs-5 col-md-5">
              <a href="/dich-vu" title="Dịch vụ"><img src="//bizweb.dktcdn.net/100/075/918/files/dich-vu.jpg?v=1461755684093" alt="Dịch vụ" title="Dịch vụ" width="80" height="56"></a>
            </div>
            <div class="col-sm-7 col-xs-7 col-md-7">
              <h3 class="title"><a href="/dich-vu" title="Dịch vụ">Dịch vụ</a></h3>
            </div>
            <div class="clearfix"></div>
          </div>
        </div>
        <div class="list-article col-md-12">
          <div class="item  padB10">
            <div class="thumbnail  col-sm-5 col-xs-5 col-md-5">
              <a href="/san-pham" title="Sản phẩm"><img src="//bizweb.dktcdn.net/100/075/918/files/san-pham.jpg?v=1461755907727" alt="Sản phẩm" title="Sản phẩm" width="80" height="56"></a>
            </div>
            <div class="col-sm-7 col-xs-7 col-md-7">
              <h3 class="title"><a href="/san-pham" title="Sản phẩm">Sản phẩm</a></h3>
            </div>
            <div class="clearfix"></div>
          </div>
        </div>
        <div class="list-article col-md-12">
          <div class="item  padB10">
            <div class="thumbnail  col-sm-5 col-xs-5 col-md-5">
              <a href="/tien-ich" title="Tiện ích"><img src="//bizweb.dktcdn.net/100/075/918/files/tien-ich.jpg?v=1461756179907" alt="Tiện ích" title="Tiện ích" width="80" height="56"></a>
            </div>
            <div class="col-sm-7 col-xs-7 col-md-7">
              <h3 class="title"><a href="/tien-ich" title="Tiện ích">Tiện ích</a></h3>
            </div>
            <div class="clearfix"></div>
          </div>
        </div>

      </div>
    </div>
  @elseif(config('frontend.module') == 'blog')
    <div class="row">
      <div class="col-md-12">
        <form class="frmSearch" action="/search">
          <div class="input-group">
            <input type="hidden" name="type" value="article">

            <input class="form-control" type="search" name="query" placeholder="Tìm kiếm">
            <span class="input-group-btn">
              <button type="submit" class="btn btn-default">
                <span class="icon icon-search"></span>
              </button>
            </span>
            <input type="hidden" name="view" value="article">

          </div>
        </form>
      </div>
      <div class="clear padT20"></div>
    </div>
    <div class="row sidebar-block">
      <div class="col-md-12">
        <ul id="" class="nav nav-list list-category news-category active  has-sub">









          <li><a class="egaland-active" href="/news"><i class="fa fa-th-list"></i>Tin Tức</a></li>








          <li><a class="" href="/bao-chi"><i class="fa fa-bookmark"></i>Báo Chí</a></li>

        </ul>
      </div>
      <div class="clear padT20"></div>
    </div>
    <div class="row">
      <div class="col-md-12">
        <p><a href=""><img class="img-responsive" src="//bizweb.dktcdn.net/100/075/918/themes/220564/assets/ad_banner_img_2.jpg?1483497950031"></a></p>
        <p><a href=""><img class="img-responsive" src="//bizweb.dktcdn.net/100/075/918/themes/220564/assets/ad_banner_img_3.jpg?1483497950031"></a></p>
      </div>
    </div>
  @elseif(config('frontend.module') == 'product_group')
    <div class="clear padT5"></div>
    <form action="/search" id="form-search-real-estate" class="form form-search quick-form-search" role="form">
      <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-8">
          <div class="form-group">
            <input type="hidden" name="type" value="product">
            <label class="hidden-xs" for="real-name">Tìm kiếm bất động sản</label>
            <input id="real-name" class="form-control" type="search" name="query" autocomplete="off" placeholder="Tìm kiếm">
          </div>
        </div>

        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-4 text-center tabW100">
          <div class="form-group">
            <input class="col-md-12 button button-search" type="submit" value="Tìm kiếm">
          </div>
        </div>
      </div>
    </form>
    <div class="row">
      <div class="col-md-12">
        <p><a href=""><img class="img-responsive" src="//bizweb.dktcdn.net/100/075/918/themes/220564/assets/ad_banner_img_2.jpg?1483497950031"></a></p>
        <p><a href=""><img class="img-responsive" src="//bizweb.dktcdn.net/100/075/918/themes/220564/assets/ad_banner_img_3.jpg?1483497950031"></a></p>
      </div>
    </div>
  @endif
</div>