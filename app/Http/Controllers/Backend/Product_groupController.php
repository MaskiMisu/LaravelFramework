<?php

namespace App\Http\Controllers\Backend;
use App\Http\Controllers\Controller;

use App\Http\Models\Product_group;
use App\Http\Models\Slug;
use App\Http\Helpers\Func;
use Illuminate\Http\Request;
use Lang;
use Intervention\Image\ImageManagerStatic as Image;
use File;
class Product_groupController extends Controller
{
  public function __construct(){
    $this->model = new Product_group;
    $this->table = 'product_group';
    $this->view = config('app.dir_view').'.'. $this->table;
    $this->link_upload = 'product_group/';
    Func::$link_upload = $this->link_upload;
    config(['app.module'=> $this->table]);
  }
  public function index(Request $request){
    $this->model->where[0] = ['deleted', 0];
    $data = [];
    $input = $request->input();
    if(isset($input['sortType'])){
      $sortType = explode(';', $input['sortType']);
      $this->model->orderBy = [$sortType];
    }
    if(isset($input['_token']) ){
      switch ($input['_tokenAction']) {
        case 'bulk':
        if(isset($input['ids'])){
          $action = explode(';', $input['bAction']);
          switch ($action[0]) {
            case 'showhi':
              $this->model->ids = $input['ids'];
              $args = ['showhi' => $action[1]];
              $this->model->args = $args;
              $this->model->editIn();
            break;
            case 'delete':
              $this->model->ids = $input['ids'];
              $args = ['deleted' => $action[1]];
              $this->model->args = $args;
              $this->model->editIn();
            break;
          }
        }
        break;
        case 'search':
        if(!empty($input['parent'])){
          $this->model->where[] = ['parent', $input['parent']];
        }
        if(isset($input['showhi'])){
          $this->model->where[] = ['showhi', $input['showhi']];
        }
        if(!empty($input['keywords'])){
          $this->model->orWhere[] = ['title', 'like', '%'.$input['keywords'].'%'];
          $this->model->orWhere[] = ['slug', 'like', '%'.$input['keywords'].'%'];
        }
        break;
      }
    }
    $data['items'] = $this->model->gets();
    $stt = 1;
    foreach ($data['items'] as $key => $item) {
      $data['items'][$key]->showhi_text = ($item->showhi == 1) ? Lang::get('app.show') : Lang::get('app.hide');
      $data['items'][$key]->stt = $stt;
      $data['items'][$key]->picture_thumb = Func::getPicture($item->picture);
      $this->model->parent_nav = explode(',', $item->parent_nav);
      $data['items'][$key]->parent_nav =  $this->model->getsIn();
      $stt++;
    }
    $data['counts'] = $this->model->counts();
    //box search
    //reset search
    $this->model->where = [];
    $this->model->orWhere = [];
    $this->model->limit = 0;
    $data['groupsSearch'] = $this->model->gets();
    return view($this->view.'.index', $data);
  }
  public function duplicate($id){
    $this->model->id = $id;
    $item = $this->model->get();
    if($item){
      $item->slug = json_decode($item->slug);
      foreach ($item->slug as $key => $value) {
        $item->slug->$key = $value.'-'.time();
      }
      $item->slug = json_encode($item->slug, JSON_UNESCAPED_UNICODE);
      $item->created_at = \Carbon\Carbon::now();
      $item->updated_at = \Carbon\Carbon::now();
      $table_id_action = $item->id;
      unset($item->id);
      $this->model->args = (Array) $item;
      $id_dup = $this->model->add();
      $SlugModel = new Slug;
      $SlugModel->table_action = $this->table;
      $SlugModel->table_id_action = $table_id_action;
      $SlugModel->limit = 0;
      $slugs = $SlugModel->gets();
      foreach ($slugs as $key => $slug) {
        $slug->table_id_action = $id_dup;
        $slug->slug .= '-'.time();
        unset($slug->id);
        $SlugModel->args = (Array) $slug;
        $SlugModel->add();
      }
    }
    return redirect($this->table);
  }
  public function trash(Request $request){
    $this->model->where[0] = ['deleted', 1];
    $data = [];
    $input = $request->input();
    if(isset($input['sortType'])){
      $sortType = explode(';', $input['sortType']);
      $this->model->orderBy = [$sortType];
    }
    if(isset($input['_token']) ){
      switch ($input['_tokenAction']) {
        case 'bulk':
        if(isset($input['ids'])){
          $action = explode(';', $input['bAction']);
          switch ($action[0]) {
            case 'showhi':
              $this->model->ids = $input['ids'];
              $args = ['showhi' => $action[1]];
              $this->model->args = $args;
              $this->model->editIn();
              break;
            case 'delete':
              if($action[1] == 0){
                 $this->model->ids = $input['ids'];
                $args = ['deleted' => $action[1]];
                $this->model->args = $args;
                $this->model->editIn();
              }else{
                foreach ($input['ids'] as $key => $id) {
                  if($key < count($input['ids']) - 1){
                    $this->destroy($id, false);
                  }else{
                    $this->destroy($id, true);
                  }
                }
              }
              break;
          }
        }
        break;
        case 'search':
          if(!empty($input['parent'])){
            $this->model->where[] = ['parent_nav', $input['parent']];
          }
          if(isset($input['showhi'])){
            $this->model->where[] = ['showhi', $input['showhi']];
          }
          if(!empty($input['keywords'])){
            $this->model->orWhere[] = ['title', 'like', '%'.$input['keywords'].'%'];
            $this->model->orWhere[] = ['slug', 'like', '%'.$input['keywords'].'%'];
          }
        break;
      }
    }
    $this->model->where[] = ['deleted', 1];
    $data['items'] = $this->model->gets();
    $stt = 1;
    foreach ($data['items'] as $key => $item) {
      $data['items'][$key]->showhi_text = ($item->showhi == 1) ? Lang::get('app.show') : Lang::get('app.hide');
      $data['items'][$key]->stt = $stt;
      $data['items'][$key]->picture_thumb = Func::getPicture($this->table, $item->picture, $this->link_upload);
      $this->model->parent_nav = explode(',', $item->parent_nav);
      $data['items'][$key]->parent_nav =  $this->model->getsIn();
      $stt++;
    }
    $data['counts'] = $this->model->counts();
    //box search
    $this->model->where = [];
    $this->model->orWhere = [];
    $this->model->limit = 0;
    $data['groupsSearch'] = $this->model->gets();
    return view($this->view.'.index', $data);
  }
  public function create(Request $request){
    $SlugModel = new Slug;
    $data = array('status' => 0 );
    $input = $request->input();
    if(isset($input['_token'])){
      $langs = config('app.langs');
      $title = array();
      $slug = array();
      $short = array();
      $meta_title = array();
      $meta_keywords = array();
      $meta_description = array();
      foreach ($langs as $key => $lang) {
        $title[$lang] = $input['title'];
        $slug_str = str_slug($input['title'], "-");
        $slug_str .= $lang != 'vi' ? '-' .$lang : '';
        $SlugModel->slug = $slug_str;
        $slug_db = $SlugModel->get_slug();
        if($slug_db){
          $slug_str .= '-'. time();
        }
        $slug[$lang] = $slug_str;
        $short[$lang] = $input['short'];
        $meta_title[$lang] = $input['meta_title'];
        $meta_keywords[$lang] = $input['meta_keywords'];
        $meta_description[$lang] = $input['meta_description'];
      }
      $parent = [];
      $parent_nav = [];
      $parent_nav_match = [];
      foreach ($input['parent_nav'] as $key => $value) {
        if(empty($value)) continue;
        $value = explode(';', $value);
        if(!empty($value[0])){
          $parent[] = $value[0];
        }
        if(!empty($value[1])){
          $parent_nav[] = $value[1];
        }
      }
      $parent_nav = array_merge( $parent_nav, $parent);
      foreach($parent_nav as $key => $value){
        $value = explode(',', $value);
        foreach ($value as $k => $v) {
          if(!in_array($v, $parent_nav_match)){
            $parent_nav_match[] = $v;
          }
        }
      }
      $args = [
      'link_upload' => $this->link_upload,
      'parent' => implode(',', $parent),
      'parent_nav' => implode(',', $parent_nav_match),
      'title' => json_encode($title, JSON_UNESCAPED_UNICODE),
      'slug' => json_encode($slug, JSON_UNESCAPED_UNICODE),
      'short' => json_encode($short, JSON_UNESCAPED_UNICODE),
      'meta_title' => json_encode($meta_title, JSON_UNESCAPED_UNICODE),
      'meta_keywords' => json_encode($meta_keywords, JSON_UNESCAPED_UNICODE),
      'meta_description' => json_encode($meta_description, JSON_UNESCAPED_UNICODE),
      'showhi' => $input['showhi'],
      'created_at' => \Carbon\Carbon::now(),
      'updated_at' => \Carbon\Carbon::now(),
      ];

      //upload picture
      $file = $request->file('picture');
      if($file){
        $image_name = time().'-'.$file->getClientOriginalName();
        $image = Image::make($file->getRealPath());
        File::makeDirectory('uploads/'.$this->link_upload, $mode = 0777, true, true);
        $image->save(public_path('uploads/'.$this->link_upload. $image_name));
        //create thumb
        File::makeDirectory('uploads_thumbs/'.$this->link_upload, $mode = 0777, true, true);
        foreach (config('app.'.$this->table.'.thumbsize') as $key => $size) {
          $image->fit($size[0], $size[1])->save(public_path('uploads_thumbs/'.$this->link_upload.$key.'-'. $image_name));
        }
        $args['picture'] = $image_name;
      }
      $this->model->args = $args;
      $id = $this->model->add();
      if($id){
        foreach ($langs as $key => $lang) {
          $SlugModel->args = [
          'lang_code' => $lang,
          'title' => $input['title'],
          'table_action' => $this->table,
          'table_id_action' => $id,
          'action' => 'group',
          'slug' => $slug[$lang],
          'created_at' => \Carbon\Carbon::now(),
          'updated_at' => \Carbon\Carbon::now(),
          ];
          $SlugModel->add();
        }
        $data['status'] = 1;
      }
    }
    $data['groups'] = $this->model->gets();
    return view($this->view.'.create', $data);
  }
  public function show($id){
    $data = [];
    $this->model->id = $id;
    $item = $this->model->get();
    if($item){
      $item->showhi_text = $item->showhi == 1 ? Lang::get('app.show') : Lang::get('app.hide');
      $item->parent_nav_arr = explode(',', $item->parent_nav);
      $item->picture_thumb = Func::getPicture($item->picture);
    }
    $this->model->parent_nav = $item->parent_nav_arr;
    $data['groups'] = $this->model->getsIn();
    $data['item'] = $item;
    return view($this->view.'.show', $data);
  }
  public function edit(Request $request, $id){
    $SlugModel = new Slug;
    $lang_cur = config('app.locale');
    $data = ['status' => 0 ];
    $this->model->id = $id;
    $item = $this->model->get();
    $input = $request->input();
    if(isset($input['_token'])){
      $langs = array('vi', 'en', 'jp');
      $title = json_decode($item->title, true);
      $slug = json_decode($item->slug, true);
      $short = json_decode($item->short, true);
      $meta_title = json_decode($item->meta_title, true);
      $meta_keywords = json_decode($item->meta_keywords, true);
      $meta_description = json_decode($item->meta_description, true);
      $change_slug = false;
      if($input['title'] != $title[$lang_cur]){
        $change_slug = true;
        $title[$lang_cur] = $input['title'];
        $slug_str = str_slug($input['title'], "-");
        $SlugModel->slug = $slug_str;
        $slug_db = $SlugModel->get_slug();
        if($slug_db){
          $slug_str .= '-'. time();
        }
        $slug[$lang_cur] = $slug_str;
      }
      $short[$lang_cur] = $input['short'];
      $meta_title[$lang_cur] = $input['meta_title'];
      $meta_keywords[$lang_cur] = $input['meta_keywords'];
      $meta_description[$lang_cur] = $input['meta_description'];
      $parent = [];
      $parent_nav = [];
      $parent_nav_match = [];

      foreach ($input['parent_nav'] as $key => $value) {
        if(empty($value)) continue;
        $value = explode(';', $value);
        if(!empty($value[0])){
          $parent[] = $value[0];
        }
        if(!empty($value[1])){
          $parent_nav[] = $value[1];
        }
      }
      $parent_nav = array_merge( $parent_nav, $parent);
      foreach($parent_nav as $key => $value){
        $value = explode(',', $value);
        foreach ($value as $k => $v) {
          if(!in_array($v, $parent_nav_match)){
            $parent_nav_match[] = $v;
          }
        }
      }
      $args = [
      'parent' => implode(',', $parent),
      'parent_nav' => implode(',', $parent_nav),
      'title' => json_encode($title, JSON_UNESCAPED_UNICODE),
      'slug' => json_encode($slug, JSON_UNESCAPED_UNICODE),
      'short' => json_encode($short, JSON_UNESCAPED_UNICODE),
      'meta_title' => json_encode($meta_title, JSON_UNESCAPED_UNICODE),
      'meta_keywords' => json_encode($meta_keywords, JSON_UNESCAPED_UNICODE),
      'meta_description' => json_encode($meta_description, JSON_UNESCAPED_UNICODE),
      'showhi' => $input['showhi'],
      'updated_at' => \Carbon\Carbon::now(),
      ];
      //upload picture
      $file = $request->file('picture');
      if($file){
        //remove picture old
        if(!empty($item->picture)){
          Func::removeImage($item->picture);
        }
        $args['picture'] = Func::uploadImage($file);
      }
      $this->model->id = $id;
      $this->model->args = $args;
      $update_stt = $this->model->edit();
      if($update_stt && $change_slug == true){
        $args = [ 'slug' => $slug[$lang_cur] ];
        $SlugModel->table_action = $this->table;
        $SlugModel->table_id_action = $id;
        $SlugModel->args = $args;
        $SlugModel->edit();
      }
      $data['status'] = 1;
    }
    $item = $this->model->get($id);
    if($item){
      $item->parent_nav_arr = explode(',', $item->parent_nav);
      $item->picture_thumb = Func::getPicture($item->picture);
    }
    $this->model->where[] = ['id', '<>', $item->id];
    $data['groups'] = $this->model->gets();
    $data['item'] = $item;
    return view($this->view.'.edit', $data);
  }
  public function destroy($id, $redirect = true){
    $SlugModel = new Slug;
    $this->model->id = $id;
    $item = $this->model->get();
    if($item->deleted == 0){
      $args = ['deleted'=> 1];
      $this->model->args = $args;
      $this->model->edit();
      return redirect('backend/'. $this->table);
    }else{
      $this->model->delete();
      //remove picture old
      if(!empty($item->picture)){
        Func::removeImage($item->picture);
      }
      $SlugModel->table_action = $this->table;
      $SlugModel->table_id_action = $id;
      $SlugModel->delete();
      if($redirect == true){
        return redirect('backend/'. $this->table.'/trash');
      }
    }
  }
}
