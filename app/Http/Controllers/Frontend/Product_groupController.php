<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;

class Product_groupController extends Controller
{

    protected $table = 'product_group';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
      config(['frontend.module' => $this->table ]);
    }
    public function group(){
      return view('frontend.'.$this->table.'.group');
    }
}
