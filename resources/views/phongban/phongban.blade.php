@extends('layout.main')
@section('main_body')

               <div class="card-header bg-danger">
                    <div class="row">
                                  <div class="col-md-12" align="center">
                                       <h1 class="btn text-light"> DANH SÁCH PHÒNG BAN</h1>
                                  </div>
                    
                     </div>
</div>
</br>
<div> <a href="{!! URL::route('them_pb')!!}" class=" btn btn-primary"><i class="btn-icon-only icon-edit">Thêm mới</i></a> <br></div> 
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
                                           <th align="center">MÃ PHÒNG BAN</th>
                                           <th align="center">PHÒNG BAN</th>
                                           <th align="center">TÙY CHỈNH</th>
                                          </tr>
                                     </thread>
                                    
                                     <tbody>
                                     @foreach ($phongban as $pb)
                                     <tr>
                                        <td>{{$pb->id}}</td>
                                        <td>{{$pb->ma_pb}}</td>
                                        <td>{{$pb->ten_pb}}</td>
                                        
                                        <td class="td-actions">
                        <a href="{!! URL ::Route('sua_pb',$pb->id)!!}" class="  btn btn-primary"><i class="btn-icon-only icon-edit">Sửa</i></a>

                        <a href="{!! URL ::Route('xoa_pb',$pb->id)!!}" class="  btn btn-danger">
                            <i class="btn-icon-only icon-remove">Xóa</i>
                        </a>
                    </td>
                                     </tr>
                                       @endforeach 
                                   
                                    </tbody>
                               </table>
                            <!--code gọi phân trang-->
                            {{$phongban->links("pagination::bootstrap-4")}}
                 
                 
                 </div >   
              </div>
           </div>

       @endsection

