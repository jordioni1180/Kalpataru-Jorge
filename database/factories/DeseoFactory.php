<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class DeseoFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'nombre' => $this->faker->name(),
            'texto' => $this->faker->text(),
            'user_id'=>$this->faker->NumberBetween(0,40), 
        ];
    }
}
