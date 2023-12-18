@extends('admin.layout.index')

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>Đăng ký</title>
	<link rel="stylesheet" href="{{ url('css/trangdangky.css')}}">
</head>

@section('body')

<body>
	<div style="color: #fff">
		@if(Session::has('flag'))
		<div class="alert alert-{{Session::get('flag')}}">{{Session::get('message')}} </div>
		@endif
	</div>

	<form action="{{route('dangky')}}" method="post" enctype="multipart/form-data">
		<input type="hidden" name="_token" value="{{csrf_token()}}">
		<div class="form-area">
			<div class="img-area">
				<img src="imgs/login-icon.png" alt="">
			</div>
			<h2>ĐĂNG KÝ</h2>

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
			<tr class="tbl">
				<p> &nbsp; &nbsp;Email đăng nhập</p>
				<td><input type="email" required="" class="from-control nhaploai" placeholder="  Nhập email" name="email" />

				</td>
			</tr>
			<tr class="tbl">


				<p> &nbsp; &nbsp;Tên Người Dùng</p>
				<td><input type="text" required="" class="from-control nhaploai" placeholder="  Nhập tên người dùng" name="tenuser" />

				</td>
			</tr>
			<tr class="tbl">
				<p required=""> &nbsp; &nbsp;Hình ảnh</p>
				<td><input type="file" required="" class="from-control " name="hinhanh" />

				</td>
			</tr>
			<tr class="tbl">
				<p> &nbsp; &nbsp;Giới tính</p>
				<td>
					<select name="gioitinh" class="form-control nhaploai">
						<option value="Nữ"> Nữ</option>
						<option value="Nam"> Nam</option>
					</select>
				</td>
				<p></p>
			</tr>
			<tr class="tbl">
				<p> &nbsp; &nbsp;Ngày sinh</p>
				<td><input type="date" required="" class="from-control nhaploai" placeholder="  Nhập ngày sinh" name="ngaysinh" />

				</td>
			</tr>
			<tr class="tbl">
				<p> &nbsp; &nbsp;Địa chỉ</p>
				<td><input type="text" class="from-control nhaploai" placeholder="  Nhập địa chỉ" name="diachi" />

				</td>
			</tr>

			<tr class="tbl">
				<p> &nbsp; &nbsp;Số điện thoại</p>
				<td><input type="text" class="from-control nhaploai" placeholder="  Nhập số điện thoại" name="sdt" />

				</td>
			</tr>
			

			<tr class="tbl">
				<p> &nbsp; &nbsp;Mật Khẩu</p>
				<td><input type="password" required="" class="from-control nhaploai" placeholder="  Nhập password" name="password" />

				</td>
			</tr>
			<tr class="tbl">
				<p> &nbsp; &nbsp;Nhập lại mật khẩu:</p>
				<td><input type="password" required="" class="from-control nhaploai" placeholder="Nhập lại mật khẩu" name="password" />

				</td>
			</tr>

			<tr class="tbl">
				<p> &nbsp; &nbsp;Đối tượng</p>
				<td>
					<select name="doituong" id="tenloaich" class="form-control nhaploai">
						<option value="0"> Học sinh</option>
						<option value="1"> Giáo viên</option>
					</select>
				</td>
			</tr>
			<button type="submit" class="btnlogin">
				<span class="btn-text"> Đăng ký</span>
			</button>
		</div>
	</form>
</body>
@stop

</html>