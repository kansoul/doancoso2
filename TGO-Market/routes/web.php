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

Route::get('/', function () {
    return view('welcome');
});
Route::get('/', function () {
    return view('welcome');
});
Route::get('admin','UserController@getdangnhapAdmin');
Route::post('admin','UserController@postdangnhapAdmin');
Route::get('admin/logout','UserController@getdangxuatAdmin');
Route::group(['prefix'=>'admin','middleware'=>'adminLogin'], function(){
     Route::group(['prefix'=>'type'], function(){

     	Route::get('danhsach','TypeController@getDanhSach');

        Route::get('xoa/{id}','TypeController@getXoa');

        Route::get('sua/{id}','TypeController@getSua');
        Route::post('sua/{id}','TypeController@postSua');

        Route::get('them','TypeController@getThem');
        Route::post('them','TypeController@postThem');

        
     });

     Route::group(['prefix'=>'slide'], function(){
     	Route::get('danhsach','SlideController@getDanhSach');

        Route::get('xoa/{id}','SlideController@getXoa');
        
        Route::get('sua/{id}','SlideController@getSua');
        Route::post('sua/{id}','SlideController@postSua');

        Route::get('them','SlideController@getThem');
        Route::post('them','SlideController@postThem');
     });

     Route::group(['prefix'=>'user'], function(){
     	Route::get('danhsach','UserController@getDanhSach');

        Route::get('xoa/{id}','UserController@getXoa');
        
        Route::get('sua/{id}','UserController@getSua');
        Route::post('sua/{id}','UserController@postSua');

       
     });

     Route::group(['prefix'=>'product'], function(){
     	Route::get('danhsach','ProductController@getDanhSach');

        Route::get('xoa/{id}','ProductController@getXoa');
        
        Route::get('sua/{id}','ProductController@getSua');
        Route::post('sua/{id}','ProductController@postSua');

        Route::get('them','ProductController@getThem');
        Route::post('them','ProductController@postThem');
     });

});



Route::get('index',[
	'as'=>'trang-chu',
	'uses'=>'PageController@getIndex'
]);

Route::get('loai-san-pham/{type}',[
	'as'=>'loaisanpham',
	'uses'=>'PageController@getLoaiSp'
]);

Route::get('chi-tiet-san-pham/{id}',[
	'as'=>'chitietsanpham',
	'uses'=>'PageController@getChitiet'
]);

Route::get('lien-he',[
	'as'=>'lienhe',
	'uses'=>'PageController@getLienHe'
]);

Route::get('gioi-thieu',[
	'as'=>'gioithieu',
	'uses'=>'PageController@getGioiThieu'
]);

Route::get('add-to-cart/{id}',[
	'as'=>'themgiohang',
	'uses'=>'PageController@getAddtoCart'
]);

Route::get('del-cart/{id}',[
	'as'=>'xoagiohang',
	'uses'=>'PageController@getDelItemCart'
]);
Route::get('dat-hang',[
	'as'=>'dathang',
	'uses'=>'PageController@getCheckout'
]);

Route::post('dat-hang',[
	'as'=>'dathang',
	'uses'=>'PageController@postCheckout'
]);

Route::get('dang-nhap',[
	'as'=>'login',
	'uses'=>'PageController@getLogin'
]);
Route::post('dang-nhap',[
	'as'=>'login',
	'uses'=>'PageController@postLogin'
]);

Route::get('dang-ki',[
	'as'=>'signin',
	'uses'=>'PageController@getSignin'
]);

Route::post('dang-ki',[
	'as'=>'signin',
	'uses'=>'PageController@postSignin'
]);

Route::get('dang-xuat',[
	'as'=>'logout',
	'uses'=>'PageController@postLogout'
]);

Route::get('search',[
	'as'=>'search',
	'uses'=>'PageController@getSearch'
]);

