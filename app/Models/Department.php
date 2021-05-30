<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Department extends Model
{
    use HasFactory;
    protected $table   = 'so';
    protected $guarded = [];

    public function company()
    {
        return $this->hasMany(Company::class, 'idso', 'id');
    }
}
