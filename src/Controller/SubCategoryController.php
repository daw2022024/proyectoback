<?php

namespace App\Controller;

use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/subcategory', name:'/subcategory')]
class SubCategoryController extends AbstractController
{
    private $query;
    public function __construct(QueryController $queryController)
    {
        $this->query=$queryController;
    }

    #[Route('/{id}', name:'/{id}')]
    public function getSubCategoryById(ManagerRegistry $managerRegistry, $id){
        $subCategory=$this->query->getSubCategoryById($managerRegistry,$id);
        $serializableProducts=[];
        if($subCategory!=null) {

                foreach ($subCategory->getProducts() as $product) {
                    $image = $this->query->getImageByProduct($managerRegistry, $product);
                    $serializableProducts[] = [
                        'id' => $product->getId(),
                        'name' => $product->getName(),
                        'src' => $image->getSrc()
                    ];
                }



        }else {
            $serializableProducts[] = [
                "mensaje" => "No se han encontrado resultados"
            ];

        }

        $response=$this->json($serializableProducts);
        $response->headers->set('Access-Control-Allow-Origin', '*');
        $response->headers->set('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS');
        $response->headers->set('Access-Control-Allow-Headers', 'Content-Type, Authorization');
        return $response;

    }
}