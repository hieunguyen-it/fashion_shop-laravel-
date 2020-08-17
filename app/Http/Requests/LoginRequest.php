<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class LoginRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'email'=>'required | email',
            'password'=>'required | min:5',
        ];
    }
    public function messages()
    {
        return [
            'email.required'=>'email không được trống !',
            'email.email'=>'Tài khoản phải là email !',
            'password.required'=>' không được để trống !',
            'password.min'=>'Mật khẩu không được nhỏ hơn 5 ký tự !',
        ];
    }
}
