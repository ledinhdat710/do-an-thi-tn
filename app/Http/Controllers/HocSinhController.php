<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\HocSinh;
use DB;
use Excel;
use Auth;
use App\Imports\HocSinhImport;

class HocSinhController extends Controller
{
    public function __construct()
    {
        if (Auth::check()) {
            view()->share('user', Auth::user());
        }
    }

    public function dashadminn()
    {

        return view('admin.layout.dashbroad_ad');
    }
    public function geths()
    {
        $hocsinh = HocSinh::all();

        return view('admin.hocsinh.dshocsinh', ['hocsinh' => $hocsinh]);
    }

    public function getthemhs()
    {
        return view('admin.hocsinh.themhocsinh');
    }

    public function postthemhs(Request $request)
    {
        $this->validate(
            $request,
            [
                'hoten' => 'required|numeric',
                'hinhanh' => 'required|email|unique:users',
                'diachi' => 'required|password|min:32',
                'sdt' => 'required',
                'id_mh' => 'required'
            ],
            [
                'hoten.required' => 'Bạn chưa nhập họ tên',
                'hoten.numeric' => 'Tên người dùng ít nhất 3 kí tự',
                'email.required' => 'Vui lòng nhập email',
                'email.email' => 'Vui lòng nhập đúng định dạng email',
                'email.unique' => 'Email đã tồn tại vui lòng nhập emil khác!',
                'password.required' => 'Vui lòng nhập password',
                'password.password' => 'Vui lòng nhập đúng định dạng password',
                'password.min' => 'Password ít nhất 32 ký tự',

            ]
        );
        //sau khi bắt lỗi xong, lấy dlieu lưu vào trong model
        $user = new User;
        $user->name = $request->tenuser;
        $user->email = $request->email;
        $user->password = hash::make($request->password);
        $user->doituong = $request->doituong;
        $user->save();
        //dẫn về trang 
        return redirect()->back()->with('thongbao', 'Thêm thành công!');
    }
    public function imporths()
    {
        return view('admin.hocsinh.import');
    }
    public function import()
    {
        Excel::import(new HocSinhImport(), request()->file('file'));

        return redirect('admin/hocsinh/dshocsinh');
    }
}
