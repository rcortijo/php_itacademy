<?php

error_reporting(E_ALL);

/******************************** */
echo "<b>EXERCICI 1</b>"."<br>";
echo "Entrada: ";
$val1 = (int) 1;
$val2 = (int) 2;
echo $val1.",".$val2."<br>";
echo "Salida: ";
echo sumar($val1,$val2);

echo "<br><br>";

echo "Entrada: ";
$val1 = (int) 3;
$val2 = (int) 2;
echo $val1.",".$val2."<br>";
echo "Salida: ";
echo sumar($val1,$val2);

echo "<br><br>";
echo "Entrada: ";
$val1 = (int) 2;
$val2 = (int) 2;
echo $val1.",".$val2."<br>";
echo "Salida: ";
echo sumar($val1,$val2);


function sumar($x, $y){
    $suma = $x + $y;
    if($x == $y){
        $suma = $suma * 2;
    }
    return $suma;
}
echo "<br><br>";

/******************************** */
echo "<b>EXERCICI 2</b>"."<br>";

$cadena = "wxyz";
echo "Entrada: ".$cadena."<br>";
echo "Salida: ".reemplazar_caracter($cadena)."<br><br>";

$cadena = "a";
echo "Entrada: ".$cadena."<br>";
echo "Salida: ".reemplazar_caracter($cadena)."<br><br>";

$cadena = "ab";
echo "Entrada: ".$cadena."<br>";
echo "Salida: ".reemplazar_caracter($cadena);

function reemplazar_caracter($cadena){
    $primer_caracter = $cadena[0];
    $ultimo_caracter = $cadena[strlen($cadena)-1]; // devuelve ultimo caracter
    //reemplazando
    $cadena[0] = $ultimo_caracter;
    $cadena[strlen($cadena)-1] = $primer_caracter; //reemplazar ultimo caracter
    return $cadena;
}