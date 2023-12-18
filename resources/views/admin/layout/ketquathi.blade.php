@extends('admin.layout.index')
@section('body')

<div class="container-fluid tintuc">
    <div class="container">
        <div class="row">
            <div class="col-md-12 tieudetintuc">

                <h3>KẾT QUẢ THI</h3>
            </div>
        </div>
    
        <!-- <div class="main_gioithieu">
            <div class="panel panel-default"> -->
        <div class="datatable">
            <table class="table tbl">
                <thead>
                    <tr>
                        <th>STT</th>
                        <th>Ngày thi</th>
                        <th>Tên đề thi</th>
                        <th>Thời gian thi</th>
                        <th>Điểm</th>
                        <th>Xếp loại</th>
                        <th>Chi tiết</th>

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
                        <td><a href="lichsuthi/{{$kq->id_de}}"><button style="font-weigth:bold;">Chi
                                    tiết</button></a></td>
                    </tr>
                    <?php endforeach ?>

                </tbody>
            </table>
        </div>
        <div class="phantrangtintuc">
            <a href=""><span><i class="fas fa-angle-double-left"></i></span></a>
            <a href=""><span>1</span></a>
            <a href=""><span><i class="fas fa-angle-double-right"></i></span></a>
        </div>
    </div>





    </style>
    @stop