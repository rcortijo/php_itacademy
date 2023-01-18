<?php
error_reporting(E_ALL);
/******************************** */

/*Ens han demanat un llistat de cada any on es van produir jocs olímpics des de 1960 inclòs fins al 2016. 
Programa un bucle que calculi i mostri per pantalla els anys olímpics dins de l'interval esmentat.*/
echo "<br><b>EXERCICI 1</b>"."<br>";
echo "Año Inicio: 1960<br>";
echo "Año Fin: 2016<br>";
echo "Listado de años olímpicos:<br>";
listarAniosOlimpicos(1960,2016);

function listarAniosOlimpicos($anio_ini, $anio_fin){
    $intervalo=4;
    for($i=$anio_ini; $i<=$anio_fin; $i+=$intervalo){
            echo $i;
            echo "<br>";
    }
}

/*Escriu una funció que determini la quantitat total a pagar per una trucada telefònica segons les següents premisses:
Tota trucada que duri menys de 3 minuts té un cost de 10 cèntims.
Cada minut addicional a partir dels 3 primers és un pas de comptador i costa 5 cèntims.*/
echo "<br><br><b>EXERCICI 2</b>"."<br>";
echo "Cant. Minutos: 5<br>";
$minutos = 2;
echo "Costo de llamada €: ".number_format(calcularCostoLlamada($minutos),2);

function calcularCostoLlamada($minutos){
    $costo = 0.10;
    if($minutos >= 3){
        $minutos_adicionales = $minutos - 2;
        $costo = $costo + ($minutos_adicionales * 0.05);
    }
    return $costo;
}


/*Imagina que som a una botiga on es ven:
Xocolata: 1 euro
Xiclets: 0,50 euros
Caramels: 1,50 euros
Implementa un programa que permeti afegir càlculs a un total de compres d'aquest tipus. Per exemple, que si comprem:
2 xocolates, 1 de xiclets i 1 de caramels, tinguem un programa que permeti anar afegint els subtotals a un total, tal que així:
funció(2 xocolates) + funció(1 de xiclets) + funció(1 de carmels) = 2 + 0.5 + 1.5
Sent, per tant, el total, 4.*/
echo "<br><br><b>EXERCICI 3</b>"."<br>";
$precio_chocolate = 1;
$precio_chicle = 0.50;
$precio_caramelo = 1.50;
$total = 0.00;
echo "Comprar 2 CHOCOLATES...";
agregarCompra("CHOCOLATE",2);
echo "<br>TOTAL COMPRA €: ".$total."<br>";

echo "<br>Comprar 1 CHICLES...";
agregarCompra("CHICLE",1);
echo "<br>TOTAL COMPRA €: ".$total."<br>";

echo "<br>Comprar 1 CARAMELO...";
agregarCompra("CARAMELO",1);
echo "<br>TOTAL COMPRA €: ".$total;

function agregarCompra($articulo, $cantidad){
    global $precio_chocolate, $precio_chicle, $precio_caramelo, $total;
    switch($articulo){
        case "CHOCOLATE":
            $total += $precio_chocolate * $cantidad;
            break;
        case "CHICLE":
            $total += $precio_chicle * $cantidad;
            break;
        case "CARAMELO":
            $total += $precio_caramelo * $cantidad;
            break;
    }
}