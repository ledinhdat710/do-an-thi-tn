<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use PDF;
use App\KetQua;
use App\KyThi;
use App\MonThi;
use DB;
use Auth;

class KetQuaController extends Controller
{
	public function ketquathi()
	{
		$ketqua = DB::table('ketqua')
			->join('hocsinh', 'hocsinh.id_hs')
			->join('dethi', 'dethi.id_de', 'ketqua.id_de')
			->join('monthi', 'monthi.id_mh', 'dethi.id_mh')
			->join('kythi', 'kythi.id_ky', 'dethi.id_ky')->get()->toArray();
		$diem = DB::table('ketqua')->pluck('diem');
		// dd($diem[0]);
		// $xeploai='';
		// if($diem[0] <5){
		// 	$xeploai = 'Yếu';
		// }
		// elseif($diem[0] >=5 && $diem[0] ==6){
		// 	$xeploai = 'Trung bình';
		// }
		// elseif($diem[0] ==7 ){
		// 	$xeploai = 'Khá';
		// }
		// elseif($diem[0] >=8 ){
		// 	$xeploai = 'Giỏi';
		// }

		// dd($ketqua);
		return view('admin.ketqua.ketqua', ['ketqua' => $ketqua]);
	}

	public function ketquathi_gv()
	{
		$kythi = KyThi::all();
		$monthi = MonThi::all();
		session()->put('key', '');
		session()->put('xeploai', 'Tất cả');
		// dd($kythi);
		$ketqua = DB::table('ketqua')
			->join('hocsinh', 'hocsinh.id_hs', 'ketqua.id_hs')
			->join('dethi', 'dethi.id_de', 'ketqua.id_de', 'dethi.tendethi')
			->join('monthi', 'monthi.id_mh', 'dethi.id_mh')
			->join('kythi', 'kythi.id_ky', 'dethi.id_ky')->get()->toArray();


		// $diem = DB::table('ketqua')->pluck('diem');
		// // dd($diem[0]);
		// 	$xeploai='';
		// if($diem[0] <5){
		// 	$xeploai = 'Yếu';
		// }
		// elseif($diem[0] ==5){
		// 	$xeploai = 'Trung bình';
		// }
		// elseif($diem[0] ==6 ){
		// 	$xeploai = 'TB Khá';
		// }
		// elseif($diem[0] ==7 ){
		// 	$xeploai = 'Khá';
		// }
		// elseif($diem[0] >=8 ){
		// 	$xeploai = 'Giỏi';
		// }

		// dd($ketqua);
		return view('admin.ketqua.ketqua_gv', ['ketqua' => $ketqua, 'kythi' => $kythi, 'monthi' => $monthi]);
	}

	public function searchketqua(Request $req)
	{
		$kythi = KyThi::all();
		$monthi = MonThi::all();
		session()->put('key', $req->key);
		session()->put('xeploai', $req->xeploai);

		if ($req->xeploai != 'Tất cả') {
			$ketqua = DB::table('ketqua')
				->join('hocsinh', 'hocsinh.id_hs', 'ketqua.id_hs')
				->join('dethi', 'dethi.id_de', 'ketqua.id_de', 'dethi.tendethi')
				->join('monthi', 'monthi.id_mh', 'dethi.id_mh')
				->join('kythi', 'kythi.id_ky', 'dethi.id_ky')
				->where('dethi.tendethi', 'like', '%' . $req->key . '%')
				->where('ketqua.xeploai', '=',  $req->xeploai)
				// ->where('ketqua.created_at', '>=', $req->tungay)
				// ->where('ketqua.created_at', '<=', $req->denngay)
				->get()->toArray();
		} else {
			$ketqua = DB::table('ketqua')
				->join('hocsinh', 'hocsinh.id_hs', 'ketqua.id_hs')
				->join('dethi', 'dethi.id_de', 'ketqua.id_de', 'dethi.tendethi')
				->join('monthi', 'monthi.id_mh', 'dethi.id_mh')
				->join('kythi', 'kythi.id_ky', 'dethi.id_ky')
				->where('dethi.tendethi', 'like', '%' . $req->key . '%')
				// ->where('ketqua.created_at', '>=', $req->tungay)
				// ->where('ketqua.created_at', '<=', $req->denngay)
				->get()->toArray();
		}

		return view('admin.ketqua.ketqua_gv', ['ketqua' => $ketqua, 'kythi' => $kythi, 'monthi' => $monthi]);
	}



	public function exportPDF()
	{
		if (session()->get('xeploai') != 'Tất cả') {
			$ketqua = DB::table('ketqua')
				->join('hocsinh', 'hocsinh.id_hs', 'ketqua.id_hs')
				->join('dethi', 'dethi.id_de', 'ketqua.id_de', 'dethi.tendethi')
				->join('monthi', 'monthi.id_mh', 'dethi.id_mh')
				->join('kythi', 'kythi.id_ky', 'dethi.id_ky')
				->where('dethi.tendethi', 'like', '%' . session()->get('key') . '%')
				->where('ketqua.xeploai', '=',  session()->get('xeploai'))
				->get()->toArray();
		} else {
			$ketqua = DB::table('ketqua')
				->join('hocsinh', 'hocsinh.id_hs', 'ketqua.id_hs')
				->join('dethi', 'dethi.id_de', 'ketqua.id_de', 'dethi.tendethi')
				->join('monthi', 'monthi.id_mh', 'dethi.id_mh')
				->join('kythi', 'kythi.id_ky', 'dethi.id_ky')
				->where('dethi.tendethi', 'like', '%' . session()->get('key') . '%')
				->get()->toArray();
		}
		$diem = DB::table('ketqua')->pluck('diem');
		// dd($diem[0]);
		// $xeploai = '';
		// if ($diem[0] < 5) {
		// 	$xeploai = 'Yếu';
		// } elseif ($diem[0] == 5) {
		// 	$xeploai = 'Trung bình';
		// } elseif ($diem[0] == 6) {
		// 	$xeploai = 'TB Khá';
		// } elseif ($diem[0] == 7) {
		// 	$xeploai = 'Khá';
		// } elseif ($diem[0] >= 8) {
		// 	$xeploai = 'Giỏi';
		// }

		// dd($ketqua);
		// return view('admin.ketqua.ketqua_gv',['ketqua'=>$ketqua, 'xeploai'=>$xeploai]);

		$pdf = PDF::loadView('admin.ketqua.ketquaExportPDF', compact('ketqua'));
		$pdf->save(storage_path() . '_filename.pdf');
		return $pdf->download('ketqua.pdf');
	}

	public function ketquathihs()
	{
		$id = Auth::id();

		echo ($id);
		$ketqua = DB::table('ketqua')
			->join('hocsinh', 'hocsinh.id', 'ketqua.id_hs', 'hocsinh.id')
			->join('dethi', 'dethi.id_de', 'ketqua.id_de')
			->join('monthi', 'monthi.id_mh', 'dethi.id_mh')
			->join('kythi', 'kythi.id_ky', 'dethi.id_ky')->where('ketqua.id_hs', '=', $id)
			
			// ->get()->toArray();
			->paginate(10);

			
		// $diem = DB::table('ketqua')->pluck('diem');
		// $xeploai = '';
		// if ($diem[0] < 5) {
		// 	$xeploai = 'Yếu';
		// } elseif ($diem[0] == 5) {
		// 	$xeploai = 'Trung bình';
		// } elseif ($diem[0] == 6) {
		// 	$xeploai = 'TB Khá';
		// } elseif ($diem[0] == 7) {
		// 	$xeploai = 'Khá';
		// } elseif ($diem[0] >= 8) {
		// 	$xeploai = 'Giỏi';
		// }
		return view('admin.layout.ketquathi', ['ketqua' => $ketqua]);
	

	}
}
