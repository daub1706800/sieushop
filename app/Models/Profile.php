<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Profile extends Model
{
    use HasFactory;
    protected $table   = 'thongtin';
    protected $guarded = [];

    public function user()
    {
        return $this->belongsTo(User::class, 'idtaikhoan', 'id');
    }
}
