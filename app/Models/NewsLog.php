<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class NewsLog extends Model
{
    use HasFactory;
    protected $table = 'logtintuc';
    protected $guarded = [];

    public function profile()
    {
        return $this->belongsTo(Profile::class, 'idtaikhoan', 'idtaikhoan');
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'idtaikhoan', 'id');
    }
}
