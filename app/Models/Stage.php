<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Stage extends Model
{
    use HasFactory;
    protected $table   = 'giaidoan';
    protected $guarded = [];

    public function stageInfo()
    {
        return $this->hasMany(StageInfo::class, 'idgiaidoan', 'id');
    }

    public function product()
    {
        return $this->belongsTo(Product::class, 'idsanpham', 'id');
    }
}
