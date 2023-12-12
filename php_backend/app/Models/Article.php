<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Source;
use App\Models\Category;

class Article extends Model
{
    use HasFactory;

    protected $fillable = ['title', 'body', 'category_id', 'source_id', 'urlToImage', 'url', 'author'];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function source()
    {
        return $this->belongsTo(Source::class);
    }
}
