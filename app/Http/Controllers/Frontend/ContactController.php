<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Http\Models\Contact_maps;

class ContactController extends Controller
{

    protected $table = 'contact';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
      $this->view = config('frontend.dir_view').'.'. $this->table;
      config(['frontend.module' => $this->table ]);
    }
    public function index(){
      $Contact_mapsModel = new Contact_maps;
      $data = array();
      $Contact_mapsModel->columns = ['content', 'address'];
      $Contact_mapsModel->where[] = ['showhi', 1];
      $data['item'] = $Contact_mapsModel->gets()[0];
      return view($this->view.'.index', $data);
    }
}
