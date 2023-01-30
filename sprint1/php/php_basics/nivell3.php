<?php

error_reporting(E_ALL);

/******************************** */
echo "<b>EXERCICI 1</b>"."<br>";
echo "Entrada: ";
$saludo = "Hello World";
echo $saludo;

echo "<br>";
$saludo = str_replace(" ","",$saludo);
$array = str_split($saludo);

var_dump($array);
echo "<br>";
/******************************** */
echo "<br>";
echo "<b>EXERCICI 2</b>"."<br>";

$array = array("PHP",1,"HTML",2,1,"PHP","CSS",1);
var_dump($array);
echo "<br><br>";

$valor = "PHP";
echo "Valor a contar: ".$valor;
echo "<br>";
echo "Cant. que existe: ".contar_veces_existe($array, $valor);

echo "<br><br>";
$valor = 1;
echo "Valor a contar: ".$valor;
echo "<br>";
echo "Cant. que existe: ".contar_veces_existe($array, $valor);


function contar_veces_existe($array, $valor) {
    $contadores = array_count_values($array);
    return $contadores[$valor];
}

echo "<br>";
/******************************** */
echo "<br>";
echo "<b>EXERCICI 3</b>"."<br>";
$X = array (10, 20, 30, 40, 50);
echo "Array entrada:<br>";
var_dump($X);
echo "<br>Quitando elemento '40'...<br>";
array_splice($X,3,1);
var_dump($X);