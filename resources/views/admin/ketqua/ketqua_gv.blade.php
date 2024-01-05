@extends('admin.layout.master');
@section('title','Quản Lý Kết Quả');
@section('main')

<script type="text/javascript" src="js/jqueryui/1.10.2/jquery-ui.min.js"></script>
<div class="design_cauhoi">


    <button type="button" style="background: #213351" class="btn btn-primary exportexcel hidden" onclick="dropdown()">
        Export Excel <i class="fas fa-sort-down"></i></button>
    <div class="menunguoidung" id="menunguoidung">
        @foreach($kythi as $kt)
        <p><a href="../ketqua/exportKetQua/{{$kt->id_ky}}"><b>Kỳ Thi {{$kt->tenky}}</b> <i class="fas fa-chevron-right"></i></a></p>
        @endforeach

    </div>
    <!-- <a href="../ketqua/exportKetQua"> <button type="button" style="background: #213351" class="btn btn-primary">Export Excel</button></a> -->
    <a href="../ketqua/exportPDF"><button style="background: #213351" class="btn btn-primary">Export PDF</button></a>

</div>

<div class="panel panel-default">
    <div class="panel-heading">
        <h6 class="panel-title"><i class="fas fa-chalkboard-teacher"></i>QUẢN LÝ KẾT QUẢ THI</h6>
    </div>
    <div class="datatable">
        <form style="margin-top:7px;" method="get" id="searchform" action="searchketqua">
            <div class="email-box row" style="margin-left:7px">
                <div class="col-md-3">
                    <label>Tên đề thi</label>
                    @if(session('key'))
                    <input class="from-control nhaploai-search" type="search" name="key" value="{{ session()->get('key') }}" />
                    @else
                    <input class="from-control nhaploai-search" type="search" placeholder="Nhập tên đề thi" name="key" />
                    @endif
                </div>
                <!-- <p>Tên đề thi đã nhập: {{ session()->get('key') }}</p> -->

                <div class="col-md-6">
                    <label>Ngày thi (Từ ngày - Đến ngày)</label>
                    <div style="justify-content:space-between">
                        <input class="from-control nhaploai-search" style="margin-right:5px" type="date" name="tungay" />
                        <input class="from-control nhaploai-search" type="date" name="denngay" />
                    </div>
                </div>
                <div class="col-md-2">
                    <label>Xếp loại</label>
                    <select class="from-control nhaploai-search" name="xeploai" style="margin-right:5px">
                        <option value="Tất cả" {{ session()->get('xeploai') == 'Tất cả' ? 'selected' :'' }}>Tất cả</option>
                        <option value="Yếu" {{ session()->get('xeploai') == 'Yếu' ? 'selected' :'' }}>Yếu</option>
                        <option value="Trung bình" {{ session()->get('xeploai') == 'Trung bình' ? 'selected' :'' }}>Trung bình</option>
                        <option value="TB khá" {{ session()->get('xeploai') == 'TB khá' ? 'selected' :'' }}>TB khá</option>
                        <option value="Khá" {{ session()->get('xeploai') == 'Khá' ? 'selected' :'' }}>Khá</option>
                        <option value="Giỏi" {{ session()->get('xeploai') == 'Giỏi' ? 'selected' :'' }}>Giỏi</option>
                    </select>
                </div>
                <div class="col-md-12" style="text-align:center; margin-top:15px">
                    <button type="submit" style="background: #213351" class="btn btn-primary">Tìm kiếm</button>
                </div>
            </div>
        </form>
        @if(session('thongbao'))
        <div class="alert alert-success">
            <span class="glyphicon glyphicon-ok icon-oke"></span> {{session('thongbao')}}
        </div>
        @endif
        <table class="table tbl">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Đề thi</th>
                    <th>Họ và tên</th>
                    <th>Mã học sinh</th>
                    <th>Ngày sinh</th>
                    <th>Điểm</th>
                    <th>Xếp loại</th>
                    <th>Ngày thi</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $stt = 1;
                foreach ($ketqua as $kq) : $stt ?>
                    <tr>
                        <td>{{ $stt++ }}</td>
                        <td>{{$kq->tendethi}}</td>
                        <td>{{$kq->hoten}}</td>
                        <td>{{$kq->id_hs}}</td>
                        <td>{{$kq->ngaysinh}}</td>
                        <td>{{$kq->diem}}</td>
                        <td>{{$kq->xeploai}}</td>
                        <td>{{$kq->ngaythi}}</td>
                    </tr>
                <?php endforeach ?>
            </tbody>
        </table>
    </div>
</div>
<style>
    .dataTables_filter {
        display: none !important;
    }

    .nhaploai-search {
        border-radius: 5px;
        border: 1px solid rgb(177, 175, 175);
        height: 38px;
        width: 200px;
    }

    .menunguoidung {
        background: #4F588C;
        color: #000;
        width: 170px;
        height: 155px;
        position: fixed;
        margin-left: 853px;
        margin-top: 235px;
        padding-top: 10px;
        top: 1;
        z-index: 1;
        text-align: left;
        padding-left: 20px;

        border: 1px solid #D8D4D4;
        display: none;
    }

    .menunguoidung a {
        color: #fff;

    }
</style>

<script>
    var state = 0;

    function dropdown() {
        if (state == 0) {
            document.getElementById("menunguoidung").style.display = 'block';
            state = 1;
        } else if (state == 1) {
            document.getElementById("menunguoidung").style.display = 'none';
            state = 0;
        }
    }
</script>

@stop