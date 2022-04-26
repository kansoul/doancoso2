<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Slide;
class SlideController extends Controller
{
    public function getDanhSach(){
     	$slide=Slide::all();


          return view('admin.slide.danhsach',['slide'=>$slide]);
    }
    public function getThem(){
          return view('admin.slide.them');
    }

    public function postThem(Request $req){
         $this->validate($req, 
         [
           'nimage'=>'required|min:1|max:20'
         
         ], 
         [
           'nimage.required'=>'Bạn chưa nhập tên ảnh',
           
           'nimage.min'=>'Tên ảnh phải có ít nhất 1->20 kí tự',
           'nimage.max'=>'Tên ảnh phải có ít nhất 1->20 kí tự'
         ]);
         $slide=new Slide;
         $slide->image=$req->nimage;
         $slide->save();

         return redirect('admin/slide/them')->with('thongbao','Thêm thành công');
    }
    public function getSua($id){
    	$slide=Slide::find($id);
    	return view('admin.slide.sua',['slide'=>$slide]);

        
    }
    public function postSua(Request $req,$id){
        $slide= Slide::find($id);
        $this->validate($req, 
         [
           'nimage'=>'required|min:1|max:20'

         ], 
         [
           'nimage.required'=>'Bạn chưa nhập tên ảnh',
           
           'nimage.min'=>'Tên ảnh phải có ít nhất 1->20 kí tự',
           'nimage.max'=>'Tên ảnh phải có ít nhất 1->20 kí tự'
         ]);
         
         $slide->image=$req->nimage;
         
         $slide->save();
         return redirect('admin/slide/sua/'.$slide->id)->with('thongbao','Sủa thành công');
    }
    public function getXoa($id){
    	$slide= Slide::find($id);
    	$slide->delete();
    	return redirect('admin/slide/danhsach')->with('thongbao','Xóa thành công');
    }
}
