@extends('template')

@section('conteudo')
<h1>Listagem de Professores</h1>
<a class="btn btn-primary mb-2" href="novo">Novo</a>
<table class="table table-striped table-hover table-bordered">
  <thead>
    <tr>
      <th>ID</th>
      <th>Nome</th>
      <th>Foto</th>
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
            <td align="center">
            @if($professor->foto != "")
              <img style="width:150px;height:150px;object-fit:cover" src="/storage/imagens/{{$professor->foto}}">
            @endif
            </td>
            <td>{{$professor->email}}</td>
            <td><a class='btn btn-primary' href='editar/{{$professor->id}}'>+</a></td>
            <td><a class='btn btn-danger' onclick="return  confirm('As fichas desse professor também serão excluídas. Deseja prosseguir?')" href='excluir/{{$professor->id}}'>-</a></td>
          </tr>
          @endforeach
  </tbody>
</table>
{{ $professores->links() }}
@endsection
