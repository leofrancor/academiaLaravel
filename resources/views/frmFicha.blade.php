@extends('template')

@section('conteudo')
@if ($errors->any())
    <div class="alert alert-danger">
      <ul>
        @foreach($errors->all() as $error)
          <li>{{$error}}</li>
        @endforeach
      </ul>
    </div>
  @endif
<h1>Cadastro de Ficha</h1>
<form action="{{url('ficha/salvar')}}" method="post">
  @csrf
  <div class="mb-3">
      <label for="id" class="form-label">ID</label>
      <input readonly type="text" class="form-control" id="id" value="{{$ficha->id}}" name="id">
  </div>
  <div class="mb-3">
      <label for="aluno" class="form-label">Aluno</label>
      <select class="form-select @error('aluno_id') is-invalid @enderror" required name="aluno_id" id="aluno_id">
          @foreach ($alunos as $aluno)
          <option {{$aluno->id==old('aluno_id',$ficha->aluno_id)? 'selected':''}} value="{{$aluno->id}}">{{$aluno->nome}}</option>
            @endforeach
      </select>
      @error('aluno_id')
          <div class="alert alert-danger">{{ $message }}</div>
      @enderror
  </div>
  <div class="mb-3">
      <label for="professor" class="form-label">Professor</label>
      <select class="form-select @error('professor_id') is-invalid @enderror" required name="professor_id" id="professor_id">
      @foreach ($professores as $professor)
      <option {{$professor->id==old('professor_id', $ficha->professor_id)? 'selected':''}} value="{{$professor->id}}">{{$professor->nome}}</option>
            @endforeach
      </select>
      @error('professor_id')
          <div class="alert alert-danger">{{ $message }}</div>
      @enderror
  </div>
  <div class="mb-3">
      <label for="objetivo" class="form-label">Objetivo</label>
      <input type="text" required class="form-control" id="objetivo" value="{{$ficha->objetivo}}" name="objetivo">
  </div>

  <div class="mb-3">
      <label for="texto" class="form-label">Texto</label>
      <textarea class="form-control" id="texto" required name="texto">{{$ficha->texto}}</textarea>
  </div>

  <div class="mb-3">
      <label for="data" class="form-label">Data</label>
      <input type="date" required class="form-control" id="data" value="{{$ficha->data->format('Y-m-d')}}" name="data">
  </div>

  <button class="btn btn-primary" type="submit" name="button">Salvar</button>
</form>
@endsection
