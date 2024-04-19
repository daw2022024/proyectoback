<?php

namespace App\Controller;

use App\Entity\Category;
use App\Entity\Product;

use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

require_once "QueryController.php";

#[Route('/catalogo', name:'/catalogo')]
class CatalogoController extends AbstractController
{
    private $query;
    public function __construct(QueryController $queryController)
    {
        $this->query=$queryController;
    }

    #[Route('/', name:'/')]
    public function getCatalogo(ManagerRegistry $managerRegistry)
    {
        $query=new QueryController();
        $products=$this->query->getAllProducts($managerRegistry);
        $serializedProducts = [];
        foreach ($products as $product) {
            $image=$this->query->getImageByIdProduct($managerRegistry,$product);
            $serializedProducts[] = [
                'id' => $product->getId(),
                'name' => $product->getName(),
                'description' => $product->getDescription(),
                'src'=>$image->getSrc()
            ];
        }
        return $this->json($serializedProducts);
    }

}