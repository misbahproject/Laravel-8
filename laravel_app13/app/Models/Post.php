<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    // protected $fillable = ['title', 'excerpt', 'body'];
    protected $guarded = ['id'];
    protected $with = ['category', 'user'];

    public function category(){
        return $this->belongsTo(Category::class);
    }

    public function user(){
        return $this->belongsTo(User::class);
    }

    public function scopeFilter($query, array $filters) {
        $query->when($filters['cari'] ?? false, function($query, $cari) {
            return $query->where('title', 'like', '%' . $cari . '%')
                ->orWhere('body', 'like', '%' . $cari . '%');
        });

        // Call Back 
        $query->when($filters['category'] ?? false, function($query, $category) {
            return $query->whereHas('category', function($query) use ($category) {
                $query->where('slug', $category); 
            });
        });

        // Ero Function
        $query->when($filters['author'] ?? false, fn($query, $author) =>
            $query->whereHas('user', fn($query) =>
                $query->where('username', $author)
            )
        );
    }
}   