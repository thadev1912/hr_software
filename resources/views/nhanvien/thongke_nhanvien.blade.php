@extends('layout.main')
@section('main_body')
      
          
      
               <div class="card-header bg-danger">
                    <div class="row">
                                  <div class="col-md align="center">
                                       <h1 class="btn text-light"> DANH SÁCH NHÂN VIÊN</h1>
                                  </div>
                    
                     </div>
</div>
</br>
<div> <a href="" class=" btn btn-primary"><i class="btn-icon-only icon-edit">Thêm mới</i></a> <br></div> 
                   <div class="card-body overflow-x:auto ">
                   @if(Session::has('thongbao'))
                      <div class="alert alert-success">
                         {{Session::get('thongbao')}}
                      </div>
                      @endif
                                <table class="table table-bordered ">
                                     <thread >
                                         </tr >
                                          
                                           <th>MÃ SỐ</th>
                                           <th align="center">TÊN NHÂN VIÊN</th>
                                           <th align="center">PHÒNG BAN</th>
                                           <th align="center">CHỨC VỤ</th>
                                           <th align="center">ĐỊA CHỈ</th>
                                           <th align="center">GIỚI TÍNH</th>
                                           <th align="center">ĐỊA CHỈ</th>
                                           <th align="center">TÙY CHỈNH</th>
                                          </tr>
                                     </thread>
                                    
                                     <tbody>
                                     @foreach ($result as $sv)
                                     <tr>
                                     
                                        <td>{{$sv->ma_nv}}</td>
                                        <td>{{$sv->hoten_nv}}</td>
                                        <td>{{$sv->ten_pb}}</td>
                                        <td>{{$sv->ten_cv}}</td>
                                        <td>{{$sv->diachi_nv}}</td>
                                        <td>{{$sv->gioitinh_nv}}</td>
                                        <td>{{$sv->ma_hd}}</td>
                                        <td class="td-actions">
                                        <a href="" class="btn-sm btn-primary"><i class="btn-icon-only icon-edit">Xem</i></a>           
                        <a href="" class="btn-sm btn-primary"><i class="btn-icon-only icon-edit">Sửa</i></a>

                        <a href="" class="btn-sm btn-danger">
                            <i class="btn-icon-only icon-remove">Xóa</i>
                        </a>
                       
                    </td>
                                     </tr>
                                       @endforeach 
                                   
                                    </tbody>
                               </table>
                             <!--code gọi phân trang-->
                             {{$result->links("pagination::bootstrap-4")}}
                 
                  
                 
                 </div >   
              </div>
           </div>
           

      
       @endsection

