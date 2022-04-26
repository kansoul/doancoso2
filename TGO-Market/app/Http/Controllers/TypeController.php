<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ProductType;

class TypeController extends Controller
{
     public function getDanhSach(){
     	$type=ProductType::all();


          return view('admin.type.danhsach',['type'=>$type]);
    }
    public function getThem(){
          return view('admin.type.them');
    }

    public function postThem(Request $req){
         $this->validate($req, 
         [
           'Name'=>'required|min:1|max:50'
         
         ], 
         [
           'Name.required'=>'Bạn chưa nhập tên thể loại',
           
           'Name.min'=>'Tên thể loại phải có ít nhất 1->50 kí tự',
           'Name.max'=>'Tên thể loại phải có ít nhất 1->50 kí tự'
         ]);
         $type=new ProductType;
         $type->name=$req->Name;
         $type->description=$req->Mieuta;
         $type->image=$req->Image;
         $type->save();

         return redirect('admin/type/them')->with('thongbao','Thêm thành công');
    }
    public function getSua($id){
    	$type=ProductType::find($id);
    	return view('admin.type.sua',['type'=>$type]);

        
    }
    public function postSua(Request $req,$id){
        $type= ProductType::find($id);
        $this->validate($req, 
         [
           'Name'=>'required|min:1|max:50'

         ], 
         [
           'Name.required'=>'Bạn chưa nhập tên thể loại',
           
           'Name.min'=>'Tên thể loại phải có ít nhất 1->50 kí tự',
           'Name.max'=>'Tên thể loại phải có ít nhất 1->50 kí tự'
         ]);
         
         $type->name=$req->Name;
         $type->description=$req->Mieuta;
         $type->image=$req->Image;
         $type->save();
         return redirect('admin/type/sua/'.$type->id)->with('thongbao','Sủa thành công');
    }
    public function getXoa($id){
    	$type= ProductType::find($id);
    	$type->delete();
    	return redirect('admin/type/danhsach')->with('thongbao','Xóa thành công');
    }
}
