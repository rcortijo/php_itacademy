<?php
require_once("carCuoponGenerator.php");
class mercedesCuoponGenerator implements carCuoponGenerator{

    private $discount=0;
    private $isHighSeason;
    private $bigStock;

    public function __construct($isHighSeason, $bigStock){
        $this->isHighSeason = $isHighSeason;
        $this->bigStock = $bigStock;
    }

    public function addSeasonDiscount(){
        if(!$this->isHighSeason) {
            $this->discount += 4;
        }
    }

    public function addStockDiscount(){
        if($this->bigStock) {
            $this->discount += 10;
        }
    }

    public function printCoupon(){
        echo "Get ".$this->discount." % off the price of your new car.";
    }
}