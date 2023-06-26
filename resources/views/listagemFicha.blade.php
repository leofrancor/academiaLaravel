@extends('template')

@section('conteudo')
<h1>Listagem de Fichas</h1>
<a class="btn btn-primary mb-2" href="novo">Novo</a>
<table class="table table-striped table-hover table-bordered">
  <thead>
    <tr>
      <th>ID</th>
      <th>Aluno</th>
      <th>Professor</th>
      <th>Objetivo</th>
      <th>Texto</th>
      <th>Data</th>
      <th>Editar</th>
      <th>Excluir</th>
    </tr>
  </thead>
  <tbody>
      @foreach ($fichas as $ficha)
          <tr>
            <td>{{$ficha->id}}</td>
            <td>{{$ficha->aluno->nome}}</td>
            <td>{{$ficha->professor->nome}}</td>
            <td>{{$ficha->objetivo}}</td>
            <td>{{$ficha->texto}}</td>
            <td>{{$ficha->data->format('d/m/Y')}}</td>
            <td><a class='btn btn-primary' href='editar/{{$ficha->id}}'>+</a></td>
            <td><a class='btn btn-danger' href='excluir/{{$ficha->id}}'>-</a></td>
          </tr>
      @endforeach
  </tbody>
</table>
@endsection
