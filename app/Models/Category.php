<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
    protected $table   = 'chuyenmuc';
    protected $guarded = [];

    public function field()
    {
        return $this->belongsTo(Field::class,'idlinhvuc','id');
    }

    public function news()
    {
        return $this->hasMany(News::class, 'idchuyenmuc', 'id');
    }
}
