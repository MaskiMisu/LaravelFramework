<?php

namespace App\Http\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Configuration extends Model
{
    public $table = 'configuration';
    public $where = [];
    public $orWhere = [];
    public $id = '';
    public $args = [];
    public $lang_cur = 'vi';
    public $limit = 1;

    public function __construct(){
      $this->lang_cur = config('app.locale');
    }
    public function add(){
      $id = DB::table($this->table)->insertGetId($this->args);
      return $id;
    }
    public function gets(){
      $query = DB::table($this->table);
      $query->where($this->where);
      $query->where(function ($query){
        foreach ($this->orWhere as $key => $value) {
          if(count($value) > 2){
            $query->orWhere(''.$value[0].'', ''.$value[1].'', ''.$value[2].'');
          }else{
            $query->orWhere(''.$value[0].'', ''.$value[1].'');
          }
        }
      });
      if($this->limit >0 ){
        $data = $query->paginate($this->limit);
      }else{
        $data = $query->get();
      }
      $data = $this->parse_data($data);
      return $data;
    }
    public function getsIn(){
      $this->select = ['id', 'title'];
      $data = DB::table($this->table)
                      ->select($this->select)
                      ->whereIn('id', $this->parent_nav)
                      ->where($this->where)
                      ->get();
      $data = $this->parse_data($data);
      return $data;
    }
    public function get(){
      $data = DB::table($this->table)
                      ->where('id',$this->id)
                      ->first();
      return $data;
    }
    public function counts(){
      return DB::table($this->table)
                      ->where($this->where)
                      ->count();
    }
    public function edit(){
      $status = DB::table($this->table)
                        ->where('id', $this->id)
                        ->update($this->args);
      return $status;
    }
    public function editIn(){
      $status = DB::table($this->table)
                        ->whereIn('id', $this->ids)
                        ->update($this->args);
      return $status;
    }
    public function delete(){
      DB::table($this->table)
            ->where('id', $this->id)
            ->delete();
    }
    public function parse_data($data, $a = 0){
      $arr_parse = array('title', 'slug', 'short', 'content', 'meta_title', 'meta_description', 'meta_keywords');
      if(isset($data->id)){
        foreach ($data as $k => $v) {
          if(in_array($k, $arr_parse)){
            $arr = json_decode($v, true);
            $data->$k = $arr[$this->lang_cur];
          }
        }
      }else{
        foreach ($data as $key => $item) {
          foreach ($item as $k => $v) {
            if(in_array($k, $arr_parse)){
              $arr = json_decode($v, true);
              $data[$key]->$k = $arr[$this->lang_cur];
            }
          }
        }
      }
      return $data;
    }
}
