<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $table   = 'sanpham';
    protected $guarded = [];

    public function field()
    {
        return $this->belongsTo(Field::class, 'idlinhvuc', 'id');
    }

    public function storage()
    {
        return $this->belongsTo(Storage::class, 'idkho', 'id');
    }

    public function productcategory()
    {
        return $this->belongsTo(ProductCategory::class, 'idloaisanpham', 'id');
    }

    public function comment()
    {
        return $this->hasMany(Comment::class, 'idsanpham', 'id');
    }

    public function stage()
    {
        return $this->hasMany(Stage::class, 'idsanpham', 'id');
    }

    public function company()
    {
        return $this->belongsTo(Company::class, 'idcongty', 'id');
    }

    public function profile()
    {
        return $this->belongsTo(Profile::class, 'idtaikhoan', 'idtaikhoan');
    }

    public function image()
    {
        return $this->hasMany(Image::class, 'idsanpham', 'id');
    }
}
