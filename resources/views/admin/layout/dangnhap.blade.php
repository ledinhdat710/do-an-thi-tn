@extends('admin.layout.index')


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Đăng nhập</title>
	<link rel="stylesheet" href="{{ url('css/trangdangnhap.css')}}">
</head>
@section('body')	
<body>
	<div style="color: #fff">
		@if(Session::has('flag'))
			<div class="alert alert-{{Session::get('flag')}}">{{Session::get('message')}} </div>
		@endif</div>
	<form action="dangnhap" method="post">
		<input type="hidden" name="_token" value="{{ csrf_token()}}">
		<div class="form-area">
		<div class="img-area">
			<img src="imgs/login-icon.png" alt="">
		</div>
		<h2>ĐĂNG NHẬP</h2>
		<p>Email: </p>
		<input type="email" name="email" required="">
		<p>Mật khẩu: </p>
		<input type="password" name="password" required="">

		<a href="#" >
			
		
			<button type="submit" class="btnlogin">
					 <span class="btn-text"> Đăng nhập</span> 
			</button> 
			
		</a>

		<a href="" class="for-pass">Quên mật khẩu? </a>
	</div>
	</form>
</body>
@stop
</html>