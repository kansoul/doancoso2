<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\User;

class UserController extends Controller
{
    public function getDanhSach(){
     	$us=User::all();


          return view('admin.user.danhsach',['us'=>$us]);
    }
    
    public function getSua($id){
    	$us=User::find($id);
    	return view('admin.user.sua',['us'=>$us]);

        
    }
    public function postSua(Request $req,$id){
        $us= User::find($id);
        $this->validate($req, 
         [
           'name'=>'required|min:1|max:20'
         
         ], 
         [
           'name.required'=>'Bạn chưa nhập tên',
           
           'name.min'=>'Tên phải có ít nhất 1->20 kí tự',
           'name.max'=>'Tên phải có ít nhất 1->20 kí tự'
         ]);
         
         $us->full_name=$req->name;
         $us->email=$req->mail;
         $us->phone=$req->dt;
         $us->address=$req->diachi;
         $us->save();
         return redirect('admin/user/sua/'.$us->id)->with('thongbao','Sửa thành công');
    }
    public function getXoa($id){
    	$us= User::find($id);
    	$us->delete();
    	return redirect('admin/user/danhsach')->with('thongbao','Xóa thành công');
    }
    public function getdangnhapAdmin(){
        return view('admin.login');
    }
    public function postdangnhapAdmin(Request $req){
        $this->validate($req,[
            'email'=>'required',
            'password'=>'required|min:3|max:32'

        ],[
            'email.required'=>'Bạn chưa nhập email',
             'password.required'=>'Bạn chưa nhập password',
             'password.min'=>'Mật khẩu phải từ 3->32 kí tự',
             'password.max'=>'Mật khẩu phải từ 3->32 kí tự'
        ]);

        if(Auth::attempt(['email'=>$req->email, 'password'=>$req->password])){

            return redirect('admin/type/danhsach');
        }
        else
        {
            return redirect('admin')->with('thongbao','Đăng nhập không thành công');
        }

    }
    public function getdangxuatAdmin(){
        Auth::logout();
        return redirect('admin');
    }
}
