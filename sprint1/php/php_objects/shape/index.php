<?php
require('Shape.php');
require('Triangle.php');
require('Rectangle.php');

$triangulo = new Triangle(20,30);
$triangulo->cacularArea();

$rectangulo = new Rectangle(20,30);
$rectangulo->cacularArea();

