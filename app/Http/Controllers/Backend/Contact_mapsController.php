<?php

namespace App\Http\Controllers\Backend;
use App\Http\Controllers\Controller;

use App\Http\Models\Contact_maps;
use App\Http\Models\Slug;
use Illuminate\Http\Request;
use Lang;
class Contact_mapsController extends Controller
{
  public function __construct(){
    $this->model = new Contact_maps;
    $this->table = 'contact_maps';
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
                $args = ['deleted' => 1];
                $this->model->args = $args;
                $this->model->editIn();
                break;
            }
          }
          break;
        case 'search':
          if(isset($input['showhi'])){
            $this->model->where[] = ['showhi', $input['showhi']];
          }
          if(!empty($input['keywords'])){
            $this->model->orWhere[] = ['title', 'like', '%'.$input['keywords'].'%'];
            $this->model->orWhere[] = ['address', 'like', '%'.$input['keywords'].'%'];
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
    return view($this->view.'.index', $data);
  }
  public function duplicate($id){
    $this->model->id = $id;
    $item = $this->model->get();
    if($item){
      $item->created_at = \Carbon\Carbon::now();
      $item->updated_at = \Carbon\Carbon::now();
      unset($item->id);
      $this->model->args = (Array) $item;
      $id_dup = $this->model->add();
    }
    return redirect('backend/'.$this->table);
  }
  public function trash(Request $request){
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
      $stt++;
    }
    $data['counts'] = $this->model->counts();
    return view($this->view.'.index', $data);
  }
  public function create(Request $request){
    $SlugModel = new Slug;
    $data = array('status' => 0 );
    $input = $request->input();
    if(isset($input['_token'])){
      $args = [
        'title' => $input['title'],
        'content' => $input['content'],
        'address' => $input['address'],
        'lat' => $input['lat'],
        'lng' => $input['lng'],
        'showhi' => $input['showhi'],
        'created_at' => \Carbon\Carbon::now(),
        'updated_at' => \Carbon\Carbon::now(),
      ];
      $this->model->args = $args;
      $insert_id = $this->model->add();
      if($insert_id){
        $data['status'] = 1;
      }
    }
    $data['address'] = '44 Nguyễn Huệ, Bến Nghé, Quận 1, Hồ Chí Minh, Vietnam';
    $data['lat'] = '10.774157';
    $data['lng'] = '106.7041069';
    return view($this->view.'.create', $data);
  }
  public function show($id){
    $data = [];
    $this->model->id = $id;
    $item = $this->model->get();
    $item->showhi_text = ($item->showhi == 1) ? Lang::get('app.show') : Lang::get('app.hide');
    $data['item'] = $item;
    return view($this->view.'.show', $data);
  }
  public function edit(Request $request, $id){
    $lang_cur = config('app.locale');
    $SlugModel = new Slug;
    $data = ['status' => 0 ];
    $this->model->id = $id;
    $input = $request->input();
    if(isset($input['_token'])){
      $args = [
        'title' => $input['title'],
        'content' => $input['content'],
        'lat' => $input['lat'],
        'lng' => $input['lng'],
        'address' => $input['address'],
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
    $item = $this->model->get($id);
    $data['item'] = $item;
    return view($this->view.'.edit', $data);
  }
  public function destroy($id){
    $this->model->id = $id;
    $item = $this->model->get();
    if($item->deleted == 0){
      $args = ['deleted'=> 1];
      $this->model->args = $args;
      $this->model->edit();
      return redirect('backend/'.$this->table);
    }else{
      $this->model->delete();
      return redirect('backend/'.$this->table.'/trash');
    }
  }
}
