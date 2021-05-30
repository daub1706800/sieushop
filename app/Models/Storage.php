<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Storage extends Model
{
    use HasFactory;
    protected $table = 'kho';
    protected $guarded = [];

    public function product()
    {
        return $this->hasMany(Product::class, 'idkho', 'id');
    }
}
