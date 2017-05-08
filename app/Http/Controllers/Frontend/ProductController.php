<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Http\Models\Page;

class ProductController extends Controller
{

    public $table = 'product';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
      config(['frontend.module' => $this->table ]);
    }
    public function index(){
      $data = array();
      return view('frontend.product.index', $data);
    }
}
