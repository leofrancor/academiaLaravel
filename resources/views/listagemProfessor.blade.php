@extends('template')

@section('conteudo')
<h1>Listagem de Professores</h1>
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
      @foreach ($professores as $professor)
          <tr>
            <td>{{$professor->id}}</td>
            <td>{{$professor->nome}}</td>
            <td>{{$professor->email}}</td>
            <td><a class='btn btn-primary' href='editar/{{$professor->id}}'>+</a></td>
            <td><a class='btn btn-danger' href='excluir/{{$professor->id}}'>-</a></td>
          </tr>
          @endforeach
  </tbody>
</table>
@endsection
