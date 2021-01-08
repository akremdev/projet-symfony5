<?php

namespace App\Controller;

use App\Entity\Article;
use App\Entity\Comment;
use App\Form\ArticleType;
use App\Form\CommentType;
use App\Repository\ArticleRepository;
use DateTime;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class BlogController extends AbstractController
{
    /**
     * @Route("/", name="blog")
     */
    public function index(ArticleRepository $articleRepository): Response
    {
        $articles = $articleRepository->findAll();
      
        return $this->render('blog/index.html.twig', [
            'articles' => $articles
        ]);
    }

     /**
     * @Route("article/new", name="article_new")
    */
    public function new(Request $request)
    {
        $article = new Article();
        $form = $this->createForm(ArticleType::class, $article);
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $article->setCreatedAt(new DateTime());
            $article->setImage("https://picsum.photos/seed/picsum/350/150");
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($article);
            $entityManager->flush();

            return $this->redirectToRoute("article_show", ['id' => $article->getId()]);
        }

        return $this->render('blog/new.html.twig', [
            'form' =>$form->createView()
        ]);
    }

     /**
     * @Route("article/{id}/edit", name="article_edit")
    */
    public function edit(Request $request, Article $article): Response
    {
        $form = $this->createForm(ArticleType::class, $article);
        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid()){
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($article);
            $entityManager->flush();

            return $this->redirectToRoute("article_show", ['id' => $article->getId()]);
        }
        return $this->render('blog/edit.html.twig', [
            'editForm' =>$form->createView()
        ]);
    }

    /**
     * @Route("article/{id}", name="article_show", methods={"GET", "POST"})
    */
    public function show(Article $article, Request $request)
    {
        $comment = new Comment();
        $form = $this->createForm(CommentType::class, $comment);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $comment->setCreatedAt(new DateTime());
            $comment->setArticle($article);
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($comment);
            $entityManager->flush();

            return $this->redirectToRoute("article_show", ['id' => $article->getId()] );
        }
        return $this->render('blog/show.html.twig', [
            'article' => $article,
            'commentForm' =>$form->createView()
        ]);
    }

  
}
