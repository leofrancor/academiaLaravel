<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Aluno;

class AlunoController extends Controller
{
    function listar() {

        $alunos = Aluno::orderBy('nome')->get();
        return view('listagemAluno',
          compact('alunos')
          );
      }
  
      function novo() {
        $aluno = new Aluno;
        $aluno->id = 0;
        return view("frmAluno",
          compact('aluno')
        );
      }
  
      function salvar(Request $request) {
        if ($request->input('id') == 0) {
          $aluno = new Aluno();
        } else {
          $aluno = Aluno::find($request->input('id'));
        }

        $aluno->nome = $request->input('nome');
        $aluno->email =  $request->input('email');
        $aluno->save();

        return redirect('aluno/listar');
      }
  
      function editar($id) {
        $aluno = Aluno::find($id);
        return view("frmAluno",
          compact('aluno')
        );
      }
  
      function excluir($id) {
        $aluno = Aluno::find($id);
        $aluno->delete();
        return redirect("aluno/listar");
      }
}
