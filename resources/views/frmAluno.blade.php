@extends('template')

@section('conteudo')
<h1>Cadastro de Aluno</h1>
<form action="{{url('aluno/salvar')}}" method="post">
    @csrf
  <div class="mb-3">
      <label for="id" class="form-label">ID</label>
      <input readonly type="text" class="form-control" id="id" value="{{$aluno->id}}" name="id">
  </div>
  <div class="mb-3">
      <label for="nome" class="form-label">Nome</label>
      <input type="text" required class="form-control" id="nome" value="{{$aluno->nome}}" name="nome">
  </div>
  <div class="mb-3">
      <label for="email" class="form-label">E-mail</label>
      <input type="text" class="form-control" id="email" value="{{$aluno->email}}" name="email">
  </div>

  <button class="btn btn-primary" type="submit" name="button">Salvar</button>
</form>
@endsection