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
		@endif</div>
	<form action="dangky" method="post">
		<input type="hidden" name="_token" value="{{ csrf_token()}}">
		<div class="form-area">
		<div class="img-area">
			<img src="imgs/login-icon.png" alt="">
		</div>
        <h2>ĐĂNG KÝ</h2>
        
        
        <tr class="tbl">
		   

			<p> &nbsp; &nbsp;Tên Người Dùng</p>
							<td><input type="text" required="" class="from-control nhaploai" placeholder="  Nhập tên người dùng" name="tenuser" />
							
							</td>
						</tr>
                        <tr class="tbl">
							<p> &nbsp; &nbsp;Hình ảnh</p>
							<td><input type="file" class="from-control "  name="hinhanh" />
							
							</td>
						</tr>
                        <tr class="tbl">
							<p> &nbsp; &nbsp;Giới tính</p>
							<td>
								<select name="gioitinh" id="tenloaich" class="form-control nhaploai">
	                                <option value="Nữ"> Nữ</option>
	                                <option value="Nam"> Nam</option>
                       			 </select>
							</td>
                            <p></p>
						</tr>
                        <tr class="tbl">
							<p> &nbsp; &nbsp;Địa chỉ</p>
							<td><input type="text" class="from-control nhaploai" placeholder="  Nhập địa chỉ" name="tenloai" />
							
							</td>
						</tr>

						<tr class="tbl">
							<p> &nbsp; &nbsp;Số điện thoại</p>
							<td><input type="text" class="from-control nhaploai" placeholder="  Nhập số điện thoại" name="tenloai" />
							
							</td>
						</tr>
						<tr class="tbl">
							<p> &nbsp; &nbsp;Email</p>
							<td><input type="email" required="" class="from-control nhaploai" placeholder="  Nhập email" name="email" />
							
							</td>
						</tr>

						<tr class="tbl">
							<p> &nbsp; &nbsp;Mật Khẩu</p>
							<td><input type="password" required="" class="from-control nhaploai" placeholder="  Nhập password" name="password"/>
							
							</td>
						</tr>
						<tr class="tbl">
							<p> &nbsp; &nbsp;Nhập lại mật khẩu:</p>
							<td><input type="password" required="" class="from-control nhaploai" placeholder="Nhập lại mật khẩu" name="password"/>
							
							</td>
						</tr>

						<tr class="tbl">
							<p> &nbsp; &nbsp;Đối tượng</p>
							<td>
								<select name="quyen" id="tenloaich" class="form-control nhaploai">
							
	                                <option value="0"> Học sinh</option>
	                                <option value="1"> Giáo viên</option>
                       			 </select>
							</td>
						</tr>
						
					
						<!--<tr>
							<td class="style_row tbl-row" colspan="2" >
								<button  class="btn btnsuach" type="submit">Thêm</button>
								<button type="reset" class="btn  btnxoach" >Thoát</button>
								
							</td>
						</tr>
		<h2>Đăng Ký</h2>
		<p>Email: </p>
		<input type="email" name="email" required="">
		<p>Mật khẩu: </p>
		<input type="password" name="password" required="">

		<a href="#" >
			
		
			<button type="submit" class="btnlogin">
					 <span class="btn-text"> Đăng nhập</span> 
			</button> 
			
		</a>

		<a href="" class="for-pass">Quên mật khẩu? </a>-->
	
    <p></p>
    <button type="submit" class="btnlogin">
					 <span class="btn-text"> Đăng ký</span> 
			</button> 
			</div>
	</form>
</body>
@stop
</html>