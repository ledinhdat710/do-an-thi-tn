@extends('admin.layout.index')
@section('body')
<div class="container-fluid tintuc">
    <div class="container">
        <div class="row">
            <div class="col-md-12 tieudetintuc">

                <h3>KẾT QUẢ THI</h3>
            </div>
        </div>

        <div class="main_gioithieu">
            <table class="table tbl">
                <thead>
                    <tr>
                        <th>STT</th>
                        <th>Mã HS</th>
                        <th>Họ và tên</th>
                        <th>Giới tính</th>
                        <th>Ngày sinh</th>
                        <th>Địa chỉ</th>
                        <th>Điểm</th>
                        <th>Xếp loại</th>

                    </tr>
                </thead>
                <tbody>
                    <?php
                    $stt = 1;
                    foreach ($ketqua as $kq) : $stt ?>
                        <tr>
                            <td>{{ $stt++ }}</td>
                            <td>{{$kq->id_hs}}</td>
                            <td>{{$kq->hoten}}</td>
                            <td>{{$kq->gioitinh}}</td>
                            <td>{{$kq->ngaysinh}}</td>
                            <td>{{$kq->diachi}}</td>
                            {{-- <td >{{$gv->id_mh}}</td> --}}
                            {{-- <td >{{$kq->id_de}}</td>
                            <td>{{$kq->socaudung}}</td> --}}
                            <td>{{$kq->diem}}</td>
                            <td>{{$kq->xeploai}}</span></td>

                        </tr>
                    <?php endforeach ?>
                </tbody>
            </table>

        </div>




    </div>
</div>
@stop