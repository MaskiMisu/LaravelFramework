<?php

namespace App\Http\Helpers;
use App\Http\Models\Slug;
use App\Http\Models\Product;
use App\Http\Models\Product_group;
use App\Http\Models\Page;
use App\Http\Models\Blog_group;
use App\Http\Models\Menu;
use Lang;
class Helper
{
  function __construct(){
  }
  public function generateLinks(){
    $Slug = new Slug;
    $Slug->columns = ['slug', 'title'];
    $links = [];
    //home
    $Slug->where = ['table_action' => 'home'];
    $links['home'] =  (Array) $Slug->get();
    $links['home']['type'] =  'home';
    //signin
    $Slug->where = ['table_action' => 'user', 'action' => 'signin'];
    $links['signin'] = (Array) $Slug->get();
    $links['signin']['type'] =  'signin';
    //signup
    $Slug->where = ['table_action' => 'user', 'action' => 'signup'];
    $links['signup'] = (Array) $Slug->get();
    $links['signup']['type'] =  'signup';
    //contact
    $Slug->where = ['table_action' => 'contact'];
    $links['contact'] = (Array) $Slug->get();
    $links['contact']['type'] =  'contact';
    //product_group
    $links['product_group']['slug'] =  '';
    $links['product_group']['title'] =  Lang::get('app.product_group');
    $links['product_group']['type'] =  'product_group';
    //product
    $links['product']['slug'] =  '';
    $links['product']['title'] =  Lang::get('app.product');
    $links['product']['type'] =  'product';
    //product all
    $Slug->where = ['table_action' => 'product', 'table_id_action' => 0];
    $links['product_all'] = (Array) $Slug->get();
    $links['product_all']['type'] =  'product_all';
    $links['product_all']['title'] =  Lang::get('app.product_all');
    //page
    $links['page']['slug'] =  '';
    $links['page']['type'] =  'page';
    $links['page']['title'] =  Lang::get('app.page');
    //blog
    $links['blog']['slug'] =  '';
    $links['blog']['type'] =  'blog';
    $links['blog']['title'] =  Lang::get('app.blogE');
    //link web
    $links['web']['slug'] =  '';
    $links['web']['type'] =  'web';
    $links['web']['title'] =  Lang::get('app.web_link');

    return $links;
  }
  public function getLinks($action){
    $result = [];
    switch ($action) {
      case 'product_group':
        $Product_groupModel = new Product_group;
        $Product_groupModel->columns = ['title', 'slug'];
        $Product_groupModel->limit = 0;
        $result['data'] = $Product_groupModel->gets();
        $result['choose'] = Lang::get('app.choose_product_group');
        break;
      case 'product':
        $ProductModel = new Product;
        $ProductModel->columns = ['title', 'slug'];
        $ProductModel->limit = 0;
        $result['data'] = $ProductModel->gets();
        $result['choose'] = Lang::get('app.choose_product');
        break;
      case 'page':
        $PageModel = new Page;
        $PageModel->columns = ['title', 'slug'];
        $PageModel->limit = 0;
        $result['data'] = $PageModel->gets();
        $result['choose'] = Lang::get('app.choose_page');
        break;
      case 'blog':
        $Blog_groupModel = new Blog_group;
        $Blog_groupModel->columns = ['title', 'slug'];
        $Blog_groupModel->limit = 0;
        $result['data'] = $Blog_groupModel->gets();
        $result['choose'] = Lang::get('app.choose_blog');
        break;
    }
    return $result;
  }
  public static function generateMenu($parent, $level = 0){
    $MenuModel = new Menu;
    unset($MenuModel->orderBy[0]);
    $MenuModel->orderBy[] = ['created_at', 'asc'];
    $html  = '<ul id="main-menu" class="nav nav-pills sf-menu sf-js-enabled">';
    if($level > 0 ){
      $html  = '<ul class="ul-sub-3">';
    }
    $MenuModel->where = [];
    $MenuModel->where[] = ['parent', $parent];
    $menus = $MenuModel->gets();
    foreach ($menus as $key => $menu) {
      $html .= '<li><a href="'. $menu->slug .'">'. $menu->title .'</a>';
      $html .= self::generateMenu($menu->id, $level++);
      $html .= '</li>';
    }
    $html .= '</ul>';
    if(count($menus) > 0 ){
      return $html;
    }
    return '';
  }

}