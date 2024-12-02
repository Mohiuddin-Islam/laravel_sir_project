<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use App\Models\Appointment;
use App\Models\Doctor;
use Illuminate\Http\Request;

class AppointmentController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $items = Appointment::orderBy('id', 'desc')->get();
        return view('backend.appointment.index', compact('items'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $doctors = Doctor::all();
        return view('backend.appointment.create',compact('doctors'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name'=> 'required',
            'email'=> 'required',
            'phone'=> 'required',
            'date'=> 'required',
            'doctor'=> 'required',
            'remarks'=> 'max:255 | min:10',

        ]);
        $app = new Appointment();
        $app->name = $request->name;
        $app->email = $request->email;
        $app->phone = $request->phone;
        $app->date = $request->date;
        $app->doctor_id = $request->doctor;
        $app->remarks = $request->remarks;

        $app->save();
        return redirect()->route('appointment.index')->with('msg',"Successfully Appointment Done");
    }

    /**
     * Display the specified resource.
     */
    public function show(Appointment $appointment)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Appointment $appointment)
    {
        // $doctors = Doctor::all();
        // return view('backend.appointment.edit',compact('doctor','doctors'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Appointment $appointment)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Appointment $appointment)
    {
        $appointment->delete();

        return redirect()->route('appointment.index')->with('msg','Deleted Successfully');
    }


    public function changeStatus($id)
    {
        $record = Appointment::find($id);
        $record->status =='pending' ? $record->status ='confirm': $record->status ='pending';
        
        $record->update();
        return redirect()->back();
    
    }
}
