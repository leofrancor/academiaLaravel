<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProfessorController;
use App\Http\Controllers\AlunoController;
use App\Http\Controllers\FichaController;

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

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

    Route::get('/aluno/listar', [AlunoController::class, 'listar']);
    Route::get('/aluno/novo', [AlunoController::class, 'novo']);
    Route::post('/aluno/salvar', [AlunoController::class, 'salvar']);
    Route::get('/aluno/editar/{id}', [AlunoController::class, 'editar']);
    Route::get('/aluno/excluir/{id}', [AlunoController::class, 'excluir']);

    Route::get('/professor/listar', [ProfessorController::class, 'listar']);
    Route::get('/professor/novo', [ProfessorController::class, 'novo']);
    Route::post('/professor/salvar', [ProfessorController::class, 'salvar']);
    Route::get('/professor/editar/{id}', [ProfessorController::class, 'editar']);
    Route::get('/professor/excluir/{id}', [ProfessorController::class, 'excluir']);

    Route::get('/ficha/listar', [FichaController::class, 'listar']);
    Route::get('/ficha/novo', [FichaController::class, 'novo']);
    Route::post('/ficha/salvar', [FichaController::class, 'salvar']);
    Route::get('/ficha/editar/{id}', [FichaController::class, 'editar']);
    Route::get('/ficha/excluir/{id}', [FichaController::class, 'excluir']);

    Route::get('/', function () {
        return view('index');
    });

});

require __DIR__.'/auth.php';
