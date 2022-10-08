<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Phongban;
use DB;
class HopdongController extends Controller
{
    public function hopdong()
     {
          $hopdong=DB::table('hopdong')
          ->join('nhanvien','nhanvien.ma_nv','=','hopdong.ma_nv')
          ->paginate(3);
       
          return view('hopdong.hopdong',compact('hopdong'))->with('i',(request()->input('page',1)-1)*3);
          
     }
     public function them_hd()
      {
        return view('hopdong.them_hd');
      }
      public function luu_hd(Request $request)
       {

        $request->validate([
          
          'txt_ma_hd'=>'required',
          'txt_ma_nv'   =>'required',
          'txt_heso_luong'=>'required|integer',
          'txt_ngayvao'  =>'required',
         
        ],
        [
          'txt_ma_hd.required' =>'Mã hợp đồng không được để trống',
          'txt_ma_nv.required' =>'Mã nhân viên không được để trống',
          'txt_heso_luong.required' =>'Hệ số lương không được để trống',
          'txt_heso_luong.integer' =>'Hệ số lương phải nhập ở dạng số',
          'txt_ngayvao.required' =>'Ngày vào không được để trống',
         
          
        ]
        ); 

         DB::table('hopdong')
         ->join('nhanvien','hopdong.ma_nv','=','nhanvien.ma_nv')
         ->insert([
         'ma_hd'=>$request->txt_ma_hd,
         'ma_nv'=>$request->txt_ma_nv,         
         'heso_luong'=>$request->txt_heso_luong,
         'ngayvao'=>$request->txt_ngayvao,

        ]);
             return redirect()->route('hopdong')->with('thongbao','Đã thêm mới hợp đồng thành công!!!');
       }
       public function sua_hd($id)
         {
           $data= DB::table('hopdong')
           ->join('nhanvien','hopdong.ma_nv','=','nhanvien.ma_nv')
           ->where('nhanvien.id',$id)->first();
           return view('hopdong.sua_hd',compact('data'));
         }
         public function capnhat_hd($id,Request $request)
          {
          $data=   DB::table('hopdong')->where('id',$id)->update([
                    'ma_hd'=>$request->txt_ma_hd,
                    'ma_nv'=>$request->txt_ma_cv,                  
                    'heso_luong'=>$request->txt_heso_luong,
                    'ngayvao'=>$request->txt_ngayvao,
                  
            ]);
            return redirect()->route('hopdong')->with('thongbao','Đã cập nhật hợp đồng thành công!!!');
          }
          public function xoa_hd($id)
            {
                     DB::table('hopdong')->where('id',$id)->delete();
                     return redirect()->route('hopdong')->with('thongbao','Đã xóa hợp đồng thành công!!!');
            }
}
