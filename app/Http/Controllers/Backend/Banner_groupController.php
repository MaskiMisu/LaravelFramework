<?php

namespace App\Http\Controllers\Backend;
use App\Http\Controllers\Controller;

use App\Http\Models\Banner_group;
use App\Http\Helpers\Func;
use Illuminate\Http\Request;
use Lang;
class Banner_groupController extends Controller
{
  public function __construct(){
    $this->model = new Banner_group;
    $this->table = 'banner_group';
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
                $args = ['deleted' =>1];
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
            $this->model->orWhere[] = ['banner_key', 'like', '%'.$input['keywords'].'%'];
          }
          break;
      }
    }
    $data['items'] = $this->model->gets();
    $stt = 1;
    foreach ($data['items'] as $key => $item) {
      $data['items'][$key]->showhi_text = ($item->showhi == 1) ? Lang::get('app.show') : Lang::get('app.hide');
      $data['items'][$key]->stt = $stt;
      $stt++;
    }
    $data['counts'] = $this->model->counts();
    return view($this->table.'.index', $data);
  }
  public function duplicate($id){
    $this->model->allow_parse_data = false;
    $this->model->id = $id;
    $item = $this->model->get();
    if($item){
      $item->banner_key .= '-'. time();
      $item->created_at = \Carbon\Carbon::now();
      $item->updated_at = \Carbon\Carbon::now();
      unset($item->id);
      $this->model->args = (Array) $item;
      $id_dup = $this->model->add();
    }
    return redirect('backend/'.$this->table);
  }
  public function trash(Request $request){
    $Func = new Func;
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
                foreach ($input['ids'] as $key => $value) {
                  if($key == count($input['ids']) - 1 ){
                    $this->destroy($value, true);
                  }else{
                    $this->destroy($value);
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
      $stt++;
    }
    $data['counts'] = $this->model->counts();
    return view($this->table.'.index', $data);
  }
  public function create(Request $request){
    $data = array('status' => 0 );
    $input = $request->input();
    if(isset($input['_token'])){
      $langs = config('app.langs');
      $title = array();
      foreach ($langs as $key => $lang) {
        $title[$lang] = $input['title'];
      }
      $args = [
        'title' => json_encode($title, JSON_UNESCAPED_UNICODE),
        'banner_key' => $input['banner_key'],
        'showhi' => $input['showhi'],
        'created_at' => \Carbon\Carbon::now(),
        'updated_at' => \Carbon\Carbon::now(),
      ];
      $this->model->args = $args;
      $id = $this->model->add();
      if($id){
        $data['status'] = 1;
      }
    }
    return view($this->table.'.create', $data);
  }
  public function show($id){
    $data = [];
    $this->model->id = $id;
    $item = $this->model->get();
    if($item){
      $item->showhi_text = $item->showhi == 1 ? Lang::get('app.show') : Lang::get('app.hide');
    }
    $data['item'] = $item;
    return view($this->table.'.show', $data);
  }
  public function edit(Request $request, $id){
    $lang_cur = config('app.locale');
    $data = ['status' => 0 ];
    $this->model->id = $id;
    $input = $request->input();
    if(isset($input['_token'])){
      $item = $this->model->get();
      $langs = config('app.langs');
      $title = json_decode($item->title, true);
      $title[$lang_cur] = $input['title'];
      $args = [
        'title' => json_encode($title, JSON_UNESCAPED_UNICODE),
        'banner_key' => $input['banner_key'],
        'showhi' => $input['showhi'],
        'updated_at' => \Carbon\Carbon::now(),
      ];
      $this->model->id = $id;
      $this->model->args = $args;
      $update_stt = $this->model->edit();
      if($update_stt){
        $data['status'] = 1;
      }
    }
    $data['item'] = $this->model->get();
    return view($this->table.'.edit', $data);
  }
  public function destroy($id, $redirect = false){
    $this->model->id = $id;
    $item = $this->model->get();
    if($item->deleted == 0){
      $args = ['deleted'=> 1];
      $this->model->args = $args;
      $this->model->edit();
      return redirect('backend/'.$this->table);
    }else{
      $this->model->delete();
      if($redirect){
        return redirect('backend/'.$this->table.'/trash');
      }
    }
  }
}
