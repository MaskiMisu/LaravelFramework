<?php

namespace App\Http\Controllers\Backend;
use App\Http\Controllers\Controller;

use App\Http\Helpers\Func;
use App\Http\Helpers\Helper;
use Illuminate\Http\Request;
use App\Http\Models\Product;
use App\Http\Models\Product_group;
use App\Http\Models\Product_images;
use App\Http\Models\Page;
use App\Http\Models\Blog_group;
use Lang;
use File;
use Intervention\Image\ImageManagerStatic as Image;
use Illuminate\Http\Response;
class AjaxController extends Controller
{
  public function __construct(){

  }
  public function index(Request $request, $method, $action){
    $Helper = new Helper;
    $data = ['status' => 0 ];
    switch ($method) {
      case 'links':
        $result = $Helper->getLinks($action);
        if($result['data']){
          $data['status'] = 1;
          $data['data'] = $result['data'];
          $data['choose'] = $result['choose'];
        }
        break;
      case 'contact_maps':
        switch ($action) {
          case 'getmap':
            $address = $request->input()['address'];
            $result = $this->getMap($address);
            if($result){
              $data['status'] = 1;
              $data['data'] = $result;
            }
            break;
        }
        break;
    }
    return response()->json($data);
  }
  public function getMap($address){
      $data = [];
      if(!empty($address)){
        $url = 'https://maps.googleapis.com/maps/api/geocode/json?address='.urlencode($address).'&key='.config('app.google_api_key');
        $jsonDataContent = (file_get_contents($url));
        if($jsonDataContent){
          $result = json_decode($jsonDataContent, true)['results'][0];
          $lat = $result['geometry']['location']['lat'];
          $data['lat'] = (!empty($lat)) ? $lat : '';
          $lng = $result['geometry']['location']['lng'];
          $data['lng'] = (!empty($lng)) ? $lng : '';
          $formatted_address = $result['formatted_address'];
          $data['formatted_address'] = (!empty($formatted_address)) ? $formatted_address : '';
        }
      }
      return $data;
    }
  public function links($action){
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
  public function product(Request $request, $action){
    $input = $request->input();
    $data = [
      'status'=> 0,
      'title' => Lang::get('ajax.product_image'),
    ];
    switch ($action) {
      case 'removeImage':
        $data['message'] = Lang::get('ajax.remove_failed');
        $Product_images = new Product_images;
        $Func = new Func;
        $id = $input['id'];
        $Product_images->id = $id;
        $image = $Product_images->get();
        $Product_images->columns = ['picture'];
        $Product_images->delete();
        $Func->module = 'product';
        $Func->link_upload = 'product/';
        $Func->removeImage($image->picture);
        $data['status'] = 1;
        $data['message'] = Lang::get('ajax.remove_success');
        break;
      case 'editAlt':
        $data['message'] = Lang::get('ajax.edit_failed');
        $Product_images = new Product_images;
        $Func = new Func;
        $id = $input['id'];
        $Product_images->id = $id;
        $Product_images->columns = ['picture'];
        $image =$Product_images->get();
        $Product_images->args = ['alt' => $input['alt']];
        if($Product_images->edit()){
          $data['status'] = 1;
          $data['message'] = Lang::get('ajax.edit_success');
        }
        break;
    }
    return response()->json($data);
  }
}