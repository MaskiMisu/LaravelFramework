<?php

namespace App\Http\Controllers\Backend;
use App\Http\Controllers\Controller;

use App\Http\Models\Blog_group;
use App\Http\Models\Slug;
use Illuminate\Http\Request;
use Lang;
class Blog_groupController extends Controller
{
  public function __construct(){
    $this->model = new Blog_group;
    $this->table = 'blog_group';
    $this->view = config('app.dir_view').'.'. $this->table;
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
    $data['items'] = $this->model->gets();
    $stt = 1;
    foreach ($data['items'] as $key => $item) {
      $data['items'][$key]->showhi_text = ($item->showhi == 1) ? Lang::get('app.show') : Lang::get('app.hide');
      $data['items'][$key]->stt = $stt;
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
                  $this->destroy($id);
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
      $args = [
      'parent_nav' => implode(',', $input['parent_nav']),
      'title' => json_encode($title, JSON_UNESCAPED_UNICODE),
      'slug' => json_encode($slug, JSON_UNESCAPED_UNICODE),
      'commentable' => $input['commentable'],
      'short' => json_encode($short, JSON_UNESCAPED_UNICODE),
      'meta_title' => json_encode($meta_title, JSON_UNESCAPED_UNICODE),
      'meta_keywords' => json_encode($meta_keywords, JSON_UNESCAPED_UNICODE),
      'meta_description' => json_encode($meta_description, JSON_UNESCAPED_UNICODE),
      'showhi' => $input['showhi'],
      'created_at' => \Carbon\Carbon::now(),
      'updated_at' => \Carbon\Carbon::now(),
      ];
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
      $arr = json_decode($item->title, true);
      $item->title = $arr[config('app.locale')];
      $arr = json_decode($item->short, true);
      $item->short = $arr[config('app.locale')];
      $arr = json_decode($item->meta_title, true);
      $item->meta_title = $arr[config('app.locale')];
      $arr = json_decode($item->meta_keywords, true);
      $item->meta_keywords = $arr[config('app.locale')];
      $arr = json_decode($item->meta_description, true);
      $item->meta_description = $arr[config('app.locale')];
      $item->showhi_text = $item->showhi == 1 ? Lang::get('app.show') : Lang::get('app.hide');
      $item->parent_nav_arr = explode(',', $item->parent_nav);
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
      $args = [
      'parent_nav' => implode(',', $input['parent_nav']),
      'title' => json_encode($title, JSON_UNESCAPED_UNICODE),
      'slug' => json_encode($slug, JSON_UNESCAPED_UNICODE),
      'commentable' => $input['commentable'],
      'short' => json_encode($short, JSON_UNESCAPED_UNICODE),
      'meta_title' => json_encode($meta_title, JSON_UNESCAPED_UNICODE),
      'meta_keywords' => json_encode($meta_keywords, JSON_UNESCAPED_UNICODE),
      'meta_description' => json_encode($meta_description, JSON_UNESCAPED_UNICODE),
      'showhi' => $input['showhi'],
      'updated_at' => \Carbon\Carbon::now(),
      ];
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
      $arr = json_decode($item->title, true);
      $item->title = $arr[config('app.locale')];
      $arr = json_decode($item->short, true);
      $item->short = $arr[config('app.locale')];
      $arr = json_decode($item->meta_title, true);
      $item->meta_title = $arr[config('app.locale')];
      $arr = json_decode($item->meta_keywords, true);
      $item->meta_keywords = $arr[config('app.locale')];
      $arr = json_decode($item->meta_description, true);
      $item->meta_description = $arr[config('app.locale')];

      $item->parent_nav_arr = explode(',', $item->parent_nav);
    }
    $this->model->where[] = ['id', '<>', $item->id];
    $data['groups'] = $this->model->gets();
    $data['item'] = $item;
    return view($this->view.'.edit', $data);
  }
  public function destroy($id){
    $SlugModel = new Slug;
    $this->model->id = $id;
    $item = $this->model->get();
    if($item->deleted == 0){
      $args = ['deleted'=> 1];
      $this->model->args = $args;
      $this->model->edit();
      return redirect('backend/'.$this->table);
    }else{
      $this->model->delete();
      $SlugModel->table_action = $this->table;
      $SlugModel->table_id_action = $id;
      $SlugModel->delete();
      return redirect('backend/'.$this->table.'/trash');
    }
  }
}
