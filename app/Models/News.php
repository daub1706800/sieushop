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

    public function company()
    {
        return $this->belongsTo(Company::class, 'idcongty', 'id');
    }

    public function category()
    {
        return $this->belongsTo(Category::class, 'idchuyenmuc', 'id');
    }

    public function newshistory()
    {
        return $this->hasMany(NewsHistory::class, 'idtintuc', 'id');
    }
}
