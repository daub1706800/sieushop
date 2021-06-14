<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Advertise extends Model
{
    use HasFactory;
    protected $table = 'quangcao';
    protected $guarded = [];

    public function advertiseimage()
    {
        return $this->hasMany(AdvertiseImage::class, 'idquangcao', 'id');
    }
}
