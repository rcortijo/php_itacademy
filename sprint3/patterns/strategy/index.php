<?php
include_once("mercedesCuoponGenerator.class.php");
include_once("bmwCuoponGenerator.class.php");

echo "<br>coupon MERCEDES<br>";
$mercedes = new mercedesCuoponGenerator(false,true);
$mercedes->addSeasonDiscount();
$mercedes->addStockDiscount();
$mercedes->printCoupon();

echo "<br>coupon BMW<br>";
$bmw = new bmwCuoponGenerator(false,true);
$bmw->addSeasonDiscount();
$bmw->addStockDiscount();
$bmw->printCoupon();