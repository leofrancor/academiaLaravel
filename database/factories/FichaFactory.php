<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Professor;
use App\Models\Aluno;
use App\Models\Ficha;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Ficha>
 */
class FichaFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $caminho = storage_path('app/public/imagens');
        return [
            'data' => fake()->date(),
            'objetivo' => fake()->sentence(),
            'texto' => fake()->text(),
            'aluno_id' =>
            Aluno::orderByRaw('RANDOM()')
                ->take(1)
                ->first()
                ->id,
            'professor_id' =>
            Professor::orderByRaw('RANDOM()')
              ->take(1)
              ->first()
              ->id
        ];
    }
}
