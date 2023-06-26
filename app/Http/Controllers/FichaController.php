<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Ficha;
use App\Models\Professor;
use App\Models\Aluno;

class FichaController extends Controller
{
    function listar() {
        $fichas = Ficha::orderBy('id')->get();
        return view('listagemFicha',
         compact('fichas'));
      }
 
      function novo() {
        $ficha = new Ficha;
        $ficha->id = 0;
        $ficha->data = now();
        $professores = Professor::orderBy('nome')->get();
        $alunos = Aluno::orderBy('nome')->get();
  
        return view('frmFicha', compact('ficha', 'professores', 'alunos'));
      }
 
      function salvar(Request $request) {
        if ($request->input('id') == 0) {
          $ficha = new Ficha();
        } else {
          $ficha = Ficha::find($request->input('id'));
        }

        $ficha->data = $request->input('data');
        $ficha->texto = $request->input('texto');
        $ficha->objetivo = $request->input('objetivo');
        $ficha->professor_id = $request->input('professor_id');
        $ficha->aluno_id = $request->input('aluno_id');
        $ficha->save();
        return redirect('ficha/listar');
      }
 
      function editar($id) {
        $ficha = Ficha::find($id);
        $alunos = Aluno::orderBy('nome')->get();
        $professores = Professor::orderBy('nome')->get();
  
        return view('frmFicha', compact('ficha', 'professores', 'alunos'));
      }
 
      function excluir($id) {
        $ficha = Ficha::find($id);
        $ficha->delete();
        return redirect('ficha/listar');
      }
}
