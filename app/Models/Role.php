<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    use HasFactory;
    protected $table   = 'vaitro';
    protected $guarded = [];

    public function permissions()
    {
        return $this->belongsToMany(Permission::class, 'vaitro_quyen', 'idvaitro', 'idquyen');
    }

    public function user()
    {
        return $this->belongsToMany(User::class, 'taikhoan_vaitro', 'idtaikhoan', 'idvaitro');
    }

    public function company()
    {
        return $this->belongsTo(Company::class,'idcongty', 'id');
    }

    public function user_roles($user_id)
    {
        return $this->hasMany(UserRole::class, 'idvaitro', 'id')->where('idtaikhoan', $user_id);
    }
}
