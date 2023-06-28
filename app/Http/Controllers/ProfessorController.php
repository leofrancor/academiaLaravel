<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Professor;
use Illuminate\Support\Facades\Storage;
use Illuminate\View\View;

class ProfessorController extends Controller
{
    function listar(): View {
      $professores = Professor::orderBy('nome')->paginate(3);
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

        if ($request->hasFile('arquivo')) {
          $arquivo = $request->file('arquivo');
          $arquivoSalvo = $arquivo->store('public/imagens');
          $arquivoSalvo = explode("/", $arquivoSalvo);
          $tamanho = count($arquivoSalvo);
          if ($professor->figura != "") {
            Storage::delete("public/imagens/$professor->foto");
          }
          $professor->foto = $arquivoSalvo[$tamanho-1];
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
