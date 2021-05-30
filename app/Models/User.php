<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable implements MustVerifyEmail
{
    use HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'idcongty',
        'email',
        'password',
        'loaitaikhoan',
        'trangthai',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function profile()
    {
        return $this->hasOne(Profile::class, 'idtaikhoan', 'id');
    }

    public function company()
    {
        return $this->belongsTo(Company::class,'idcongty', 'id');
    }

    public function roles()
    {
        return $this->belongsToMany(Role::class, 'taikhoan_vaitro', 'idtaikhoan', 'idvaitro');
    }

    public function storage()
    {
        return $this->hasMany(Storage::class, 'idtaikhoan', 'id');
    }

    public function stage()
    {
        return $this->hasMany(Stage::class, 'idtaikhoan', 'id');
    }

    public function product()
    {
        return $this->hasMany(Product::class, 'idtaikhoan', 'id');
    }

    public function news()
    {
        return $this->hasMany(News::class, 'idtaikhoan', 'id');
    }

    public function checkPermission($permissionCheck)
    {
        // Lấy tất cả vai trò của user
        $roles = auth()->user()->roles;

        foreach($roles as $role)
        {
            // Lấy tất cả các quyền từng vai trò của user
            $permissions = $role->permissions;

            if($permissions->contains('tenquyen', $permissionCheck))
            {
                return true;
            }
        }
        return false;
    }
}
