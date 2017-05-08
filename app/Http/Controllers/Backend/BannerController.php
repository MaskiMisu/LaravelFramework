<?php

namespace App\Http\Controllers\Backend;
use App\Http\Controllers\Controller;

use App\Http\Models\Banner;
use App\Http\Models\Banner_group;
use App\Http\Helpers\Func;
use Illuminate\Http\Request;
use Lang;
class BannerController extends Controller
{
  public function __construct(){
    $this->model = new Banner;
    $this->table = 'banner';
    $this->link_upload = 'banner/';
    $this->view = config('app.dir_view').'.'. $this->table;
    Func::$link_upload = $this->link_upload;
    config(['app.module'=> $this->table]);
  }
  public function index(Request $request){
    $Banner_groupModel = new Banner_group;
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
                $args = ['deleted' => 1];
                $this->model->args = $args;
                $this->model->editIn();
                break;
            }
          }
          break;
        case 'search':
          if(!empty($input['parent'])){
            $this->model->where[] = ['group', $input['parent']];
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
      $data['items'][$key]->picture_thumb = Func::getPicture( $item->picture);
      $Banner_groupModel->columns = ['id', 'title'];
      $Banner_groupModel->id = $item->group;
      $data['items'][$key]->group = $Banner_groupModel->get();
      $stt++;
    }
    $data['counts'] = $this->model->counts();
    $data['groupsSearch'] = $Banner_groupModel->gets();
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
    return redirect('backend/'.$this->table);
  }
  public function trash(Request $request){
    $Banner_groupModel = new Banner_group;
    $this->model->where[0] = ['deleted', 1];
    $data = [];
    $input = $request->input();
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
    $this->model->where[] = ['deleted', 1];
    $data['items'] = $this->model->gets();
    $stt = 1;
    foreach ($data['items'] as $key => $item) {
      $data['items'][$key]->showhi_text = ($item->showhi == 1) ? Lang::get('app.show') : Lang::get('app.hide');
      $data['items'][$key]->stt = $stt;
      $data['items'][$key]->picture_thumb = Func::getPicture($item->picture);
      $Banner_groupModel->id = $item->group;
      $data['items'][$key]->group = $Banner_groupModel->get();
      $stt++;
    }
    $data['counts'] = $this->model->counts();
    $data['groupsSearch'] = $Banner_groupModel->gets();
    return view($this->view.'.index', $data);
  }
  public function create(Request $request){
    $Banner_groupModel = new Banner_group;
    $data = array('status' => 0 );
    $input = $request->input();
    if(isset($input['_token'])){
      $langs = config('app.langs');
      $title = array();
      $content = array();
      $alt = array();
      foreach ($langs as $key => $lang) {
        $title[$lang] = $input['title'];
        $content[$lang] = $input['content'];
        $alt[$lang] = $input['alt'];
      }
      $args = [
        'title' => json_encode($title, JSON_UNESCAPED_UNICODE),
        'content' => json_encode($content, JSON_UNESCAPED_UNICODE),
        'alt' => json_encode($alt, JSON_UNESCAPED_UNICODE),
        'group' => $input['group'],
        'showhi' => $input['showhi'],
        'link_upload' => $this->link_upload,
        'created_at' => \Carbon\Carbon::now(),
        'updated_at' => \Carbon\Carbon::now(),
      ];
      //upload picture
      $file = $request->file('picture');
      $file_other = $request->file('picture_other');
      if($file){
        $args['picture'] = Func::uploadImage($file);
      }
      $this->model->args = $args;
      $id = $this->model->add();
      if($id){
        $data['status'] = 1;
      }
    }
    $Banner_groupModel->limit = 0;
    $data['groups'] = $Banner_groupModel->gets();
    return view($this->view.'.create', $data);
  }
  public function show($id){
    $Banner_groupModel = new Banner_group;
    $data = [];
    $this->model->id = $id;
    $item = $this->model->get();
    if($item){
      $item->showhi_text = $item->showhi == 1 ? Lang::get('app.show') : Lang::get('app.hide');
      $item->picture_thumb = Func::getPicture($item->picture);
      $Banner_groupModel->columns = ['id', 'title'];
      $Banner_groupModel->id = $item->group;
      $item->group = $Banner_groupModel->get();
    }
    $data['item'] = $item;
    return view($this->view.'.show', $data);
  }
  public function edit(Request $request, $id){
    $Banner_groupModel = new Banner_group;
    $lang_cur = config('app.locale');
    $data = ['status' => 0 ];
    $this->model->id = $id;
    $item = $this->model->get();
    $input = $request->input();
    if(isset($input['_token'])){
      $langs = array('vi', 'en', 'jp');
      $title = json_decode($item->title, true);
      $content = json_decode($item->content, true);
      $alt = json_decode($item->alt, true);
      $title[$lang_cur] = $input['title'];
      $content[$lang_cur] = $input['content'];
      $alt[$lang_cur] = $input['alt'];
      $args = [
        'title' => json_encode($title, JSON_UNESCAPED_UNICODE),
        'content' => json_encode($content, JSON_UNESCAPED_UNICODE),
        'alt' => json_encode($alt, JSON_UNESCAPED_UNICODE),
        'group' => $input['group'],
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
        $args['picture'] = Func::uploadImage($file);;
      }
      $this->model->id = $id;
      $this->model->args = $args;
      $update_stt = $this->model->edit();
      if($update_stt){
        $data['status'] = 1;
      }
    }
    $item = $this->model->get($id);
    if($item){
      $item->showhi_text = $item->showhi == 1 ? Lang::get('app.show') : Lang::get('app.hide');
    }
    $data['item'] = $item;
    $data['groups'] = $Banner_groupModel->gets();
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
      //remove picture old
      if(!empty($item->picture)){
        Func::removeImage($item->picture);
      }
      $SlugModel->table_action = $this->table;
      $SlugModel->table_id_action = $id;
      $SlugModel->delete();
      return redirect('backend/'.$this->table.'/trash');
    }
  }
}
