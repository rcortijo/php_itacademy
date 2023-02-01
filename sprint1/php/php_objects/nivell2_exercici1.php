<?php
$GLOBALS["tiros"]=0;

class PokerDice{
    private $dado;
    private $valor;

    public function __construct(){
        $this->dado = array("As","K","Q","J","7","8");
    }
    public function throw(){
        echo "<br>Tirando dado...";
        $this->valor = rand(0,5);
        $GLOBALS["tiros"]++;
    }
    public function shapeName(){
        echo "<br>Resultado: ".$this->dado[$this->valor];
    }
    public function getTotalThrows(){
        echo "<br>Total tiros: ".$GLOBALS["tiros"];
    }
}

//creando objeto
$objPoker1 = new PokerDice();
$objPoker1->throw();
$objPoker1->shapeName();

echo "<br>";

$objPoker2 = new PokerDice();
$objPoker2->throw();
$objPoker2->shapeName();

echo "<br>";

$objPoker3 = new PokerDice();
$objPoker3->throw();
$objPoker3->shapeName();

echo "<br>";

$objPoker4 = new PokerDice();
$objPoker4->throw();
$objPoker4->shapeName();

echo "<br>";

$objPoker5 = new PokerDice();
$objPoker5->throw();
$objPoker5->shapeName();

echo "<br>";
$objPoker5->getTotalThrows();



