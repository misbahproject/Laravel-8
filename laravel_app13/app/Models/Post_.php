<?php

namespace App\Models; 

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post
{
    private static $blog_posts = [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "author" => "M.Misbahul Munir",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate facilis iure dolores reiciendis, omnis eaque deserunt in sed dicta velit quod provident illo? Inventore, blanditiis! Esse quasi sint dignissimos cumque magnam sunt ea vel laboriosam qui delectus! Earum perferendis quia et, magni laboriosam nesciunt tempore dolorem quasi dicta aspernatur voluptates natus voluptatem quis. Quo consectetur illum consequatur dolorem voluptatibus cumque ipsa repellat magnam, praesentium accusamus facilis! Ea corrupti tempora tempore labore incidunt veritatis cupiditate natus. Perspiciatis earum deleniti animi iure!"
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Moh.Su'aidi",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate facilis iure dolores reiciendis, omnis eaque deserunt in sed dicta velit quod provident illo? Inventore, blanditiis! Esse quasi sint dignissimos cumque magnam sunt ea vel laboriosam qui delectus! Earum perferendis quia et, magni laboriosam nesciunt tempore dolorem quasi dicta aspernatur voluptates natus voluptatem quis. Quo consectetur illum consequatur dolorem voluptatibus cumque ipsa repellat magnam, praesentium accusamus facilis! Ea corrupti tempora tempore labore incidunt veritatis cupiditate natus. Perspiciatis earum deleniti animi iure!"
        ]
    
        ];

        public static function all() {
            return collect(self::$blog_posts);
        }

        public static function find($slug) {
            $posts = static::all();

            return $posts->firstWhere('slug', $slug);
        }
}
