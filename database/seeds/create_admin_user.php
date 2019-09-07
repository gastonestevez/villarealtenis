<?php

use Illuminate\Database\Seeder;

class create_admin_user extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            "name" => 'admin',
            "password" => bcrypt('Ema2019'),
            "email" => 'admin@villarealtenis.com',
            "isAdmin" => true,
        ]);

    }
}
