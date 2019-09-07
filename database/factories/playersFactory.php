<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Jugador;
use Faker\Generator as Faker;

$factory->define(Jugador::class, function (Faker $faker) {
    return [
        'Nombre' => $faker->name('male'),
        'Instagram' => $faker->word,
        'Email' => $faker->email,
        'Puesto' => $faker->unique()->numberBetween(1,100),
        'Telefono' => $faker->phoneNumber(),
        'Cumple' => $faker->date(),
        'Avatar' => 'http://lorempixel.com/400/400/sports/' . $faker->numberBetween(1,10)
    ];
});
