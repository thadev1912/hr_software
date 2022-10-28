<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Auth;
class AdminController extends Controller
{
    public function dangnhap()
      {
        return view('admin.dangnhap');
      }
      public function dangky()
      {
        return view('admin.dangky');
      }
    public function xulydangky(Request $request)
     {
       $user=new User;
       $user->name=$request->username;
       $user->email=$request->email;
       $user->password=bcrypt($request->pass);
       $user->permision='1';
       $user->avatar='sieuga.jpg';
       $user->save();
       //dd($user);
       return redirect()->route('dangnhap')->with('thongbao',"Đã đăng ký thành công!!!");
     }
     public function xulydangnhap(Request $request)
      {
        $username=$request->username;
        if(Auth::attempt(
            [
                'name'=>$request->username,
                'password'=>$request->pass,
                
            ]))
            {
                $user= User::where('name',$username)->first();
                $per=$user->permision;
               // dd($per);
                Auth::login($user); 
                if($per==1) 
                {              
                    return redirect()->route('nhanvien')->with('thongbao','Đăng nhập thành công!!!'); 
                } 
                else
                {
                    return redirect()->route('hopdong')->with('thongbao','Đăng nhập thành công!!!'); 
                }              
            }
                return redirect()->route('dangnhap')->with('thongbao','Tài khoản và mật khẩu chưa đúng!!!');

     
            }
        public function thoat()
           {
             Auth::logout();
             return redirect()->route('dangnhap')->with('thongbao','Bạn đã đăng xuất thành công!!!');

           }    

}
