<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Diseases extends Model
{
    use HasFactory;
    protected $fillable = [
        'disease',
        'overview',
        'causes',
        'treatment',
        'prevention'
    ];

    public function diseases_image()
    {
        return $this->hasOne(DiseasesImage::class);
    }
}
