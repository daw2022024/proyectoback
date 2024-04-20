<?php

// src/Controller/ErrorController.php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class ErrorController extends AbstractController
{
    /**
     * @Route("/error", name="error")
     */
    public function error(Request $request)
    {
        // Puedes personalizar el mensaje de error según tus necesidades
        $errorMessage = 'Error: Ruta no encontrada';

        // Devuelve una respuesta JSON con el mensaje de error y el código de estado 404
        return new JsonResponse(['error' => $errorMessage], JsonResponse::HTTP_NOT_FOUND);
    }
}
