<?php

namespace App\Http\Controllers\Backend;
use App\Http\Controllers\Controller;

use App\Http\Models\Menu;
use App\Http\Helpers\Helper;
use App\Http\Helpers\Func;
use Illuminate\Http\Request;
use Lang;
class MenuController extends Controller
{
  public function __construct(){
    $this->model = new Menu;
    $this->table = 'menu';
    $this->view = config('app.dir_view').'.'. $this->table;
    config(['app.module'=> $this->table]);
  }
  public function index(){
    $data = [];
    $items = $this->model->gets();
    $data['menus'] = Func::menuSort($items);
    return view($this->view.'.index', $data);
  }
  public function create(Request $request){
    $Helper = new Helper;
    $data = [];
    $input = $request->input();
    $data = ['status' => 0 ];
    if(isset($input['_token'])){
      $langs = config('app.langs');
      $title = [];
      $slug = [];
      foreach ($langs as $key => $lang) {
        $title[$lang] = $input['title'];
        $slug[$lang] = $input['slug'];
      }
      $args = [
        'title' => json_encode($title, JSON_UNESCAPED_UNICODE),
        'slug' => json_encode($slug, JSON_UNESCAPED_UNICODE),
        'parent' => 0,
        'level' => 0,
        'created_at' => \Carbon\Carbon::now(),
        'updated_at' => \Carbon\Carbon::now(),
      ];
      $this->model->args = $args;
      $insert_id = $this->model->add();

      if($insert_id){
        $links_allow = ['product', 'product_group', 'page', 'blog'];
        foreach ($input['linksContent'] as $key => $link) {
          $link_arr = explode(';', $link);
          $type = $link_arr[0];
          $slug_text = $link_arr[1];
          $title_text = $input['linksTitle'][$key];
          if(empty($title_text)){
            continue;
          }
          if($type =='web'){
            $slug_text = $input['linksWeb'][$key];
          }elseif(in_array($type, $links_allow)){
            $slug_text = $input['linksSlug'][$key];
          }
          $title = [];
          $slug = [];
          foreach ($langs as $key => $lang) {
            $title[$lang] = $title_text;
            $slug[$lang] = $slug_text;
          }
          $args = [
            'type' => $type,
            'title' => json_encode($title, JSON_UNESCAPED_UNICODE),
            'slug' => json_encode($slug, JSON_UNESCAPED_UNICODE),
            'parent' => $insert_id,
            'level' => 1,
            'created_at' => \Carbon\Carbon::now(),
            'updated_at' => \Carbon\Carbon::now(),
          ];
          $this->model->args = $args;
          $this->model->add();
        }
        $data['status'] = 1;
      }
    }

    $data['links'] = $Helper->generateLinks();
    return view($this->view.'.create', $data);
  }
  public function edit(Request $request, $id){
    $lang_cur = config('app.locale');
    $Helper = new Helper;
    $data = ['status'=> 0];
    $input = $request->input();
    if(isset($input['_token'])){
      //get and update menu parent
      $this->model->id = $id;
      $item = $this->model->get();
      $lang_cur = config('app.locale');
      $title = json_decode($item->title);
      $slug = json_decode($item->slug);
      $title->$lang_cur = $input['title'];
      $slug->$lang_cur = $input['slug'];
      $args = [
        'title' => json_encode($title, JSON_UNESCAPED_UNICODE),
        'slug' => json_encode($slug, JSON_UNESCAPED_UNICODE),
        'updated_at' => \Carbon\Carbon::now(),
      ];
      $this->model->args = $args;
      $this->model->edit();
      // get and update menu c
      $links_allow = ['product', 'product_group', 'page', 'blog'];
      $langs = config('app.langs');
      $ids = explode(',', $input['ids']);
      $ids_new = [];
      if(!isset($input['linksContent'])){
        foreach ($ids as $key => $value) {
          $this->model->id = $value;
          $this->model->delete();
        }
      }else{
        foreach ($input['linksContent'] as $key => $link) {
          $ids_new[] = $key;
          $link_arr = explode(';', $link);
          $type = $link_arr[0];
          $slug_text = $link_arr[1];
          $title_text = $input['linksTitle'][$key];
          if(empty($title_text)){
            continue;
          }
          if($type =='web'){
            $slug_text = $input['linksWeb'][$key];
          }elseif(in_array($type, $links_allow)){
            $slug_text = $input['linksSlug'][$key];
          }
          if(strpos($key, 'id') !== false){
            $link_id = str_replace('id', '', $key);
            // edit menu
            if(in_array($link_id, $ids)){
              $this->model->id = $link_id;
              $item = $this->model->get();
              $title = json_decode($item->title);
              $slug = json_decode($item->slug);
              $title->$lang_cur = $title_text;
              $slug->$lang_cur = $slug_text;
              $args = [
                'title' => json_encode($title, JSON_UNESCAPED_UNICODE),
                'slug' => json_encode($slug, JSON_UNESCAPED_UNICODE),
                'updated_at' => \Carbon\Carbon::now(),
              ];
              $this->model->args = $args;
              $this->model->edit();
            }
          }else{
            $title = [];
            $slug = [];
            foreach ($langs as $key => $lang) {
              $title[$lang] = $title_text;
              $slug[$lang] = $slug_text;
            }
            $args = [
              'type' => $type,
              'title' => json_encode($title, JSON_UNESCAPED_UNICODE),
              'slug' => json_encode($slug, JSON_UNESCAPED_UNICODE),
              'parent' => $input['parent'],
              'level' => $input['level'] + 1,
              'created_at' => \Carbon\Carbon::now(),
              'updated_at' => \Carbon\Carbon::now(),
            ];
            $this->model->args = $args;
            $this->model->add();
          }
          $data['status'] = 1;
        }
        foreach ($ids as $key => $value) {
          if(!in_array('id'.$value, $ids_new)){
            $this->model->id = $value;
            $this->model->delete();
          }
        }
      }


      $data['status'] = 1;
    }
    $this->model->id = $id;
    $item = $this->model->get();
    if($item){
      $arr = json_decode($item->title, true);
      $item->title = $arr[$lang_cur];
      $arr = json_decode($item->slug, true);
      $item->slug = $arr[$lang_cur];
    }
    $this->model->where[] = ['parent', $id];
    $data['menus'] = $this->model->gets();
    $links_allow = ['product_group', 'product', 'blog', 'page'];
    $item->item_c = '';
    foreach ($data['menus'] as $key => $value) {
      $item->item_c .= (!empty($item->item_c)) ?','. $value->id : $value->id;
      if(in_array($value->type, $links_allow)){
        $links = $Helper->getLinks($value->type);
        $data['menus'][$key]->link_c = $links['data'];
        $data['menus'][$key]->choose = $links['choose'];
      }
    }
    $data['item'] = $item;
    $data['links'] = $Helper->generateLinks();
    return view($this->view.'.edit', $data);
  }
  public function destroy($id){
    $this->model->id = $id;
    $this->model->delete();
    return redirect('backend/'.$this->table);
  }
}
