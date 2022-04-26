<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
class ProductController extends Controller
{
    public function getDanhSach(){
     	$pro=Product::all();


          return view('admin.product.danhsach',['pro'=>$pro]);
    }
    public function getThem(){
          return view('admin.product.them');
    }

    public function postThem(Request $req){
         $this->validate($req, 
         [
           'ten'=>'required|min:1|max:20'
         
         ], 
         [
           'ten.required'=>'Bạn chưa nhập tên sản phẩm',
           
           'ten.min'=>'Tên sản phẩm phải có ít nhất 1->20 kí tự',
           'ten.max'=>'Tên sản phẩm phải có ít nhất 1->20 kí tự'
         ]);
         $pro=new Product;
         $pro->name=$req->ten;
         $pro->id_type=$req->idtype;
         $pro->description=$req->mieuta;
         $pro->unit_price=$req->giagoc;
         $pro->promotion_price=$req->giakm;
         $pro->image=$req->tenanh;
         $pro->unit=$req->sl;
         $pro->new=$req->moi;
         
         $pro->save();

         return redirect('admin/product/them')->with('thongbao','Thêm thành công');
    }
    public function getSua($id){
    	$pro=Product::find($id);
    	return view('admin.product.sua',['pro'=>$pro]);

        
    }
    public function postSua(Request $req,$id){
        $pro= Product::find($id);
        $this->validate($req, 
         [
           'ten'=>'required|min:1|max:20'
         
         ], 
         [
           'ten.required'=>'Bạn chưa nhập tên sản phẩm',
           
           'ten.min'=>'Tên sản phẩm phải có ít nhất 1->20 kí tự',
           'ten.max'=>'Tên sản phẩm phải có ít nhất 1->20 kí tự'
         ]);
         
         $pro->name=$req->ten;
         $pro->id_type=$req->idtype;
         $pro->description=$req->mieuta;
         $pro->unit_price=$req->giagoc;
         $pro->promotion_price=$req->giakm;
         $pro->image=$req->tenanh;
         $pro->unit=$req->sl;
         $pro->new=$req->moi;
         
         $pro->save();
         return redirect('admin/product/sua/'.$pro->id)->with('thongbao','Sửa thành công');
    }
    public function getXoa($id){
    	$pro= Product::find($id);
    	$pro->delete();
    	return redirect('admin/product/danhsach')->with('thongbao','Xóa thành công');
    }
}
