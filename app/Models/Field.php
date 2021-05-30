<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Field extends Model
{
    use HasFactory;
    protected $table   = 'linhvuc';
    protected $guarded = [];

    public function category()
    {
        return $this->hasMany(Category::class, 'idlinhvuc', 'id');
    }

    public function company()
    {
        return $this->hasMany(Company::class, 'idlinhvuc', 'id');
    }

    public function product()
    {
        return $this->hasMany(Product::class, 'idlinhvuc', 'id');
    }
}
