<?php

namespace App\Entity;

use App\Repository\PriceRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: PriceRepository::class)]
class Price
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\ManyToOne(inversedBy: 'prices')]
    #[ORM\JoinColumn(nullable: false)]
    private ?Product $Product = null;

    #[ORM\OneToOne(cascade: ['persist', 'remove'])]
    #[ORM\JoinColumn(nullable: false)]
    private ?Market $Market = null;

    #[ORM\Column(nullable: true)]
    private ?float $Value = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getProduct(): ?Product
    {
        return $this->Product;
    }

    public function setProduct(?Product $Product): static
    {
        $this->Product = $Product;

        return $this;
    }

    public function getMarket(): ?Market
    {
        return $this->Market;
    }

    public function setMarket(Market $Market): static
    {
        $this->Market = $Market;

        return $this;
    }

    public function getValue(): ?float
    {
        return $this->Value;
    }

    public function setValue(?float $Value): static
    {
        $this->Value = $Value;

        return $this;
    }
}
