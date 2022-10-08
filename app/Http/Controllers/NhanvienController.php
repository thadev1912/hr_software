<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Nhanvien;
use DB;
class NhanvienController extends Controller
{
    //list danh sách nhân viên
    public function nhanvien()
    {
        
        $nhanvien=nhanvien::paginate(3);
           
         return view('nhanvien.nhanvien',compact('nhanvien'))->with('i',(request()->input('page',1)-1)*3);
   }
   //thêm nhân viên mới
   public function them_nv()
    {
           return view('nhanvien.them_nv'); // ok
    }
   //luu nhân viên mới
    public function luu_nv(Request $request)
      {
      $request->validate([
             'txt_ma_nv'=>'required',
             'txt_hoten_nv'=>'required',
             'txt_sdt_nv'=>'required|integer|min:10',
             'txt_diachi_nv'=>'required',
             'txt_gioitinh_nv'=>'required',
      ],
      [
        'txt_ma_nv.required'=>'Mã nhân viên không được để trống!!!',
        'txt_hoten_nv.required'=>'Mã nhân viên không được để trống!!!',
        'txt_sdt_nv.required'=>'Số điện thoại không được để trống!!!',
        'txt_sdt_nv.integer'=>'Số điện thoại phải là dạng số!!!',
        'txt_sdt_nv.min'=>'Số điện thoại phải nhập tối thiểu 10 ký tự!!!',
        'txt_diachi_nv.required'=>'Địa chỉ không được bỏ trống!!!',
        'txt_gioitinh_nv.required'=>'Giới tính không được bỏ trống!!!',
        
      ]
        
     );
         $sv=new nhanvien;
         $sv->ma_nv=$request->txt_ma_nv;
         $sv->hoten_nv=$request->txt_hoten_nv;
         $sv->diachi_nv=$request->txt_diachi_nv;
         $sv->gioitinh_nv=$request->txt_gioitinh_nv;
         $sv->sdt_nv=$request->txt_sdt_nv;
         $sv->ma_cv='';
         $sv->ma_pb='';
         $sv->save();
         return redirect()->route('nhanvien')->with('thongbao','Thêm sinh viên thành công');

      }
       //sua nhân viên
        public function sua_nv($id)
         {
              $data = DB::table('nhanvien')->where('id', $id)->first();
             
              return view('nhanvien.sua_nhanvien', compact('data')); 

         }
         public function capnhat_nv($id,Request $request)

          {
              DB::table('nhanvien')->where('id',$id)->update(
            [
                    'ma_nv'=>$request->txt_ma_nv,
                    'hoten_nv'=>$request->txt_hoten_nv,
                    'diachi_nv'=>$request->txt_diachi_nv,
                    'gioitinh_nv'=>$request->txt_gioitinh_nv,
                    'sdt_nv'=>$request->txt_sdt_nv,

            ]);
            return redirect()->route('nhanvien')->with('thongbao','Cập nhật nhân viên thành công');
             
          }
           public function xoa_nv($id)
            {
                DB::table('nhanvien')->where('id',$id)->delete();
                return redirect()->route('nhanvien')->with('thongbao','Đã xóa nhân viên thành công');
            }
             public function thongke_nhanvien()
             {
              $result= DB::table('nhanvien')
              ->  join('phongban','nhanvien.ma_pb','=','phongban.ma_pb')
              ->   join('chucvu','nhanvien.ma_cv','=','chucvu.ma_cv')
              ->   join('hopdong','nhanvien.ma_nv','=','hopdong.ma_nv')
              ->paginate(3);
             //   dd($nhanvien);
               return view('nhanvien.thongke_nhanvien',compact('result'));  

             }
             public function chitiet_nhanvien()
             {
              $result= DB::table('nhanvien')
              ->  join('phongban','nhanvien.ma_pb','=','phongban.ma_pb')
              ->   join('chucvu','nhanvien.ma_cv','=','chucvu.ma_cv')
              ->   join('chucvu','nhanvien.ma_cv','=','chucvu.ma_cv')
              ->   join('chucvu','nhanvien.ma_id','=','chucvu.id_hd')
              ->paginate(3);
             //   dd($nhanvien);
               return view('nhanvien.thongke_nhanvien',compact('result'));  
             }
   
}
