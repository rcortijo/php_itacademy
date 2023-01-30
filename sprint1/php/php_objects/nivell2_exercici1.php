<?php

class PokerDice{
    private $dado;
    private $valor;
    private $tiros;
    public function __construct(){
        $this->dado = array("As","K","Q","J","7","8");
    }
    public function throw(){
        echo "<br>Tirando dado...";
        $this->valor = rand(0,5);
        $this->tiros++;
    }
    public function shapeName(){
        echo "<br>Resultado: ".$this->dado[$this->valor];
    }
    public function getTotalThrows(){
        echo "<br>Total tiros: ".$this->tiros;
    }
}

//creando objeto
$objPoker = new PokerDice();
for($i=0;$i<5;$i++){
    $objPoker->throw();
    $objPoker->shapeName();
    echo "<br>";
}
$objPoker->getTotalThrows();

