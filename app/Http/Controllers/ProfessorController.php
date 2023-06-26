<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Professor;

class ProfessorController extends Controller
{
    function listar() {
      $professores = Professor::orderBy('nome')->get();
        return view("listagemProfessor",
          compact('professores'));
      }
  
      function novo() {
        $professor = new Professor;
        $professor->id = 0;
        return view('frmProfessor',
          compact('professor'));
      }
  
      function salvar(Request $request) {
        if ($request->input('id') == 0) {
          $professor = new Professor();
        } else {
          $professor = Professor::find($request->input('id'));
        }

        $professor->nome = $request->input('nome');
        $professor->email = $request->input('email');
        $professor->save();

        return redirect('professor/listar');

      }
  
      function editar($id) {
        $professor = Professor::find($id);
        return view('frmProfessor',
           compact('professor'));
      }
  
      function excluir($id) {
        $professor = Professor::find($id);
        $professor->delete();
        return redirect('professor/listar');
      }
}
