<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        for ($i=0; $i < 50; $i++) { 
            \App\Models\User::factory()->create();
        }

        for ($i=0; $i <40 ; $i++) { 
            \App\Models\Deseo::factory()->create();
        }
        
    }
}
