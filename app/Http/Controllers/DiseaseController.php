<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Diseases;
use Illuminate\Support\Facades\DB;

class DiseaseController extends Controller
{
    public function index()
    {
        $diseases = Diseases::get();
        return response()->json($diseases);
    }

    public function store(Request $request)
    {
        $fields = $request->validate([
            'disease' => 'required|string|unique:diseases,disease',
            'overview' => 'required|string',
            'causes' => 'required|string',
            'treatment' => 'required|string',
            'prevention' => 'required|string',
            'image' => 'required|string'
        ]);

        $diseases = Diseases::create([
            'disease' => $fields['disease'],
            'overview' => $fields['overview'],
            'causes' => $fields['causes'],
            'treatment' => $fields['treatment'],
            'prevention' => $fields['prevention'],
            'url' => $fields['image']
        ]);

        $response = [
            'diseases' => $diseases
        ];

        return response($response, 201);
    }

    public function show($id)
    {
        return Diseases::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        $fields = $request->validate([
            'disease' => 'required|string|unique:diseases,disease',
            'overview' => 'required|string',
            'causes' => 'required|string',
            'treatment' => 'required|string',
            'prevention' => 'required|string',
        ]);
        $diseases = Diseases::findOrFail($id);
        $diseases->update($request->all());
        return $diseases;
    }

    public function destroy($id)
    {
        return Diseases::destroy($id);
    }
}
