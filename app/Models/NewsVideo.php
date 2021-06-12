<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class NewsVideo extends Model
{
    use HasFactory;
    protected $table = 'videotintuc';
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
        return $this->hasMany(NewsHistory::class, 'idvideotintuc', 'id');
    }

    public function newslog()
    {
        return $this->hasMany(NewsLog::class, 'idvideotintuc', 'id');
    }
}
