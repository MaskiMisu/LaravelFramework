<nav id="sidebar">
  <ul>
    <li><a href=" {{  url('backend/home') }} "><i class="fa fa-home" aria-hidden="true"></i>&nbsp;&nbsp;@lang('app.home')</a></li>
    <li class="{{ (Request::is('backend/configuration') || Request::is('backend/configuration/*')) ? 'active' : '' }}"><a href=" {{  url('backend/configuration') }} "><i class="fa fa-cogs" aria-hidden="true"></i>&nbsp;&nbsp;@lang('app.configuration')</a></li>
    <li><a href=" {{  url('backend/orders') }} "><i class="fa fa-credit-card"></i>&nbsp;&nbsp;@lang('app.order')</a></li>
    <li class="{{ (Request::is('backend/product_group') || Request::is('backend/product_group/*')) ? 'active' : '' }}">
        <a href=" {{  url('backend/product_group') }} "><i class="fa fa-tags"></i>&nbsp;&nbsp;@lang('app.product_group')</a>
    </li>
    <li class="{{ (Request::is('backend/product') || Request::is('backend/product/*')) ? 'active' : '' }}"><a href=" {{  url('backend/product') }} "><i class="fa fa-tag"></i>&nbsp;&nbsp;@lang('app.product')</a></li>
    <li class="{{ (Request::is('backend/blog_group') || Request::is('backend/blog_group/*')) ? 'active' : '' }}"><a href=" {{  url('backend/blog_group') }} "><i class="fa fa-comments-o" aria-hidden="true"></i>&nbsp;&nbsp;@lang('app.blog_group')</a></li>
    <li class="{{ (Request::is('backend/blog') || Request::is('backend/blog/*')) ? 'active' : '' }}"><a href=" {{  url('backend/blog') }} "><i class="fa fa-comment"></i>&nbsp;&nbsp;@lang('app.blog')</a></li>
    <li class="{{ (Request::is('backend/page') || Request::is('backend/page/*')) ? 'active' : '' }}"><a href=" {{  url('backend/page') }} "><i class="fa fa-file-text"></i>&nbsp;&nbsp;@lang('app.page')</a></li>
    <li class="{{ (Request::is('backend/menu') || Request::is('backend/menu/*')) ? 'active' : '' }}"><a href=" {{  url('backend/menu') }} "><i class="fa fa-sitemap"></i>&nbsp;&nbsp;@lang('app.menu')</a></li>
    <li class="{{ (Request::is('backend/banner') || Request::is('backend/banner/*')) || (Request::is('backend/banner_group') || Request::is('backend/banner_group/*')) ? 'active' : '' }}"><a href=" {{  url('backend/banner') }} "><i class="fa fa-picture-o"></i>&nbsp;&nbsp;@lang('app.banner')</a></li>
    <li class="{{ (Request::is('backend/contact_maps') || Request::is('backend/contact_maps/*')) ? 'active' : '' }}"><a href=" {{  url('backend/contact_maps') }} "><i class="fa fa-map" aria-hidden="true"></i>&nbsp;&nbsp;@lang('app.contact_maps')</a></li>
  </ul>
</nav>