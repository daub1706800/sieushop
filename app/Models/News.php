<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    use HasFactory;
    protected $table   = 'tintuc';
    protected $guarded = [];

    public function profile()
    {
        return $this->belongsTo(Profile::class, 'idtaikhoan', 'idtaikhoan');
    }
}
