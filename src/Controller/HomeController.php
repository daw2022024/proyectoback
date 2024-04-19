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
        $this->query=$queryController;
    }

    #[Route('/home', name:'/home')]
    public function getHome(ManagerRegistry $managerRegistry, EntityManagerInterface $entityManager){
        $subCategories=$this->query->getAllSubCategories($managerRegistry);
        $serializedSubCategories=[];
        foreach( $subCategories as $subCategory) {
            $product=$subCategory->getProducts()->first();
            $image=$this->query->getImageByIdProduct($managerRegistry,$product);
            $serializedSubCategories[] = [
                'id' => $subCategory->getId(),
                'name' => $subCategory->getName(),
                'categoryid'=>$subCategory->getCategory()->getId(),
                'category' => $subCategory->getCategory()->getName(),
                'products'=>[
                    'id'=>$product->getId(),
                    'name'=>$product->getName(),
                    'description'=>$product->getDescription(),
                    'src'=>$image->getSrc()
                ]
            ];
        }
        return $this->json($serializedSubCategories);
    }
}