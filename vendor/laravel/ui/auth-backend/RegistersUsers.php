<?php

namespace Illuminate\Foundation\Auth;

use Illuminate\Auth\Events\Registered;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Role;
use App\Models\Profile;

trait RegistersUsers
{
    use RedirectsUsers;

    /**
     * Show the application registration form.
     *
     * @return \Illuminate\View\View
     */
    public function showRegistrationForm()
    {
        return view('auth.register');
    }

    /**
     * Handle a registration request for the application.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Http\JsonResponse
     */
    public function register(Request $request)
    {
        $this->validator($request->all())->validate();

        event(new Registered($user = $this->create($request->all())));

        $this->guard()->login($user);

        if ($response = $this->registered($request, $user)) {
            return $response;
        }

        return $request->wantsJson()
                    ? new JsonResponse([], 201)
                    : redirect($this->redirectPath());
    }

    /**
     * Get the guard to be used during registration.
     *
     * @return \Illuminate\Contracts\Auth\StatefulGuard
     */
    protected function guard()
    {
        return Auth::guard();
    }

    /**
     * The user has been registered.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  mixed  $user
     * @return mixed
     */
    protected function registered(Request $request, $user)
    {
        Profile::create(['idtaikhoan' => $user->id]);

        if(empty($user->profile->hinhanhthanhvien))
        {
            // Sex == Nam
            if($user->profile->gioitinhthanhvien == 1)
            {
                $image = "adminLTE/dist/img/avatar.png";
            }
            // Sex == Nữ
            elseif($user->profile->gioitinhthanhvien == 2)
            {
                $image = "adminLTE/dist/img/avatar2.png";
            }
            // Sex == Khác
            else
            {
                $image = "adminLTE/dist/img/AdminLTELogo.png";
            }
            $info = [
                'ho' => $user->profile->hothanhvien,
                'name' => $user->profile->tenthanhvien,
                'image' => $image,
            ];
        }
        else
        {
            $info = [
                'ho' => $user->profile->hothanhvien,
                'name' => $user->profile->tenthanhvien,
                'image' => $user->profile->hinhanhthanhvien,
            ];
        }

        session()->put('info', $info);
    }
}
