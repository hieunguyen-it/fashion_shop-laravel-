<?php

namespace App\Http\Controllers\frontend;
use App\Http\Requests\LoginRequest;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\models\members;
class MainController extends Controller
{
    public function GetLoginMember()
    {
        return view ('frontend.login.login');
    }

    public function PostLoginMember(LoginRequest $request)
    {
        if(Auth::attempt(['email' => $request->email, 'password' => $request->password]))
        {
            return redirect('');
        }
        else {
            return redirect('login')->withInput()->with('thongbao','Tài khoản khoặc mật khẩu không chính xác!');
        }
    }
}