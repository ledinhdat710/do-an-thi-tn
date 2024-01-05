<div class="menu-top">
	<div class="row">

		<div class="col-md-1 doc" style="width:150px;">
			<p class="add"><i class="fas fa-map"></i> ADDRESS</p>
			<p class="diachi">Hà Nội </p>
		</div>
		<div class="col-md-1 doc" style="width:150px;">
			<p class="add"><i class="fas fa-envelope-open"></i> EMAIL</p>
			<p class="diachi a">Eduquizz@gmail.com </p>
		</div>
		<div class="col-md-1 doc">
			<p class="add"><i class="fas fa-phone"></i> CONTACT</p>
			<p class="diachi">0967978353</p>
		</div>
		@if(Auth::check() && Auth::user()->doituong==0)
		<div class="col-md-4"></div>
		@else

		<div class="col-md-2"></div>
		@endif
		<div class="col-md-2 infor_user">
			@if(Auth::check() && Auth::user()->doituong==0)
			<img src="imgs/user/face25.png" alt="" width="35" height="35">
			{{Auth::user()->name}} <i class="fas fa-sort-down checklichsu"></i>
			@endif
			<!-- <div class="menunguoidung">
				<p><a href="{{url('lichsu')}}"><b>Lịch Sử Bài Thi</b> <i class="fas fa-chevron-right"></i></a></p>

			</div> -->
		</div>
		@if(Auth::check() && Auth::user()->doituong==0)
		<div class="col-md-2">
			@if(Auth::check() && Auth::user()->doituong==0)
			<a href="{{url('dangxuat')}}">
				<div class="login" style="width: 120px;"><i class="fas fa-sign-out-alt"></i> Đăng xuất</div>
			</a>

			@else

			<a href="{{url('dangnhap')}}">
				<div class="login " style="width: 120px;"><i class="fas fa-user"></i> Đăng nhập</div>
			</a>
			@endif
		</div>
		@else
		<div class="col-md-4" style="display:flex; justify-content: center">
			<div style="margin-right:20px">
				@if(Auth::check() && Auth::user()->doituong==0)
				<a href="{{url('dangxuat')}}">
					<div class="login" style="width: 120px;"><i class="fas fa-sign-out-alt"></i> Đăng xuất</div>
				</a>

				@else

				<a href="{{url('dangnhap')}}">
					<div class="login " style="width: 120px;"><i class="fas fa-user"></i> Đăng nhập</div>
				</a>
				@endif
			</div>
			<div>
				@if(Auth::check() && Auth::user()->doituong==0)
				<!-- <a href="{{url('dangky')}}">
				<div class="login" style="width: 120px;"><i class="fas fa-sign-out-alt"></i> Đăng xuất</div>
			</a> -->
				@else

				<a href="{{url('dangky')}}">
					<div class="regis " style="width: 120px;"><i class="fas fa-address-card"></i>    Đăng ký</div>
				</a>
				@endif
			</div>
		</div>
		@endif

	</div>
</div>
<div class="menu-ngang">
	<div class="row" data-spy="affix" data-offset-top="85">
		<div class="col-md-1"></div>
		<div class="col-md-2">
			<a href="{{url('trangchu') }}">
				<img src="{{asset('imgs/eduquizz2.png') }}" style="width:170px; margin-top: 10px;display: inline;" alt="">
			</a>

		</div>
		<div class="col-md-9 ngang">
			<ul>
				<li><a href="{{url('trangchu') }}">TRANG CHỦ </a> </li>


				<li>
					<div class="dropdown">

						<a href="" class="dropdown-toggle" data-toggle="dropdown">ĐỀ THI </a>
						<span class="caret"></span>
						<ul class="dropdown-menu down_menu">
							<li>
								<a href="{{url('thithptquocgia')}}"><span>Ôn thi THPT Quốc Gia</span> <i class="fas fa-angle-right ic1"></i></a>
							</li>
							<li>
								<a href="{{url('thihocki')}}"><span>Kiểm tra học kỳ </span><i class="fas fa-angle-right ic2"> </i></a>
							</li>
							<li>
								<a href="{{url('thi15p')}}"><span>Kiểm tra 15 phút</span> <i class="fas fa-angle-right ic3"> </i></a>
							</li>

							<li>
								<a href="{{url('thi45p')}}"><span>Kiểm tra 45 phút</span> <i class="fas fa-angle-right ic3"> </i></a>
							</li>
						</ul>
					</div>
				</li>

				@if(Auth::check() && Auth::user()->doituong==0)
				<li><a href="{{url('ketquathi')}}">KẾT QUẢ THI</a></li>
				@endif

				<li>
					<div class="dropdown">

						<a href="" class="dropdown-toggle" data-toggle="dropdown">TÀI LIỆU </a>
						<span class="caret"></span>
						<ul class="dropdown-menu down_menu">
							<li>
								<a href="{{url('ngoaingu')}}"><span>Môn Ngoại Ngữ</span> <i class="fas fa-angle-right ic6"> </i></a>
							</li>
							<li>
								<a href="{{url('ngoaingu')}}"><span>Môn Toán</span> <i class="fas fa-angle-right ic4"></i></a>
							</li>
							<li>
								<a href="{{url('ngoaingu')}}"><span>Môn Ngữ Văn </span><i class="fas fa-angle-right ic5"> </i></a>
							</li>


							<li>
								<a href="{{url('ngoaingu')}}"><span>Môn Sinh Học</span> <i class="fas fa-angle-right ic7"> </i></a>
							</li>
							<li>
								<a href="{{url('ngoaingu')}}"><span>Môn Hóa Học</span> <i class="fas fa-angle-right ic7"> </i></a>
							</li>
							<li>
								<a href="{{url('ngoaingu')}}"><span>Môn Vật Lý</span> <i class="fas fa-angle-right ic7"> </i></a>
							</li>
							<li>
								<a href="{{url('ngoaingu')}}"><span>Môn Tin Học</span> <i class="fas fa-angle-right ic7"> </i></a>
							</li>
						</ul>
					</div>
				</li>


				<!-- <li><a href="{{url('tintuc')}}">TIN TỨC </a></li> -->
				<!--<li><a href="{{url('lienhe')}}">LIÊN HỆ </a></li>-->


				<li><a href="{{url('gioithieu')}}">GIỚI THIỆU </a></li>
				<!-- <li><input type="text" class="timkiem" placeholder="  Tìm kiếm"> <i class="fas fa-search"></i></li> -->
				
				<li style="float:right;">
					<form method="get" id="searchform" action="search">
						<div class="email-box">
							<i class="fas fa-search"></i>
							<input type="text" class="tbox" name="key" placeholder="  Nhập từ khóa tìm kiếm">
							<input type="submit" value="Tìm kiếm" class="btntk">

						</div>
					</form>
				</li>

			</ul>
		</div>

		<div class="col-md-1 ngang"></div>
	</div>
	<span id="scrolltopbtn" class="gotop"><i class="fas fa-arrow-up"></i></span>
</div>
<style>
	.gotop {
		margin-top: 600px;
		position: fixed;
		padding: 6px 13px 6px 13px;
		color: #fff;
		background: #4A9FF5;
	}

	.gotop:hover {
		color: #fff;
		background: #4A9FF5;
	}

	.infor_user {
		color: #fff;
		margin-top: 20px;
		text-align: right;
	}

	.infor_user img {
		border-radius: 50%;
	}

	.menunguoidung {
		background: #ffb606;
		color: #000;
		width: 150px;
		height: 50px;
		position: fixed;
		margin-left: 90px;
		margin-top: 15px;
		top: 1;
		z-index: 1;
		text-align: center;
		line-height: 50px;
		border: 1px solid #9C9A9A;
		display: none;
	}

	.menunguoidung a {
		color: #000;

	}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		var state = 0;
		$(".checklichsu").click(function() {
			if (state == 0) {
				$(".menunguoidung").css("display", "block");
				state = 1;
			} else if (state == 1) {
				$(".menunguoidung").css("display", "none");
				state = 0;
			}
		})
	})

	$('#scrolltopbtn').click(function() {
		$('html,body').animate({
			scrollTop: 600
		}, 2000)
	});

	// const button = document.getElementById('scrolltopbtn');

	// function scrollToTop(){
	// 	function scrolling(){
	// 		if(window.scrollY>0){
	// 			window.scrollTo(0, window.scrollY -30);

	// 	}
	// }
	// scrolling();


	// 		}
	// 			button.addEventListener('click', scrollToTop);
</script>