<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Http\Models\Page;

class PageController extends Controller
{

    protected $redirectTo = '/home';
    protected $table = 'page';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
      config(['frontend.module' => $this->table ]);
    }
    public function detail(){
      echo config('frontend.module');
      $PageModel = new Page;
      $data = array();
      $slug = config('frontend.slug');
      $PageModel->id = $slug->table_id_action;
      $data['item'] = $PageModel->get();
      return view('frontend.page.detail', $data);
    }
}
