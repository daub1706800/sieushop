<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Company extends Model
{
    use HasFactory;
    protected $table   = 'congty';
    protected $guarded = [];

    public static function getTenant()
    {
        $url = request()->getHttpHost();

        $url_array = explode('.', $url);

        $subdomain = $url_array[0];

        if ($subdomain == "www") {
            $subdomain = $url_array[1];
        }

        $tenant = Company::where('subdomain', $subdomain)->first();

        if (!$tenant) {
            return view('frontend.home');
        }

        dd("Tìm thấy người thuê");
    }

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

    public function department()
    {
        return $this->belongsTo(Department::class, 'idso', 'id');
    }

    public function field()
    {
        return $this->belongsTo(Field::class, 'idlinhvuc', 'id');
    }
}
