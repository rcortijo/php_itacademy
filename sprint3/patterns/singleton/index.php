<?php
include_once("Tigger.class.php");
define('CANTIDAD_ROAR',5);

$tigre = Tigger::getInstance();
for($i=0; $i<CANTIDAD_ROAR; $i++)
    $tigre->roar();

$tigre->getCounter();