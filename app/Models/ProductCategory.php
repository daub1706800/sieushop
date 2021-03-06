<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductCategory extends Model
{
    use HasFactory;
    protected $table   = 'loaisanpham';
    protected $guarded = [];

    public function product()
    {
        return $this->hasMany(Product::class, 'idloaisanpham', 'id');
    }

    public function company()
    {
        return $this->belongsTo(Company::class, 'idcongty', 'id');
    }
}
