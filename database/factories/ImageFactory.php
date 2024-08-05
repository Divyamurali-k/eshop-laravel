<?php

namespace Database\Factories;
use App\Models\Image;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Image>
 */
class ImageFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    protected $model = Image::class;

    public function definition()
    {
        $fileName=$this->faker->numberBetween(1,5).'.jpg';
        return [
            'path'=>"img/products/{$fileName}",
        ];
    }
    public function user()
    {
        $fileName=$this->faker->numberBetween(1,3).'.jpg';
        return $this->state([
            'path'=>"img/users/{$fileName}",
        ]); 
    }
}
