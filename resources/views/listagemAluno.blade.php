@extends('template')

@section('conteudo')
<h1>Listagem de Alunos</h1>
<a class="btn btn-primary mb-2" href="novo">Novo</a>
<table class="table table-striped table-hover table-bordered">
  <thead>
    <tr>
      <th>ID</th>
      <th>Nome</th>
      <th>E-mail</th>
      <th>Editar</th>
      <th>Excluir</th>
    </tr>
  </thead>
  <tbody>

      @foreach ($alunos as $aluno) 
          <tr>
            <td>{{$aluno->id}}</td>
            <td>{{$aluno->nome}}</td>
            <td>{{$aluno->email}}</td>
            <td><a class='btn btn-primary' href='editar/{{$aluno->id}}'>+</a></td>
            <td><a class='btn btn-danger' href='excluir/{{$aluno->id}}'>-</a></td>
          </tr>
      @endforeach
  </tbody>
</table>
@endsection