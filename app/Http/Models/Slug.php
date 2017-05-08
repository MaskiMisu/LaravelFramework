<?php

namespace App\Http\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Slug extends Model
{
    public $table = 'slug';
    public $columns = ['id', 'title', 'slug'];
    public $where = [];
    public $limit = 20;
    public $slug = '';
    public $table_action = '';
    public $table_id_action = '';
    public $args = [];
    public function __construct(){
      $this->limit = config('app.'.$this->table.'.num_show');
    }
    public function add(){
      $id = DB::table($this->table)->insertGetId($this->args);
      return $id;
    }
    public function gets(){
      if($this->limit == 0 ){
        $data = DB::table($this->table)
                      ->where('table_action', $this->table_action)
                      ->where('table_id_action', $this->table_id_action)
                      ->get();
      }else{
        $data = DB::table($this->table)
                      ->where('table_action', $this->table_action)
                      ->where('table_id_action', $this->table_id_action)
                      ->paginate($this->limit);
      }
      return $data;
    }
    public function gets_in($select= ['id', 'title'], $where = ''){
      $data = DB::table($this->table)
                      ->select($this->columns)
                      ->whereIn('id', [8])
                      ->get();
      return $data;
    }
    public function get_slug(){
      $data = DB::table($this->table)
                      ->where('slug',$this->slug)
                      ->first();
      return $data;
    }
    public function get(){
      $data = DB::table($this->table)
                      ->select($this->columns)
                      ->where($this->where)
                      ->first();
      return $data;
    }
    public function counts(){
      return DB::table($this->table)->count();
    }
    public function edit(){
      $status = DB::table($this->table)
                  ->where('table_action', $this->table_action)
                  ->where('table_id_action', $this->table_id_action)
                  ->where('lang_code', config('app.locale'))
                  ->update($this->args);
      return $status;
    }
    public function delete(){
      DB::table($this->table)
            ->where('table_action', $this->table_action)
            ->where('table_id_action', $this->table_id_action)
            ->delete();
    }

}
