@extends('admin.layout.master');
@section('title','Ngân Hàng Câu Hỏi');
@section('main')

<div class="panel panel-default khung">
	<div class="panel-heading">
		<h6 class="panel-title"><i class="fas fa-chalkboard-teacher"></i><b style="font-size: 14px">NHẬP THÔNG TIN CÂU
				HỎI</b></h6>
	</div>
	@if(count($errors)>0)
	<div class="alert alert-danger">
		@foreach($errors->all() as $err)
		<span class="glyphicon glyphicon-remove icon-remove"></span> {{$err}} <br>
		@endforeach
	</div>
	@endif

	@if(session('thongbao'))
	<div class="alert alert-success">
		<span class="glyphicon glyphicon-ok icon-oke"></span> {{session('thongbao')}}
	</div>
	@endif
	<!-- <div class="datatable"> -->
	<form class="block well" action="../suacauhoi/{{$cauhoi->id_cauhoi}}" method="POST" enctype="multipart/form-data">
		<input type="hidden" name="_token" value="{{csrf_token()}}">
		<div style="padding: 20px">
			<h6><i class="fa fa-edit"></i> &nbsp; &nbsp; Tên loại câu hỏi</h6>

			<select name="tenloai" id="tenloaich" class="form-control" onchange="kiemtraloai()">

				@foreach($loaich as $lch)
				<option @if($cauhoi->id_loaich == $lch->id_loaich)
					{{"selected"}}
					@endif
					value="{{$lch->id_loaich}}">{{$lch->tenloai}}</option>
				@endforeach

			</select>


		</div>
		<div style="padding: 20px">
			<h6><i class="fa fa-edit"></i> &nbsp; &nbsp; Tên môn thi</h6>

			<select name="tenmon" id="tenmh" class="form-control">
				{{-- $monthi được truyền từ biến mon(không có dấu $) trong CauHoiController --}}
				@foreach($mon as $mt)
				<option @if($cauhoi->id_mh == $mt->id_mh)
					{{"selected"}}
					@endif
					value="{{$mt->id_mh}}">{{$mt->tenmh}}</option>
				@endforeach

			</select>

		</div>

		<div style="padding: 20px">
			<h6><i class="fa fa-edit"></i> &nbsp; &nbsp; Tên khối</h6>

			<select name="namekhoi" id="txtMH" class="form-control">

				@foreach($khoi as $k)
				<option @if($cauhoi->id_khoi == $k->id_khoi)
					{{"selected"}}
					@endif
					value="{{$k->id_khoi}}">{{$k->tenkhoi}}</option>
				@endforeach
			</select>

		</div>
		<div style="padding: 20px">
			<h6><i class="fa fa-edit"></i> &nbsp; &nbsp; Tên mức độ</h6>
			<!-- <input type="text" class="form-control" placeholder="Đáp án" name="txtMD" id="txtMD" width="500"> -->
			<select name="namemd" id="txtMD" class="form-control">

				@foreach($mucdo as $md)
				<option @if($cauhoi->id_mucdo == $md->id_mucdo)
					{{"selected"}}
					@endif
					value="{{$md->id_mucdo}}">{{$md->tenmd}}</option>
				@endforeach

			</select>

		</div>

		<h6 style="padding-left: 20px"><i class="icon-bubble6"></i> &nbsp; &nbsp;Nội dung câu hỏi</h6>

		<div class="block-inner">
			<textarea class="ckeditor" name="noidung" id="">{{$cauhoi->noidung}}</textarea>



		</div>
		<div style="padding: 20px; padding-top: 0px">
			<h6><i class="fa fa-check"></i> &nbsp; &nbsp; Hình ảnh(nếu có)</h6>

			<div><img src="../../upload/cauhoi/{{$cauhoi->hinhanh}}" alt=""></div><br>
			<input type="file" class="form-control" name="txtfile" id="txtfile" value="{{$cauhoi->hinhanh}}">
		</div>
		<div style="padding: 20px; padding-top: 0px">
			<h6><i class="fa fa-edit"></i> &nbsp; &nbsp; Đáp án A</h6>
			<div class="block-inner">
				<textarea class="ckeditor" name="a" id=""> {{$cauhoi->a}}</textarea>


			</div>
		</div>

		<div style="padding: 20px">
			<h6><i class="fa fa-edit"></i> &nbsp; &nbsp; Đáp án B</h6>
			<textarea class="ckeditor" name="b" id="">{{$cauhoi->b}}</textarea>

		</div>

		<div id="truefalse">
			<div style="padding: 20px; padding-top: 0px">
				<h6><i class="fa fa-edit"></i> &nbsp; &nbsp; Đáp án C</h6>
				<textarea class="ckeditor" name="c" id="c">{{$cauhoi->c}}</textarea>

			</div>

			<div style="padding: 20px; padding-top: 0px">
				<h6><i class="fa fa-edit"></i> &nbsp; &nbsp; Đáp án D</h6>
				<textarea class="ckeditor" name="d" id="d">{{$cauhoi->d}}</textarea>

			</div>
		</div>
		<div style="padding: 20px">
			<h6><i class="fa fa-edit"></i> &nbsp; &nbsp;Đáp án đúng</h6>

			<select name="dapan" id="dapan" class="form-control">

				<option @if($cauhoi->dapan == 'A')
					{{"selected"}}
					@endif value="A">A</option>
				<option @if($cauhoi->dapan == 'B')
					{{"selected"}}
					@endif value="B">B</option>
				<option @if($cauhoi->dapan == 'C')
					{{"selected"}}
					@endif value="C">C</option>
				<option @if($cauhoi->dapan == 'D')
					{{"selected"}}
					@endif value="D">D</option>


			</select>


		</div>
		<div style="text-align:right;padding-right: 30px; padding-bottom: 20px">
			<button id="them" type="submit" style="	background-color: #213351;color:#fff; "
				class="btn btn-primary">Sửa</button> &nbsp;
			<button type="submit" style="background-color: red; color: #fff;border: 1px solid red"
				class="btn btn-primary">Thoát</button>

		</div>
	</form>
</div>

<script>

	functi on		emtraloai() {
		var loaich = document.getElementById("ten		ic h").value; 
	 	i			 {
			document.getElementById('truefalse').style.d play = 'no		; 
		} e
		document.getElementById('truefalse').style.dis ay = 'block				}
	}
</script>
@stop