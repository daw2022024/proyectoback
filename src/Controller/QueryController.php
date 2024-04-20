<?php

namespace App\Controller;

use App\Entity\Category;
use App\Entity\Image;
use App\Entity\Price;
use App\Entity\Product;
use App\Entity\SubCategory;
use Doctrine\Persistence\ManagerRegistry;

class QueryController
{
    //aqui se hace el acceso a base de datos y recogida de todas las consultas necesarias para usarla como clase general

    public function getAllProducts(ManagerRegistry $managerRegistry): array
    {
        $objectManager = $managerRegistry->getManagerForClass(Product::class);
        $repository = $objectManager->getRepository(Product::class);
        return $repository->findAll();
    }
    public function getProductById(ManagerRegistry $managerRegistry, $id){
        $objectManager = $managerRegistry->getManagerForClass(Product::class);
        $repository = $objectManager->getRepository(Product::class);
        return $repository->findOneBy(array("id"=>$id));
    }
    public function getAllCategories(ManagerRegistry $managerRegistry): array
    {
        $objectManager = $managerRegistry->getManagerForClass(Category::class);
        $repository = $objectManager->getRepository(Category::class);
        return $repository->findAll();
    }

    public function getCategoryById(ManagerRegistry $managerRegistry, $idCategory){
        $objectManager = $managerRegistry->getManagerForClass(Category::class);
        $repository = $objectManager->getRepository(Category::class);
        return $repository->findOneBy(array("id"=>$idCategory));
    }

    public function getAllSubCategories(ManagerRegistry $managerRegistry): array
    {
        $objectManager = $managerRegistry->getManagerForClass(SubCategory::class);
        $repository = $objectManager->getRepository(SubCategory::class);
        return $repository->findAll();
    }

    public function getSubCategoriesByCategoryId(ManagerRegistry $managerRegistry, $idCategory):array|SubCategory {
        $category=$this->getCategoryById($managerRegistry,$idCategory);
        $objectManager=$managerRegistry->getManagerForClass(SubCategory::class);
        $repository=$objectManager->getRepository(SubCategory::class);
        return $repository->findBy(array("Category"=>$category));
    }

    public function getSubCategoryById(ManagerRegistry $managerRegistry, $id){
        $objectManager=$managerRegistry->getManagerForClass(SubCategory::class);
        $repository=$objectManager->getRepository(SubCategory::class);
        return $repository->findOneBy(array("id"=>$id));
    }




    public function getPriceByProduct(ManagerRegistry $managerRegistry, $product){
        $objectManager = $managerRegistry->getManagerForClass(Price::class);
        $repository = $objectManager->getRepository(Price::class);
        return $repository->findBy(array("Product"=>$product));
    }

    public function getImageByProduct(ManagerRegistry $managerRegistry, $product){
        $objectManager=$managerRegistry->getManagerForClass(Image::class);
        $repository=$objectManager->getRepository(Image::class);
        return $repository->findOneBy(array("product"=>$product));
    }


}