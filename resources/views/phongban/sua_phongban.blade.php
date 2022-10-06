@extends('layout.main')
@section('main_body')
<div class="container">
<div class="card-body">
<div class="card-header ">
                    <div class="row">
                                  <div class="col-md-12" align="center">
                                       <h1 class="btn text-info"> CHỈNH SỬA PHÒNG BAN</h1>
                                  </div>
                    
                     </div>
            <form action="{!! URL::route('capnhat_pb',$data->id)!!}" method="POST">
            <input type="hidden" name="_token" value="{!! csrf_token() !!}" />
            <div class="form-row"> <!--thuộc tính form-row nó giúp chia 2 cột trên 1 row của nó-->
                    <div class="col">
                        <label>Mã Số Phòng Ban</label>
                        <input id="current-pass-control" name="txt_ma_pb" class="form-control" type="text" value="{!! $data->ma_pb!!}">
                              
                    </div>
</div>
<div class="form-row"> <!--thuộc tính form-row nó giúp chia 2 cột trên 1 row của nó-->
                   <div class="col">
                        <label>Tên Phòng Ban</label>
                        <input id="new-pass-control" name="txt_ten_pb" class="form-control" type="text" value="{!! $data->ten_pb!!}">
                                
                    </div>
</div>





<div class="card-header text-white">
                    <button id="submit-button" type="submit" class="btn btn-primary" name="action" value="CONFIRM"><i class="icon-save"></i>&nbsp&nbspLưu Lại&nbsp&nbsp</button>
                    <a href="{!! URL::route('phongban')!!}" class="btn btn-primary"><i class="icon-remove"></i>&nbsp&nbspQuay lại&nbsp&nbsp</a>
</div>


</div>

    </div>
    </div>
    @endsection