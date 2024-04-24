<?php

namespace App\Controller;


use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/product', name: '/product')]
class ProductController extends AbstractController
{

    private $query;

    public function __construct(QueryController $queryController)
    {
        $this->query = $queryController;
    }

    #[Route('/{id}', name: '/{id}')]
    public function getProductById(ManagerRegistry $managerRegistry, $id)
    {
        $serializedProduct = [];
        $product = $this->query->getProductById($managerRegistry, $id);
        if ($product != null) {
            $prices = $this->query->getPriceByProduct($managerRegistry, $product);
            if ($prices != null) {
                $image = $this->query->getImageByProduct($managerRegistry, $product);
                if ($image != null) {
                    $serializedPrice = [];
                    foreach ($prices as $price) {
                        $serializedPrice[] = [
                            'id' => $price->getId(),
                            'value' => $price->getValue(),
                            'market' => [
                                'id' => $price->getMarket()->getId(),
                                'name' => $price->getMarket()->getName()
                            ]
                        ];
                    }
                    $serializedProduct[] = [
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
                        ,
                        'prices' => $serializedPrice
                    ];

                    return $this->json($serializedProduct);
                }
            }
        }
        $serializedProduct[] = [
            "mensaje" => "No se han encontrado resultados"
        ];

        $response=$this->json($serializedProduct);
        $response->headers->set('Access-Control-Allow-Origin', '*');
        $response->headers->set('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS');
        $response->headers->set('Access-Control-Allow-Headers', 'Content-Type, Authorization');
        return $response;

    }


}