<?php

namespace App\Http\Helpers;
use File;
use Intervention\Image\ImageManagerStatic as Image;
use App\Http\Models\Slug;
class Func
{
  public static $link_upload = '';
  public static function generateRoute($url){
    $Slug = new Slug;
    $slug_arr = explode('/', trim( $url , '/'));
    if(count($slug_arr) == 1){
      $data['table_action'] = 'home';
      $data['table_id_action'] ='index';
      $data['url'] ='/';
      return $data;
    }
    $slug = $slug_arr[count($slug_arr) - 1];
    $slug = str_replace('.html', '', $slug);
    $Slug->slug = $slug;
    $item = $Slug->get_slug();
    $data = [];
    if($item){
      $data['url'] = $slug;
      $data['table_action'] = $item->table_action;
      $data['table_id_action'] = $item->table_id_action;
      $data['action'] = $item->action;
      config(['frontend.slug' => $item]);
    }else{
      echo '404';die;
    }
    return $data;
  }
  public static function getPicture($picture, $size = ''){
    $pic = '';
    $file_default = 'assets/images/default.png';
    if(empty($picture)){
      return $file_default;
    }
    if(config('app.'.config('app.module').'.thumbsize')){
      foreach (config('app.'.config('app.module').'.thumbsize') as $key => $value) {
        if(!empty($size) && $key != $size){
          continue;
        }
        if(file_exists(public_path().'/uploads_thumbs/'.self::$link_upload.$key.'-'. $picture )){
          $pic = 'uploads_thumbs/'.self::$link_upload.$key.'-'. $picture;
          break;
        }
      }
    }
    if(empty($pic)){
      if(file_exists(public_path().'/uploads/'.self::$link_upload.$picture )){
        $pic ='uploads/'.self::$link_upload.$picture;
      }else{
        $pic = $file_default;
      }
    }
    return $pic;
  }
  public static function uploadImage($file){
    $image_name = time().'-'.$file->getClientOriginalName();
    $image = Image::make($file->getRealPath());
    File::makeDirectory('uploads/'.self::$link_upload, $mode = 0777, true, true);
    $image->save(public_path('uploads/'.self::$link_upload. $image_name));
    //create thumb
    File::makeDirectory('uploads_thumbs/'.self::$link_upload, $mode = 0777, true, true);
    foreach (config('app.'.config('app.module').'.thumbsize') as $key => $size) {
      $image->fit($size[0], $size[1])->save(public_path('uploads_thumbs/'.self::$link_upload.$key.'-'. $image_name));
    }
    if(file_exists(public_path('uploads/'.self::$link_upload. $image_name))){
      return $image_name;
    }
    return '';
  }
  public static function removeImage($picture){
    if(file_exists(public_path().'/uploads/'.self::$link_upload.$picture)){
      unlink(public_path().'/uploads/'.self::$link_upload.$picture);
    }
    foreach (config('app.'.config('app.module').'.thumbsize') as $key => $size) {
      if(file_exists(public_path().'/uploads_thumbs/'.self::$link_upload.$key.'-'.$picture)){
        unlink(public_path().'/uploads_thumbs/'.self::$link_upload.$key.'-'.$picture);
      }
    }
  }
  public static function menuSort($items){
    $html = self::menuSortLoop($items, 0);
    return $html;
  }
  public static function menuSortLoop($items = [], $parent = 0, $level = 0, $char= '', $html = ''){
    foreach ($items as $key => $item) {
      if($item->parent == $parent){
        //$item->menus = $this->menuSortLoop($items, $item->id);
        //$items_new[] = $item;
        if($parent == 0 ){
          $html .= '<div class="panel panel-info">';
          $html .= '<div class="panel-heading"><a href="'. url('backend/menu/'.$item->id.'/edit') .'">'.$item->title.'</a></div>';
          $html .= '<div class="panel-body">
                      <div id="sortable'.$item->id.'">';
        }else{
          $html .= '<div class="level'.$level.'"><a href="'. url('backend/menu/'.$item->id.'/edit') .'">'.$char. $item->title .'</a></div><hr>';
        }
        $text = $char. '---';
        $html .= self::menuSortLoop($items, $item->id, $item->level + 1, $text);
        if($parent == 0 ){
          $html .= '</div></div></div>';
          $html .='<script type="text/javascript">
                    $(function(){
                      $( "#sortable'.$item->id.'" ).sortable({});
                      $( "#sortable'.$item->id.'" ).disableSelection();
                    });
                  </script>';
        }
        unset($items[$key]);
        //$items_new = $this->menuSortLoop($items, $item->id, $items_new);
      }
    }
    return $html;
  }

  public static function menuSortFrontend($items, $parent = 0){
    $html = '<ul id="main-menu" class="nav nav-pills sf-menu sf-js-enabled">';
    $html .= self::menuSortLoopFrontend($items, $parent);
    $html .= '</ul>';
    return $html;
  }
  public static function menuSortLoopFrontend($items = [], $parent = 0, $level = 0, $char= '', $html = ''){
    foreach ($items as $key => $item) {
      if($item->parent == $parent){
        if($level > 0 ){
          $html .= '<ul class="level'.$level.'">';
        }
        $html .= '<li><a href="'. url($item->slug) .'">'.$item->title.'</a>';
        $text = $char. '---';
        $html .= self::menuSortLoopFrontend($items, $item->id, $item->level + 1, $text);
        if($level > 0 ){
          $html .= '<ul class="level'.$level.'">';
        }
        if($level > 0 ){
          $html .= '</ul>';
        }
        $html .= '</li>';
        unset($items[$key]);
      }
    }
    return $html;
  }


}
