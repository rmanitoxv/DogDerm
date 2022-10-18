<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Clinics extends Model
{
    use HasFactory;
    protected $fillable = [
        'clinic_name',
        'clinic_address',
        'clinic_mobile',
        'clinic_landline',
        'clinic_email'
    ];

    public function clinics_image()
    {
        return $this->hasOne(ClinicsImage::class);
    }
}
