<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Baohiem;
use DB;
class BaohiemController extends Controller
{
    public function baohiem()
     {
        $baohiem=DB::table('baohiem')->paginate(3);
        return view('baohiem.baohiem',compact('baohiem'));
     }
     public function them_bhxh()
      {
        return view('baohiem.them_bhxh');
      }
      public function luu_bhxh(Request $request)
       {
        DB::table('baohiem')->insert([
              'ma_bhxh'=>$request->txt_ma_bhxh,
              'ma_nv'=>$request->txt_ma_nv,
              'loai_bhxh'=>$request->txt_loai_bhxh,
              'ngaycap'=>$request->txt_ngaycap,
              'ngayhethan'=>$request->txt_ngayhethan,
              'noicap'=>$request->txt_noicap,
         
        ]);
        return redirect()->route('baohiem')->with('thongbao','Đã lưu thông tin thành công!!!');
       }
       public function sua_bhxh($id)
         {
            $data=DB::table('baohiem')->where('id',$id)->first();
            return view('baohiem.sua_bhxh',compact('data'));
            
         }
         public function capnhat_bhxh($id,Request $request)
         {
                DB::table('baohiem')->where('id',$id)->update([
                    'ma_bhxh'=>$request->txt_ma_bhxh,
                    'ma_nv'=>$request->txt_ma_nv,
                    'loai_bhxh'=>$request->txt_loai_bhxh,
                    'ngaycap'=>$request->txt_ngaycap,
                    'ngayhethan'=>$request->txt_ngayhethan,
                    'noicap'=>$request->txt_noicap,

                ]);
              return redirect()->route('baohiem')->with('thongbao','Đã cập nhật thông tin thành công!!!');
         }
         public function xoa_bhxh($id)
            {
                DB::table('baohiem')->where('id',$id)->delete();
                return redirect()->route('baohiem')->with('thongbao','Đã xóa thông tin thành công!!!');
            }
}
