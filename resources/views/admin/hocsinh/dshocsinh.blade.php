@extends('admin.layout.dashadmin');
@section('title','Danh sách học sinh');
@section('main')
<div class="design_cauhoi">

    <!-- <a href="admin/hocsinh/themhocsinh"><button data-toggle="modal" data-target="#modal_form_horizontal2" type="button" style="background: #213351" class="btn btn-primary">Thêm
        </button></a>
    <a href="importhocsinh"> <button type="button" style="background: #213351" class="btn btn-primary">Import</button></a>
    <a href="export"><button type="button" style="background: #213351" class="btn btn-primary">Export</button></a> -->



</div>

<div class="panel panel-default">
    <div class="panel-heading">
        <h6 class="panel-title"><i class="fas fa-chalkboard-teacher"></i>Danh sách học sinh</h6>
    </div>
    <div class="datatable">
        @if(session('thongbao'))
        <div class="alert alert-success">
            <span class="glyphicon glyphicon-ok icon-oke"></span> {{session('thongbao')}}
        </div>
        @endif
        
        <table class="table tbl">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Họ tên</th>
                    <th>Hình ảnh</th>
                    <th>Địa chỉ</th>
                    <th>Số điện thoại</th>
                    <!-- <th>Sửa</th>
                    <th>Xóa</th> -->
                </tr>
            </thead>
            <tbody>
                <?php
                $stt = 1;
                foreach ($hocsinh as $hs) : $stt ?>
                    <tr>
                        <td>{{ $stt++ }}</td>
                        <td>{{$hs->hoten}}</td>
                        <td><img src="imgs/user/{{$hs->hinhanh}}" alt="" width="70" height="90"></td>
                        <td>{{$hs->diachi}}</td>
                        <td>{{$hs->sdt}}</td>
                        <!-- <td>{{$hs->email}}</td> -->
                        

                        <!-- <td><a href="../suahocsinh/{{$hs->id_hs}}">
                                <button data-toggle="modal" class="btn btnsuach">Sửa</button>
                            </a>
                        </td>
                        <td><a onclick="return confirm('Bạn có chắc chắn muốn xóa không?')" href="xoahocsinh/{{$hs->id_hs}}">
                                <button type="button" class="btn btnxoach">Xóa</button>
                            </a>
                        </td> -->

                    </tr>
                <?php endforeach ?>
            </tbody>
        </table>
    </div>
</div>
@stop