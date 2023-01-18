<?php
error_reporting(E_ALL);

/******************************** */
echo "<b>EXERCICI 1</b>"."<br>";
$var_entero = (int) 8;
$var_decimal = (double) 20.56;
$var_cadena = "Roberto Cortijo";
$var_booleano = true;

echo "valor entero: ".$var_entero."<br>";
echo "valor decimal: ".$var_decimal."<br>";
echo "valor cadena: ".$var_cadena."<br>";
echo "valor booleano: ".$var_booleano;
echo "<br><br>";

/****************************** */
echo "<b>EXERCICI 2</b>"."<br>";
$saludo = "Hola Mundo";
echo $saludo;
echo "<br>";

$saludo = strtoupper($saludo);
echo $saludo;
echo "<br>";

echo "Longitud: ".strlen($saludo);
echo "<br>";

echo "En reverso: ".strrev($saludo);
echo "<br>";

$curso = "Este es el curso de PHP";
echo "concatenado: ".$saludo." ".$curso;
echo "<br><br>";

/****************************** */
echo "<b>EXERCICI 3</b>"."<br>";
define("MI_NOMBRE","Roberto Cortijo Rosales");
echo "<h2>".MI_NOMBRE."</h2>";
echo "<br><br>";

/****************************** */
echo "<b>EXERCICI 4</b>"."<br>";
$x = (int) 10;
$y = (int) 2;
$m = (double) 20.0;
$n = (double) 4.0;

echo "X=".$x." / Y=".$y."<br>";
echo "Suma: ".($x+$y)."<br>";
echo "Resta: ".($x-$y)."<br>";
echo "Producto: ".($x*$y)."<br>";
echo "Modulo: ".($x%$y)."<br>";
echo "<br>";
echo "N=".$n." /  M=".$m."<br>";
echo "Suma: ".($n+$m)."<br>";
echo "Resta: ".($n-$m)."<br>";
echo "Producto: ".($n*$m)."<br>";
echo "Modulo: ".($n%$m)."<br>";
echo "<br>";

echo "El doble de cada variable:<br>";
echo "X=".($x*2)."<br>";
echo "Y=".($y*2)."<br>";
echo "N=".($n*2)."<br>";
echo "M=".($m*2)."<br>";
echo "La suma de todas las variables:<br>";
echo ($x+$y+$m+$n)."<br>";
echo "El producto de todas las variables:<br>";
echo ($x*$y*$m*$n)."<br>";
echo "<br>";
/****************************** */
echo "<b>EXERCICI 5</b>"."<br>";
$array1 = array(1, 2, 3, 4, 5);
$array2 = array(1, 2, 3);
echo "ARRAY 1:<br>";
print_r($array1);
echo "<br>";
echo "ARRAY 2:<br>";
print_r($array2);
echo "<br>";
echo "Se agrega un valor '4' al ARRAY 2...";
echo "<br>";
array_push($array2,4);
$combinacion = array_merge($array1,$array2);
echo "Se combinan ARRAYs...";
echo "<br>";
echo "tamaño final: ".count($combinacion);
echo "<br>";
print_r($combinacion);
echo "<br>";
foreach($combinacion as $x =>$x_value){
    echo "Key=".$x.", Value=".$x_value;
    echo "<br>";
}