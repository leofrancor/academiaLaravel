@extends('template')

@section('conteudo')
<h1>Cadastro de Professor</h1>

@if($professor->foto != "")
    <img style="width:150px;height:150px;object-fit:cover;border-radius:20px;border:1px solid gray;padding: 0.25rem" src="/storage/imagens/{{$professor->foto}}">
  @endif

<form action="{{url('professor/salvar')}}" method="post" enctype="multipart/form-data">
    @csrf
  <div class="mb-3">
      <label for="id" class="form-label">ID</label>
      <input readonly type="text" class="form-control" id="id" value="{{$professor->id}}" name="id">
  </div>
  <div class="mb-3">
      <label for="nome" class="form-label">Nome</label>
      <input type="text" required class="form-control" id="nome" value="{{$professor->nome}}" name="nome">
  </div>
  <div class="mb-3">
      <label for="email" class="form-label">E-mail</label>
      <input type="email" class="form-control" id="email" value="{{$professor->email}}" name="email">
  </div>
  <div class="mb-3">
      <label for="arquivo" class="form-label">Foto</label>
      <input class="form-control" type="file" name="arquivo" accept="image/*">
    </div>

  <button class="btn btn-primary" type="submit" name="button">Salvar</button>
</form>
@endsection