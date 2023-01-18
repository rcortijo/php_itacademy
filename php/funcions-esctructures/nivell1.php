<?php

error_reporting(E_ALL);

/******************************** */
/*Programa una funció que, donat un número qualsevol (per exemple, la teva edat) 
ens digui si és parell o imparell mitjançant un missatge per pantalla.*/
echo "<b>EXERCICI 1</b>"."<br>";
echo "Valor entrada: 27<br>";
echo esPar(27);
echo "<br><br>";
echo "Valor entrada: 40<br>";
echo esPar(40);
echo "<br>";

function esPar($valor){
    if(($valor%2) == 0){
        return "El número es PAR";
    }else{
        return "El número es IMPAR";
    }
}

/******************************** */
/*Per jugar a l'"amagatall" se'ns ha demanat un programa que compti fins a 10. 
Però la persona que comptarà és una mica tramposa i ho farà comptant de dos en dos. 
Crea una funció que compti fins a 10, de 2 en 2, mostrant cada número del compte per pantalla.*/
echo "<br><b>EXERCICI 2 / EXERCICI 3 / EXERCICI 4</b>"."<br>";
contar(10,2);
contar();

function contar($numero=10, $intervalo=2){
    for($i=0; $i<=$numero; $i+=$intervalo){
        if($i>0){
            echo $i;
            echo "<br>";
        }
        
    }
}

/******************************** */
/*Escriure una funció per verificar el grau d'un/a estudiant d'acord amb la nota.
Condicions:
Si la nota és 60% o més, el grau hauria de ser Primera Divisió.
Si la nota està entre 45% i 59%, el grau hauria de ser Segona Divisió.
Si la nota està entre 33% to 44%, el grau hauria de ser Tercera Divisió.
Si la nota és menor a 33%, l'estudiant reprovarà.*/
echo "<br><br><b>EXERCICI 5</b>"."<br>";
echo "Nota 1: 70<br>";
echo "Salida: ".verificarNota(70);
echo "<br>Nota 2: 51<br>";
echo "Salida: ".verificarNota(51);
echo "<br>Nota 3: 40<br>";
echo "Salida: ".verificarNota(40);
echo "<br>Nota 4: 26<br>";
echo "Salida: ".verificarNota(26);

function verificarNota($porcentaje){
    if($porcentaje >= 60){
        return "Primera Division";
    }elseif($porcentaje >=45 && $porcentaje<=59){
        return "Segunda Division";
    }elseif($porcentaje >=33 && $porcentaje<=44){
        return "Tercera Division";
    }elseif($porcentaje < 33){
        return "Reprobado(a)";
    }
}


/*Charlie em va mossegar el dit!
Charlie et mossegarà el dit exactament el 50% del temps.
Escriu La funció isBitten () que retorna TRUE amb un 50% de probabilitat i FALSE en cas contrari.*/
echo "<br><br><b>EXERCICI 6</b>"."<br>";
echo (isBitten())?"Muerde!!<br>":"No muerde.<br>";
echo (isBitten())?"Muerde!!<br>":"No muerde.<br>";
echo (isBitten())?"Muerde!!<br>":"No muerde.<br>";
echo (isBitten())?"Muerde!!<br>":"No muerde.<br>";

function isBitten(){
    if(rand(0,1)==1){
        return true;
    }else{
        return false;
    }
}

