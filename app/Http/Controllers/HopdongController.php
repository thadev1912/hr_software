<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Nhanvien;
use DB;
class HopdongController extends Controller
{
    public function hopdong()
     {
          $hopdong=DB::table('hopdong')->paginate(3);
          return view('hopdong.hopdong',compact('hopdong'));
          
     }
     public function them_hd()
      {
        return view('hopdong.them_hd');
      }
      public function luu_hd(Request $request)
       {
         DB::table('hopdong')->insert([
         'ma_hd'=>$request->txt_ma_hd,
         'ma_cv'=>$request->txt_ma_cv,
         'ma_pb'=>$request->txt_ma_pb,
         'heso_luong'=>$request->txt_heso_luong,
         'ngayvao'=>$request->txt_ngayvao,

        ]);
             return redirect()->route('hopdong')->with('thongbao','Đã thêm mới hợp đồng thành công!!!');
       }
       public function sua_hd($id)
         {
           $data= DB::table('hopdong')->where('id',$id)->first();
           return view('hopdong.sua_hd',compact('data'));
         }
         public function capnhat_hd($id,Request $request)
          {
          $data=   DB::table('hopdong')->where('id',$id)->update([
                    'ma_hd'=>$request->txt_ma_hd,
                    'ma_cv'=>$request->txt_ma_cv,
                    'ma_pb'=>$request->txt_ma_pb,
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
