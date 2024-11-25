<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use App\Models\Doctor;
use App\Models\Specialist;
use Illuminate\Http\Request;

class DoctorController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $items = Doctor::orderBy('id', 'desc')->get();
        return view('backend.doctor.index', compact('items'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $specialist = Specialist::all();
        return view('backend.doctor.create',compact('specialist'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate(
            [ 'name'=>'required | max:100',
            'specialist'=>'required',
            'email'=>'required | max:50',
            'password'=>'required | min:8 | confirmed',
            'photo'=>'max:2048',
            'status'=>'required',
                    
        
                ],
        );

        $doctor = new Doctor;

        $doctor->name = $request->name;
        $doctor->specialist_id = $request->specialist;
        $doctor->email = $request->email;
        $doctor->password = bcrypt($request->password);
        $doctor->photo = $request->photo;
        $doctor->status = $request->status;
        $doctor->save();
        return redirect()->route('doctor.index')->with('msg', "Successfully Doctor Create");
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
