<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Đăng ký</title>
	<link rel="stylesheet" href="{{ url('css/trangdangnhap.css')}}">
</head>
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
        <h2><i class="fa fa-edit"></i>ĐĂNG KÝ</h2>
        <p>Tên người dùng: </p>
        <input type="text" required="" class="from-control nhaploai" placeholder="  Nhập tên người dùng" name="tenuser" />
        <p>Email: </p>
        <input type="email" required="" class="from-control nhaploai" placeholder="  Nhập email" name="email" />
        <p>Mật khẩu: </p>
        <input type="password" required="" class="from-control nhaploai" placeholder="  Nhập password" name="password"/>
        <p>Người dùng: 
            <td>
                                    <select name="quyen" id="tenloaich" class="form-control nhaploai">
                                
                                        <option value="0"> Học sinh</option>
                                        <option value="1"> Giáo viên</option>
                                    </select>
                                </td>
        </p>
        
        <!--<tr class="tbl">
		   

			<td class="style_row"><i class="fa fa-edit"></i> &nbsp; &nbsp;Tên Người Dùng</td>
							<td><input type="text" required="" class="from-control nhaploai" placeholder="  Nhập tên người dùng" name="tenuser" />
							
							</td>
						</tr>

						<tr class="tbl">
							<td class="style_row"><i class="fa fa-edit"></i> &nbsp; &nbsp;Email</td>
							<td><input type="email" required="" class="from-control nhaploai" placeholder="  Nhập email" name="email" />
							
							</td>
						</tr>

						<tr class="tbl">
							<td class="style_row"><i class="fa fa-edit"></i> &nbsp; &nbsp;Mật Khẩu</td>
							<td><input type="password" required="" class="from-control nhaploai" placeholder="  Nhập password" name="password"/>
							
							</td>
						</tr>

						<tr class="tbl">
							<td class="style_row"><i class="fa fa-edit"></i> &nbsp; &nbsp;Quyền</td>
							<td>
								<select name="quyen" id="tenloaich" class="form-control nhaploai">
							
	                                <option value="0"> Học sinh</option>
	                                <option value="1"> Giáo viên</option>
	                                <option value="2"> Admin</option>
                       			 </select>
							</td>
						</tr>
						
					
						<tr>
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
	</div>
	</form>
</body>
</html>