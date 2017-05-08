<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Http\Helpers\Func;
use App\Http\Helpers\Helper;
use Illuminate\Http\Request;
use Lang;
use App\Http\Models\Product_group;
use App\Http\Models\Menu;
class HomeController extends Controller
{
  public function __construct(){
    $this->link_upload = 'product_group/';
    $this->table = 'product_group';
    $this->module = 'home';
    Func::$link_upload = $this->link_upload;
    config(['app.module' => $this->module]);
  }
  public function index(){
    $data = [];
    $Product_group = new Product_group;
    $groups = $Product_group->gets();
    foreach ($groups as $key => $value) {
      $groups[$key]->picture_thumb = Func::getPicture($value->picture, 2);
    }
    $data['groups'] = $groups;
    $data['menu'] = Helper::generateMenu(10);
    return view(config('frontend.dir_view').'.home.index', $data);
  }
}