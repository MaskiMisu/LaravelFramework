<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
use Intervention\Image\ImageManagerStatic as Image;
use App\Http\Helpers\Func;

Auth::routes();
if(strpos( $_SERVER['PHP_SELF'] , 'backend') !== false || strpos( $_SERVER['PHP_SELF'] , 'login') !== false || strpos( $_SERVER['PHP_SELF'] , 'register') !== false){
  Route::group(['prefix' => 'backend'], function () {
    Route::get('/', 'Backend\\HomeController@index');
    Route::get('/home', 'Backend\\HomeController@index');
    Route::match(['get', 'post'],'ajax/{method}/{action}', 'Backend\\AjaxController@index')->name('method','action');
    // module product
    Route::group(['prefix' => 'product'], function () {
      Route::match(['get', 'post'],'/', 'Backend\\ProductController@index');
      Route::get('{id}/duplicate', 'Backend\\ProductController@duplicate');
      Route::match(['get', 'post'],'/trash', 'Backend\\ProductController@trash');
      Route::match(['get', 'post'] ,'/create', 'Backend\\ProductController@create');
      Route::get('{id}', 'Backend\\ProductController@show')->name('id');
      Route::match(['get', 'post'] ,'{id}/edit', 'Backend\\ProductController@edit')->name('id');
      Route::get('{id}/destroy', 'Backend\\ProductController@destroy')->name('id');
    });
    // module product_group
    Route::group(['prefix' => 'product_group'], function(){
      Route::match(['get', 'post'],'/', 'Backend\\Product_groupController@index');
      Route::get('{id}/duplicate', 'Backend\\Product_groupController@duplicate');
      Route::match(['get', 'post'],'trash', 'Backend\\Product_groupController@trash');
      Route::match(['get', 'post'] ,'create', 'Backend\\Product_groupController@create');
      Route::get('{id}', 'Backend\\Product_groupController@show')->name('id');
      Route::match(['get', 'post'] ,'{id}/edit', 'Backend\\Product_groupController@edit')->name('id');
      Route::get('{id}/destroy', 'Backend\\Product_groupController@destroy')->name('id');
    });
    // module blog_group
    Route::group(['prefix' => 'blog_group'], function(){
      Route::match(['get', 'post'],'/', 'Backend\\Blog_groupController@index');
      Route::get('{id}/duplicate', 'Backend\\Blog_groupController@duplicate');
      Route::match(['get', 'post'],'/trash', 'Backend\\Blog_groupController@trash');
      Route::match(['get', 'post'] ,'create', 'Backend\\Blog_groupController@create');
      Route::get('{id}', 'Backend\\Blog_groupController@show')->name('id');
      Route::match(['get', 'post'] ,'{id}/edit', 'Backend\\Blog_groupController@edit')->name('id');
      Route::get('{id}/destroy', 'Backend\\Blog_groupController@destroy')->name('id');
    });
    // module blog
    Route::group(['prefix' => 'blog'], function(){
      Route::match(['get', 'post'],'/', 'Backend\\BlogController@index');
      Route::get('{id}/duplicate', 'Backend\\BlogController@duplicate');
      Route::match(['get', 'post'],'trash', 'Backend\\BlogController@trash');
      Route::match(['get', 'post'] ,'create', 'Backend\\BlogController@create');
      Route::get('{id}', 'Backend\\BlogController@show')->name('id');
      Route::match(['get', 'post'] ,'{id}/edit', 'Backend\\BlogController@edit')->name('id');
      Route::get('{id}/destroy', 'Backend\\BlogController@destroy')->name('id');
    });
    // module page
    Route::group(['prefix' => 'page'], function(){
      Route::match(['get', 'post'],'/', 'Backend\\PageController@index');
      Route::get('{id}/duplicate', 'Backend\\PageController@duplicate');
      Route::match(['get', 'post'],'trash', 'Backend\\PageController@trash');
      Route::match(['get', 'post'] ,'create', 'Backend\\PageController@create');
      Route::get('{id}', 'Backend\\PageController@show')->name('id');
      Route::match(['get', 'post'] ,'{id}/edit', 'Backend\\PageController@edit')->name('id');
      Route::get('{id}/destroy', 'Backend\\PageController@destroy')->name('id');
    });
    // module menu
    Route::group(['prefix' => 'menu'], function(){
      Route::match(['get', 'post'],'/', 'Backend\\MenuController@index');
      Route::get('{id}/duplicate', 'Backend\\MenuController@duplicate');
      Route::match(['get', 'post'],'trash', 'Backend\\MenuController@trash');
      Route::match(['get', 'post'] ,'create', 'Backend\\MenuController@create');
      Route::get('{id}', 'Backend\\MenuController@show')->name('id');
      Route::match(['get', 'post'] ,'{id}/edit', 'Backend\\MenuController@edit')->name('id');
      Route::get('{id}/destroy', 'Backend\\MenuController@destroy')->name('id');
    });
    // module banner
    Route::group(['prefix' => 'banner'], function(){
      Route::match(['get', 'post'],'/', 'Backend\\BannerController@index');
      Route::get('{id}/duplicate', 'Backend\\BannerController@duplicate');
      Route::match(['get', 'post'],'trash', 'Backend\\BannerController@trash');
      Route::match(['get', 'post'] ,'create', 'Backend\\BannerController@create');
      Route::get('{id}', 'Backend\\BannerController@show')->name('id');
      Route::match(['get', 'post'] ,'{id}/edit', 'Backend\\BannerController@edit')->name('id');
      Route::get('{id}/destroy', 'Backend\\BannerController@destroy')->name('id');
    });
    // module contact
    Route::group(['prefix' => 'banner_group'], function(){
      Route::match(['get', 'post'],'/', 'Backend\\Banner_groupController@index');
      Route::get('{id}/duplicate', 'Backend\\Banner_groupController@duplicate');
      Route::match(['get', 'post'],'trash', 'Backend\\Banner_groupController@trash');
      Route::match(['get', 'post'] ,'create', 'Backend\\Banner_groupController@create');
      Route::get('{id}', 'Backend\\Banner_groupController@show')->name('id');
      Route::match(['get', 'post'] ,'{id}/edit', 'Backend\\Banner_groupController@edit')->name('id');
      Route::get('{id}/destroy', 'Backend\\Banner_groupController@destroy')->name('id');
    });
    // module contact
    Route::group(['prefix' => 'contact_maps'], function(){
      Route::match(['get', 'post'],'/', 'Backend\\Contact_mapsController@index');
      Route::get('{id}/duplicate', 'Backend\\Contact_mapsController@duplicate');
      Route::match(['get', 'post'],'trash', 'Backend\\Contact_mapsController@trash');
      Route::match(['get', 'post'] ,'create', 'Backend\\Contact_mapsController@create');
      Route::get('{id}', 'Backend\\Contact_mapsController@show')->name('id');
      Route::match(['get', 'post'] ,'{id}/edit', 'Backend\\Contact_mapsController@edit')->name('id');
      Route::get('{id}/destroy', 'Backend\\Contact_mapsController@destroy')->name('id');
    });
    Route::match(['get','post'],'/configuration', 'Backend\\ConfigurationController@index');
    Route::get('/orders', 'Backend\\OrderController@index');
  });
}else{
  $Func = new Func;
  $slug = $Func->generateRoute($_SERVER['PHP_SELF']);
  if($slug){
    $table = $slug['table_action'];
    $action = isset($slug['action']) ? $slug['action'] : 'index';
    Route::match(['get', 'post'],$slug['url'],'Frontend\\'. $table.'Controller@'. $action);
  }
}


