<?php

error_reporting(E_ALL);

/******************************** */
/*La criba d'Eratòstenes és un algoritme pensat per a trobar nombres primers dins d'un interval donat. 
Basant-te en la informació de l'enllaç adjunt, implementa la criba d'Eratòstenes dins d'una funció, de tal forma que puguem invocar la funció per a un número concret.
Per saber més
->Criba d'Eratòstenes*/
echo "<br><b>EXERCICI 1</b>"."<br>";
echo "La criba d'Eratòstenes.<br>";
echo "Entrada numero = 30";
$numero = 30;
echo "<br>Números primos menores o igual que 30.<br>";

cribaEratostenes(30);


function cribaEratostenes($numero){
   $array=array();
   $prime=1;
   echo 1," ",2;
   $i=3;

   while($i<=$numero){
        if(!in_array($i,$array)){
            echo " ",$i;
            $prime+=1;
            $j=$i;
            while($j<=($numero/$i)){
               array_push($array,$i*$j);
               $j+=1;
            }
         }
        $i+=2;
   }
   echo "<br>";
}