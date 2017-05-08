<?php

namespace App\Http\Controllers\Backend;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;

class OrderController extends Controller
{
    public function __construct(){
      $this->table = 'order';
      $this->view = config('app.dir_view').'.'. $this->table;
    }
    public function index(){
      return view($this->view.'.index');
    }
}
