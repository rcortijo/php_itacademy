<?php
require_once("Duck.php");
require_once("Turkey.php");
require_once("TurkeyAdapter.php");

function duck_interaction($duck) {
    $duck->quack();
    $duck->fly();
}

$duck = new Duck;
$turkey = new Turkey;
$turkey_adapter = new TurkeyAdapter($turkey);
echo "The Turkey says...<br>";
$turkey->gobble();
$turkey->fly();
echo "The Duck says...<br>";
duck_interaction($duck);
echo "The TurkeyAdapter says...<br>";
duck_interaction($turkey_adapter);
for($i=0; $i<4; $i++){
    $turkey_adapter->fly();
}
