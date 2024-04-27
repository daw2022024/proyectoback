<?php

namespace App\Controller;

use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/category', name: '/category')]
class CategoryController extends AbstractController
{
    private $query;

    public function __construct(QueryController $queryController)
    {
        $this->query = $queryController;
    }

    #[Route('/', name: '/')]
    public function getCategorias(ManagerRegistry $managerRegistry)
    {
        $subCategories = $this->query->getAllSubCategories($managerRegistry);
        $categories = $this->query->getAllCategories($managerRegistry);

        $serializedCategories = [];
        foreach ($categories as $category) {
            $serializedSubCategories = [];
            foreach ($subCategories as $subCategory) {
                if ($category->getId() == $subCategory->getCategory()->getId()) {
                    $serializedSubCategories[] = [
                        'id' => $subCategory->getId(),
                        'name' => $subCategory->getName()
                    ];
                }
            }
            $serializedCategories[] = [
                'id' => $category->getId(),
                'name' => $category->getName(),
                'subcategories' => $serializedSubCategories


            ];
        }
        $response=$this->json($serializedCategories);
        $response->headers->set('Access-Control-Allow-Origin', 'http://127.0.0.1:8000');
        $response->headers->set('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS');
        $response->headers->set('Access-Control-Allow-Headers', 'Content-Type, Authorization');
        return $response;

    }

    #[Route('/{id}', name: '/{id}')]
    public function getCategoriaById(ManagerRegistry $managerRegistry, $id)
    {
        $subCategories = $this->query->getSubCategoriesByCategoryId($managerRegistry,$id);


        $serializedSubCategories = [];
        if($subCategories!=null) {
            foreach ($subCategories as $subCategory) {
                $serializedProducts = [];
                $cont = 0;
                $products = $subCategory->getProducts();
                foreach ($products as $product) {
                    $image = $this->query->getImageByProduct($managerRegistry, $product);
                    if ($cont < 2 && $product->getSubCategory()->first()->getId() == $subCategory->getId()) {
                        $serializedProducts[] = [
                            'id' => $product->getId(),
                            'name' => $product->getName(),
                            'src' => $image->getSrc()
                        ];
                        $cont++;
                    }


                }
                $serializedSubCategories[] = [
                    'id' => $subCategory->getId(),
                    'name' => $subCategory->getName(),
                    'products' => $serializedProducts
                ];
            }
        }else {
            $serializedSubCategories[] = [
                "mensaje" => "No se han encontrado resultados"
            ];

        }

        $response=$this->json($serializedSubCategories);
        $response->headers->set('Access-Control-Allow-Origin', '*');
        $response->headers->set('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS');
        $response->headers->set('Access-Control-Allow-Headers', 'Content-Type, Authorization');
        return $response;

    }

}