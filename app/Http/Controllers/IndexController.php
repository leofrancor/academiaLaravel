<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class IndexController extends Controller
{
    function index() {
      echo "cheguei aqui";
        $dados = array();
        $this->view("index", $dados);
      }
}
