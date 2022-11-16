<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Clinics;
use Illuminate\Support\Facades\DB;

class ClinicsController extends Controller
{
    public function index()
    {
        $clinics = Clinics::get();
        return response()->json($clinics);
    }

    public function store(Request $request)
    {
        $fields = $request->validate([
            'clinic_name' => 'required|string',
            'clinic_address' => 'required|string',
            'clinic_mobile' => 'required|string',
            'clinic_landline' => 'required|string',
            'clinic_email' => 'required|string',
            'image' => 'required|string'
        ]);

        $clinics = Clinics::create([
            'clinic_name' => $fields['clinic_name'],
            'clinic_address' => $fields['clinic_address'],
            'clinic_mobile' => $fields['clinic_mobile'],
            'clinic_landline' => $fields['clinic_landline'],
            'clinic_email' => $fields['clinic_email'],
            'url' => $fields['image']
        ]);

        $response = [
            'clinics' => $clinics
        ];

        return response($response, 201);
    }

    public function show($id)
    {
        return Clinics::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        $fields = $request->validate([
            'clinic_name' => 'required|string',
            'clinic_address' => 'required|string',
            'clinic_mobile' => 'required|string',
            'clinic_landline' => 'required|string',
            'clinic_email' => 'required|string',
        ]);
        $clinics = Clinics::findOrFail($id);
        $clinics->update($request->all());
        return $clinics;
    }

    public function destroy($id)
    {
        return Clinics::destroy($id);
    }
}
