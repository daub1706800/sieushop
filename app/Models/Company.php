<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    use HasFactory;
    protected $table   = 'congty';
    protected $guarded = [];

    public function news()
    {
        return $this->hasMany(News::class, 'idcongty', 'id');
    }

    public function user()
    {
        return $this->hasMany(User::class, 'idcongty', 'id');
    }

    public function product()
    {
        return $this->hasMany(Product::class, 'idcongty', 'id');
    }

    public function procat()
    {
        return $this->hasMany(ProductCategory::class, 'idcongty', 'id');
    }

    public function storage()
    {
        return $this->hasMany(Storage::class, 'idcongty', 'id');
    }
}
