<?php

use App\Http\Controllers\backend\AppointmentController as BackendAppointmentController;
use App\Http\Controllers\backend\DepartmentController;
use App\Http\Controllers\backend\DoctorController;
use App\Http\Controllers\backend\SpecialistController;
use App\Http\Controllers\frontend\AppointmentController;
use App\Http\Controllers\frontend\HomeController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;



// Route::get('/', function () {
//     return view('frontend.home');
// });

Route::get('/', [HomeController::class,'index'])->name('home');
Route::view('/about', 'frontend.about')->name('about');

//Frontend Side Appointment

Route::get('/appointment', [AppointmentController::class,'create'])->name('front_app.create');
Route::post('/appointment', [AppointmentController::class,'store'])->name('front_app.store');

//Admin Dashboard

Route::get('/admin/dashboard', function () {
    return view('backend.admin_dashboard');
})->middleware(['auth:admin'])->name('admin_dashboard');

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';

//Admin Login:Logout

Route::middleware('guest:admin')->prefix('admin')->group( function () {

    Route::get('login', [App\Http\Controllers\Auth\Admin\LoginController::class, 'login'])->name('admin.login');
    Route::post('login', [App\Http\Controllers\Auth\Admin\LoginController::class, 'check_user']);


});

Route::middleware('auth:admin')->prefix('admin')->group( function () {

    Route::post('logout', [App\Http\Controllers\Auth\Admin\LoginController::class, 'logout'])->name('admin.logout');

    Route::view('/admin/dashboard','backend.admin_dashboard');
    Route::resource('/specialist', SpecialistController::class);
    Route::resource('/doctor', DoctorController::class);
    Route::resource('/appointment',BackendAppointmentController::class);
    Route::get('/appointment/status/{id}',[BackendAppointmentController::class,'changeStatus'])->name('changeStatus');
    Route::resource('/department', DepartmentController::class);


});

//Doctor Route

Route::middleware('guest:doctor')->prefix('doctor')->group( function () {

    Route::get('login', [App\Http\Controllers\Auth\Doctor\LoginController::class, 'login'])->name('doctor.login');
    Route::post('login', [App\Http\Controllers\Auth\Doctor\LoginController::class, 'check_user']);


});

Route::middleware('auth:doctor')->prefix('doctor')->group( function () {

    Route::post('logout', [App\Http\Controllers\Auth\Doctor\LoginController::class, 'logout'])->name('doctor.logout');

    Route::view('/dashboard','backend.doctor_dashboard');
    
});