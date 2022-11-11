<?php

namespace Database\Seeders;
              
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        
        // User::create([
            //     'name' => 'M.Misbahul Munir',
            //     'email' => 'mprojectdesign0@gmail.com',
            //     'password' => bcrypt('123456')
            // ]);
            
            // User::create([
                //     'name' => 'Mas Conan',
                //     'email' => 'masconan@gmail.com',
                //     'password' => bcrypt('123456')
                // ]);
        User::factory(3)->create();
                
        Category::create([
            'name' => 'Graphic Design',
            'slug' => 'graphic-design',
        ]);

        Category::create([
            'name' => 'Compas',
            'slug' => 'compas',
        ]);

        Category::create([
            'name' => 'World City',
            'slug' => 'world-city',
        ]);

        Post::factory(20)->create();
        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.',
        //     'body' => 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Suscipit, repellendus veniam temporibus quaerat unde voluptatem velit assumenda accusantium, ducimus nesciunt animi perferendis amet aut! Voluptatum voluptatibus, placeat quisquam amet dicta fugiat ad unde minus aliquid nihil dolores reiciendis rem impedit repudiandae, pariatur labore illo. Quidem, atque aperiam. Autem alias velit, consectetur dolore ut ducimus exercitationem assumenda doloribus minima! Perferendis, magnam suscipit, consequatur recusandae laborum vitae accusamus et provident earum, porro quibusdam nam ad quae eum laudantium eos quasi iusto at quisquam doloremque nobis. Deserunt asperiores nesciunt, sit suscipit molestias saepe doloribus illo placeat repellat hic itaque est! Soluta, eveniet porro.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Kedua',
        //     'slug' => 'judul-ke-dua',
        //     'excerpt' => 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.',
        //     'body' => 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Suscipit, repellendus veniam temporibus quaerat unde voluptatem velit assumenda accusantium, ducimus nesciunt animi perferendis amet aut! Voluptatum voluptatibus, placeat quisquam amet dicta fugiat ad unde minus aliquid nihil dolores reiciendis rem impedit repudiandae, pariatur labore illo. Quidem, atque aperiam. Autem alias velit, consectetur dolore ut ducimus exercitationem assumenda doloribus minima! Perferendis, magnam suscipit, consequatur recusandae laborum vitae accusamus et provident earum, porro quibusdam nam ad quae eum laudantium eos quasi iusto at quisquam doloremque nobis. Deserunt asperiores nesciunt, sit suscipit molestias saepe doloribus illo placeat repellat hic itaque est! Soluta, eveniet porro.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ketiga',
        //     'slug' => 'judul-ke-tiga',
        //     'excerpt' => 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.',
        //     'body' => 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Suscipit, repellendus veniam temporibus quaerat unde voluptatem velit assumenda accusantium, ducimus nesciunt animi perferendis amet aut! Voluptatum voluptatibus, placeat quisquam amet dicta fugiat ad unde minus aliquid nihil dolores reiciendis rem impedit repudiandae, pariatur labore illo. Quidem, atque aperiam. Autem alias velit, consectetur dolore ut ducimus exercitationem assumenda doloribus minima! Perferendis, magnam suscipit, consequatur recusandae laborum vitae accusamus et provident earum, porro quibusdam nam ad quae eum laudantium eos quasi iusto at quisquam doloremque nobis. Deserunt asperiores nesciunt, sit suscipit molestias saepe doloribus illo placeat repellat hic itaque est! Soluta, eveniet porro.',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Keempat',
        //     'slug' => 'judul-ke-empat',
        //     'excerpt' => 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.',
        //     'body' => 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Suscipit, repellendus veniam temporibus quaerat unde voluptatem velit assumenda accusantium, ducimus nesciunt animi perferendis amet aut! Voluptatum voluptatibus, placeat quisquam amet dicta fugiat ad unde minus aliquid nihil dolores reiciendis rem impedit repudiandae, pariatur labore illo. Quidem, atque aperiam. Autem alias velit, consectetur dolore ut ducimus exercitationem assumenda doloribus minima! Perferendis, magnam suscipit, consequatur recusandae laborum vitae accusamus et provident earum, porro quibusdam nam ad quae eum laudantium eos quasi iusto at quisquam doloremque nobis. Deserunt asperiores nesciunt, sit suscipit molestias saepe doloribus illo placeat repellat hic itaque est! Soluta, eveniet porro.',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);

        
    }
}