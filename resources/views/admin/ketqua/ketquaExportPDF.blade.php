<!DOCTYPE html>
<html>

<head>
	<title>EXAMIN</title>


	<style>
		.chitietdethi {
			/*border: 1px solid #000;*/
			text-align: center;
			margin-top: 20px;
			margin-bottom: 50px;
			width: 700px;
			font-family: "Times New Roman", Times, serif;
			border: 1px solid #000;
		}

		.head h4,
		h5 {
			font-weight: bold;
		}

		.under_gach {
			border-bottom: 1.5px solid #000;
			width: 240px;
			margin-left: 420px;
			margin-top: -22px;
		}

		.under_gach2 {
			border-bottom: 1.5px solid #000;
			width: 200px;
			margin-left: 100px;
			margin-top: -22px;
		}

		.coso {
			margin-left: -400px;
		}

		.coso2 {
			margin-left: 300px;
			margin-top: -90px;
		}

		.dechinhthuc {
			font-size: 15px;
			text-transform: uppercase;
		}

		.dechinhthuc2 {
			font-size: 17px;
			margin-top: 0px;
		}

		.tenkythi {
			text-transform: uppercase;
		}

		.head {
			margin-top: 30px;
		}

		.head i {
			font-size: 15px;
		}

		.made {
			padding: 7px 0 7px 0;
			border: 2px solid #000;
			width: 80px;
			font-weight: bold;
			margin-top: -30px;
			margin-left: 500px;

		}

		.noidungdethi {
			margin-bottom: 30px;
		}

		.cauhoidethi {
			margin-top: 10px;
		}

		.noidungdethi .tieudecauhoi {
			text-align: left;
			margin-left: 43px;
			font-size: 16px;
		}

		.thongtindethi {
			font-weight: bold;
			font-size: 17px;
			margin-left: -255px;
			margin-top: 50px;
		}

		.noidungchitietcauhoi {
			font-size: 16px;
			margin-left: -108px;
		}

		.tendapan {
			font-weight: bold;
			margin-right: 5px;
		}

		.ketthucdethi {
			font-weight: bold;
			font-size: 16px;
			margin-top: 30px;
		}

		.noidungdethi,
		.head {
			margin-left: 20px;
		}

		.dapantrongch {
			text-align: left;
			font-size: 16px;
			margin-left: 45px;
		}

		.noidungchitietcauhoi div {
			display: inline;
			margin-right: 30px;
			margin-top: 10px;
			margin-bottom: 10px;
		}

		span p {
			display: inline;
		}

		.tieudecauhoi p {
			display: inline;
		}

		.classthongtin {
			margin-top: -20px;
		}

		.container-fluid {}

		.bangdiem {
			margin-top: 20px;
			margin-bottom: 10px;
			font-weight: bold;
			font-size: 20px;
			font-family: "Times New Roman", Times, serif;
		}

		.namhoc {
			margin-bottom: 30px;
		}

		table {
			/* font-family: Roboto, Helvetica Neue, Helvetica, Arial, sans-serif; */
			border-collapse: collapse;
			width: 650px;
			margin-left: 5px;
			margin-bottom: 50px;
			font-family: "Times New Roman", Times, serif;
		}

		td,
		th {
			border: 1px solid #dddddd;
			text-align: left;
			padding: 8px;
		}

		tr:nth-child(even) {
			background-color: #dddddd;
		}
	</style>
</head>

<body>
	<div class="container-fluid" style="font-family: Roboto, Helvetica Neue, Helvetica, Arial, sans-serif;">
		<div class="container chitietdethi" id="HTMLtoPDF">
			<div class="row head">
				<div class="row">
					<div class="col-md-1"></div>
					<div class="col-md-4 coso" >
						<h4 class="dechinhthuc" >HỆ THỐNG QUẢN LÝ THI TRẮC NGHIỆM</h4>

						<h5 class="dechinhthuc">EDUQUIZZ</h5>
						<p class="under_gach"></p>

					</div>
					<!-- <div class="col-md-6 coso2">
						<h4 class="tenkythi">CỘNG HÒA XÃ HỘ CHỦ NGHĨA VIỆT NAM</h4>
						<h5 class="dechinhthuc2">Độc lập - Tự do - Hạnh Phúc</h5>
						<p class="under_gach2"></p> -->
						<!-- <i>Ngày: {{date("d")}} tháng {{date("m")}} năm {{date("Y")}}</i> -->

					</div>
					<div class="col-md-2"></div>
				</div>
				<div class="row bangdiem">
					<div class="col-md-4"></div>
					<div class="col-md-4">BÁO CÁO KẾT QUẢ THI</div>
				
					<div class="col-md-4"></div>
				</div>
				<div><i>Ngày lập: {{date("d")}} tháng {{date("m")}} năm {{date("Y")}}</i></div>
				<div><i>Người lập: {{Auth::user()->name}}</i></div>
				<div>
					<table>

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
								<td>{{$kq->created_at}}</td>
							</tr>
						<?php endforeach ?>


					</table>
				</div>
			</div>
		</div>
	</div>
</body>

</html>