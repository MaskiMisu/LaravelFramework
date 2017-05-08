<?php

namespace App\Http\Controllers\Backend;
use App\Http\Controllers\Controller;

use App\Http\Models\Configuration;
use Illuminate\Http\Request;

class ConfigurationController extends Controller
{
  public function __construct(){
    $this->model = new Configuration;
    $this->table = 'configuration';
    $this->view = config('app.dir_view').'.'. $this->table;
    config(['app.module'=> $this->table]);
  }
  public function index(Request $request){
    $data = ['status' => 0];
    $langs = config('app.langs');
    $input = $request->input();
    if(isset($input['_token'])){
      $config = $this->model->gets();
      if(count($config) == 0){
        foreach ($langs as $key => $lang) {
          $args = $input;
          $args['lang_code'] = $lang;
          unset($args['_token']);
          unset($args['id']);
          $this->model->args = $args;
          $insert_id = $this->model->add();
          if($insert_id){
            $data['status'] = 1;
          }
        }
      }else{
        $args = $input;
        unset($args['_token']);
        unset($args['id']);
        $this->model->id = $input['id'];
        $this->model->args = $args;
        $insert_id = $this->model->edit();
        if($insert_id){
          $data['status'] = 1;
        }
      }
    }
    $this->model->where[] = ['lang_code',config('app.locale')];
    $data['item'] = $this->model->gets()[0];
    return view($this->view.'.index', $data);
  }
}