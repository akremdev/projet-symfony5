<?php

namespace App\DataFixtures;

use App\Entity\Comment;
use App\Entity\Article;
use App\Entity\Category;
use DateTime;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Faker\Factory;

class ArticleFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {
        $faker = Factory::create();
         
         for($i=1; $i <5; $i++) {
            $category = new Category();
            $category->setTitle("section $i");
            $category->setDescription("section description $i");
            $manager->persist($category);

            for($j=1; $j <=2; $j++) {
                $article = new Article();
                $article->setTitle("title $j")
                        ->setContent("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus feugiat in ante metus.")
                        ->setCreatedAt($faker->dateTimeBetween('-6 months'))
                        ->setImage("https://picsum.photos/seed/picsum/300/150")
                        ->setCategory($category);

                        $manager->persist($article);

                        $today = new DateTime();
                        $difference = $today->diff($article->getCreatedAt());

                        $days = $difference->days;

                        $comment_maximum = '-'. $days. 'days';


                        for ($k=0; $k <= mt_rand(4,6); $k++) { 
                            $comment = new Comment();
                            $comment->setAuthor($faker->name)
                                    ->setContent("labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus")
                                    ->setCreatedAt($faker->dateTimeBetween($comment_maximum))
                                    ->setArticle($article);
                            $manager->persist($comment);
                        }
                        
            }
         }

        $manager->flush();
    }
}
