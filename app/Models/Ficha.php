<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use App\Models\Aluno;
use App\Models\Professor;

class Ficha extends Model
{
    use HasFactory;

    protected $table="ficha";
    public $timestamps = false;
    protected $casts = [
        'data' => 'date:Y-m-d',
    ];

    public function aluno(): BelongsTo
    {
        return $this->belongsTo(Aluno::class);
    }

    public function professor(): BelongsTo
    {
        return $this->belongsTo(Professor::class);
    }
}
