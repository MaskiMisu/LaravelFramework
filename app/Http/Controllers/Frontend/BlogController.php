<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;

class BlogController extends Controller
{

    protected $table = 'blog';

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
      return view('frontend.'.$this->table.'.index');
    }
}
