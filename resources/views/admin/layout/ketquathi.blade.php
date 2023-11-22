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
<<<<<<< HEAD
                        <th>Mã HS</th>
                        <th>Họ và tên</th>
                        <th>Giới tính</th>
                        <th>Ngày sinh</th>
                        <th>Địa chỉ</th>
=======
                        <th>Ngày thi</th>
                        <th>Tên đề thi</th>
                        <th>Thời gian thi</th>
>>>>>>> 4678bb4e6fd4ebb12bb204216db3df290f73b9d9
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
                            <td>{{$kq->ngaythi}}</td>
                            <td>{{$kq->tendethi}}</td>
                            <td>{{$kq->thoigianthi}} phút</td>
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