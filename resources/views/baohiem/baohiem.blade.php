@extends('layout.main')
@section('main_body')

          
        
               <div class="card-header bg-danger">
                    <div class="row">
                                  <div class="col-md-12" align="center">
                                       <h1 class="btn text-light"> DANH SÁCH BẢO HIỂM XÃ HỘI</h1>
                                  </div>
                    
                     </div>
</div>
</br>
<div> <a href="{!! URL::route('them_bhxh')!!}" class=" btn btn-primary"><i class="btn-icon-only icon-edit">Thêm mới</i></a> <br></div> 
                   <div class="card-body">
                   @if(Session::has('thongbao'))
                      <div class="alert alert-success">
                         {{Session::get('thongbao')}}
                      </div>
                      @endif
                                <table class="table table-bordered ">
                                     <thread >
                                         </tr >
                                           <th align="center">STT</th>
                                           <th align="center">MÃ BHXH</th>
                                           <th align="center">LOẠI BHXH</th>
                                           <th align="center">NGÀY CẤP</th>
                                           <th align="center">NGÀY HẾT HẠN</th>
                                           <th align="center">NƠI CẤP</th>
                                           <th align="center">TÙY CHỈNH</th>
                                          </tr>
                                     </thread>
                                    
                                     <tbody>
                                     @foreach ($baohiem as $bh)
                                     <tr>
                                        <td>{{$bh->id}}</td>
                                        <td>{{$bh->ma_bhxh}}</td>
                                        <td>{{$bh->loai_bhxh}}</td>
                                        <td>{{$bh->ngaycap}}</td>
                                        <td>{{$bh->ngayhethan}}</td>
                                        <td>{{$bh->noicap}}</td>
                                        <td class="td-actions">
                        <a href="{!! URL::route('sua_bhxh',$bh->id)!!}" class="btn btn-primary"><i class="btn-icon-only icon-edit">Sửa</i></a>

                        <a href="{!! URL::route('xoa_bhxh',$bh->id)!!}" class="btn btn-danger">
                            <i class="btn-icon-only icon-remove">Xóa</i>
                        </a>
                    </td>
                                     </tr>
                                       @endforeach 
                                   
                                    </tbody>
                               </table>
                             <!--code gọi phân trang-->
                             {{$baohiem->links("pagination::bootstrap-4")}}
                 
                  
                 
                 </div >   
              </div>
           </div>
           

      
       @endsection

