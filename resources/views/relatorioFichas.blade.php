<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name=viewport content="width=device-width, initial-scale=1">
    <title></title>
    <style>
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: sans-serif;
      }
      body {
        width: 80%;
        margin: auto;
      }
      table {
        width: 100%;
        border-collapse: collapse;
      }
      th,td {
        border: 1px solid black;
        padding: 0.5rem;
        text-align: center;
      }
    </style>
  </head>
  <body>
  <h1>Listagem de Fichas</h1>
<table>
  <thead>
    <tr>
      <th>ID</th>
      <th>Aluno</th>
      <th>Professor</th>
      <th>Objetivo</th>
      <th>Texto</th>
      <th>Data</th>
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
          </tr>
      @endforeach
  </tbody>
</table>

  </body>
</html>
