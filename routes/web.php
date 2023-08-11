<?php

use App\Http\Controllers\AdminController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [App\Http\Controllers\HomeController::class, 'home'])->name('home');



Auth::routes(['register'=>false]);
Route::get('user/login', 'HomeController@login')->name('login.form');
Route::post('user/login', 'HomeController@loginSubmit')->name('login.submit');
Route::get('user/logout', 'HomeController@logout')->name('user.logout');

Route::get('user/register', 'HomeController@register')->name('register.form');
Route::post('user/register', 'HomeController@registerSubmit')->name('register.submit');
// Reset password
Route::post('password-reset', 'HomeController@showResetForm')->name('password.reset');
// Socialite
Route::get('login/{provider}/', 'Auth\LoginController@redirect')->name('login.redirect');
Route::get('login/{provider}/callback/', 'Auth\LoginController@Callback')->name('login.callback');

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index']);


//Admin dashboard
Route::group(['prefix'=>'admin/','middleware'=>'auth'],function(){
    Route::get('/',[App\Http\Controllers\AdminController::class, 'admin'])->name('admin');
//medicamentos
    Route::resource('/medicamento', App\Http\Controllers\MedicamentosController::class);
    Route::resource('/users', App\Http\Controllers\UsersController::class);
    Route::resource('/pedidos', App\Http\Controllers\PedidoController::class);
    Route::resource('/ventas', App\Http\Controllers\VentaController::class);
    Route::resource('/facturas', App\Http\Controllers\SistemaFactura::class);
    Route::get('/medicamentos',[App\Http\Controllers\MedicamentosController::class, 'list']); // Obtener los medicamentos
    Route::post('/registrar-compra',[App\Http\Controllers\MedicamentosController::class, 'confirmarCompra']);




});


