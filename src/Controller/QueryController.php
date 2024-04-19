<?php

namespace App\Controller;

use App\Entity\Category;
use App\Entity\Image;
use App\Entity\Market;
use App\Entity\Price;
use App\Entity\Product;

use App\Entity\SubCategory;
use ContainerCQyWdP6\getDoctrine_Dbal_DefaultConnection_EventManagerService;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class QueryController //extends AbstractController
{
    public function getAllProducts(ManagerRegistry $managerRegistry): array
    {
        $objectManager = $managerRegistry->getManagerForClass(Product::class);
        $repository = $objectManager->getRepository(Product::class);
        return $repository->findAll();
    }
    public function getProductByOneParameter(ManagerRegistry $managerRegistry, $parameter, $value):Product {
        $objectManager = $managerRegistry->getManagerForClass(Product::class);
        $repository = $objectManager->getRepository(Product::class);
        return $repository->findOneBy(array($parameter=>$value));
    }
    public function getImageByIdProduct(ManagerRegistry $managerRegistry, $id){
        $objectManager=$managerRegistry->getManagerForClass(Image::class);
        $repository=$objectManager->getRepository(Image::class);
        return $repository->findOneBy(array("product"=>$id));
    }
    public function getAllCategories(ManagerRegistry $managerRegistry): array
    {
        $objectManager = $managerRegistry->getManagerForClass(Category::class);
        $repository = $objectManager->getRepository(Category::class);
        return $repository->findAll();
    }
    public function getAllSubCategories(ManagerRegistry $managerRegistry): array
    {
        $objectManager = $managerRegistry->getManagerForClass(SubCategory::class);
        $repository = $objectManager->getRepository(SubCategory::class);
        return $repository->findAll();
    }
    public function getAllMarket(ManagerRegistry $managerRegistry): array
    {
        $objectManager = $managerRegistry->getManagerForClass(Market::class);
        $repository = $objectManager->getRepository(Market::class);
        return $repository->findAll();
    }
    public function getAllPrice(ManagerRegistry $managerRegistry): array
    {
        $objectManager = $managerRegistry->getManagerForClass(Price::class);
        $repository = $objectManager->getRepository(Price::class);
        return $repository->findAll();
    }
    public function getAllImage(ManagerRegistry $managerRegistry):array
    {
        $objectManager = $managerRegistry->getManagerForClass(Image::class);
        $repository = $objectManager->getRepository(Image::class);
        return $repository->findAll();
    }


}