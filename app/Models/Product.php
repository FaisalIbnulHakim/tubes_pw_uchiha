<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $guarded = ['id'];
    protected $with = ['category', 'author'];

    public function scopeFilter($query, array $filters)
    {
        $query->when($filters['search'] ?? false, function ($query, $search) {
            return $query->where(function ($query) use ($search) {
                $query->where('nama_produk', 'like', '%' . $search . '%')
                    ->orWhere('brand', 'like', '%' . $search . '%');
            });
        });
        $query->when(
            $filters['author'] ?? false,
            fn ($query, $author) =>
            $query->whereHas(
                'author',
                fn ($query) =>
                $query->where('name', $author)
            )
        );
    }

    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id');
    }

    public function author()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function getRouteKeyName()
    {
        return 'nama_produk';
    }

    public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'nama_produk'
            ]
        ];
    }
}
