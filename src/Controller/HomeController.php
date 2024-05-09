<?php

namespace App\Controller;


use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

#[Route('', name:'')]
class HomeController extends AbstractController
{

    private $query;

    public function __construct(QueryController $queryController)
    {
        $this->query = $queryController;
    }

    #[Route('/home', name: '/home')]
    public function getHome(ManagerRegistry $managerRegistry)
    {
        $subCategories = $this->query->getAllSubCategories($managerRegistry);
        $serializedSubCategories = [];
        foreach ($subCategories as $subCategory) {
            $product = $subCategory->getProducts()->first();
            $image = $this->query->getImageByProduct($managerRegistry, $product);
            $serializedSubCategories[] = [
                'id' => $subCategory->getId(),
                'name' => $subCategory->getName(),
                'categoryid' => $subCategory->getCategory()->getId(),
                'category' => $subCategory->getCategory()->getName(),
                'products' => [
                    'id' => $product->getId(),
                    'name' => $product->getName(),
                    'description' => $product->getDescription(),
                    'src' => $image->getSrc()
                ]
            ];
        }
        $response=$this->json($serializedSubCategories);
        $response->headers->set('Access-Control-Allow-Origin', '*');
        $response->headers->set('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS');
        $response->headers->set('Access-Control-Allow-Headers', 'Content-Type, Authorization');
        return $response;
    }

    #[Route('/catalog', name: '/catalog')]
    public function getCatalogo(ManagerRegistry $managerRegistry)
    {

        $products = $this->query->getAllProducts($managerRegistry);
        $serializedProducts = [];
        foreach ($products as $product) {
            $image = $this->query->getImageByProduct($managerRegistry, $product);
            $serializedProducts[] = [
                'id' => $product->getId(),
                'name' => $product->getName(),
                'description' => $product->getDescription(),
                'src' => $image->getSrc(),
                'category' => [
                    'id' => $product->getSubCategory()->first()->getCategory()->getId(),
                    'name' => $product->getSubCategory()->first()->getCategory()->getName()
                ],
                'subcategory' => [
                    'id' => $product->getSubCategory()->first()->getId(),
                    'name' => $product->getSubCategory()->first()->getName()
                ]
            ];
        }
        $response=$this->json($serializedProducts);
        $response->headers->set('Access-Control-Allow-Origin', '*');
        $response->headers->set('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS');
        $response->headers->set('Access-Control-Allow-Headers', 'Content-Type, Authorization');
        return $response;

    }
}