@extends('layout.main')
@section('main_body')
<div class="container">
<div class="card-body">
<div class="card-header ">
                    <div class="row">
                                  <div class="col-md-12" align="center">
                                       <h1 class="btn text-info"> THÊM THÔNG TIN HỢP ĐỒNG</h1>
                                  </div>
                    
                     </div>
            <form action="{!! URL::route('luu_hd')!!}" method="POST">
            <input type="hidden" name="_token" value="{!! csrf_token() !!}" />
            <div class="form-row"> <!--thuộc tính form-row nó giúp chia 2 cột trên 1 row của nó-->
                    <div class="col">
                        <label>MÃ HỢP ĐỒNG</label>
                        <input id="current-pass-control" name="txt_ma_hd" class="form-control" type="text" value="">
                              
                    </div>
                   <div class="col">
                        <label>CHỨC VỤ</label>
                        <input id="new-pass-control" name="txt_ma_cv" class="form-control" type="text" value="">
                              
                    </div>
</div>

<div class="form-row"> <!--thuộc tính form-row nó giúp chia 2 cột trên 1 row của nó-->
<div class="col">
                        <label>PHÒNG BAN</label>
                        <input id="new-pass-control" name="txt_ma_pb" class="form-control" type="text" value="">
                                
                    </div>                  
<div class="col">
                        <label>HỆ SỐ LƯƠNG</label>
                        <input id="current-pass-control" name="txt_heso_luong" class="form-control" type="text" value="">
                                
                    </div>
                 
</div>
<div class="form-row"> <!--thuộc tính form-row nó giúp chia 2 cột trên 1 row của nó-->
                    <div class="col">
                        <label>NGÀY VÀO LÀM</label>
                        <input id="current-pass-control" name="txt_ngayvao" class="form-control" type="text" value="">
                              
                    </div>
                   
</div>



<div class="card-header text-white">
                    <button id="submit-button" type="submit" class="btn btn-primary" name="action" value="CONFIRM"><i class="icon-save"></i>&nbsp&nbspLưu Lại&nbsp&nbsp</button>
                    <a href="{!! URL::route('nhanvien')!!}" class="btn btn-primary"><i class="icon-remove"></i>&nbsp&nbspVề Trang Chủ&nbsp&nbsp</a>
</div>


</div>

    </div>
    </div>
    @endsection