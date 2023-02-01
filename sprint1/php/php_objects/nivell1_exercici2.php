<?php

abstract class Shape{
    protected $width;
    protected $height;
    protected $area;

    public function __construct($width, $height){
        $this->width = $width;
        $this->height = $height;
    }
    public function print(){
        echo "Ancho: ".$this->width." Alto: ".$this->height. " Area: ".$this->area."<br>";
    }
    abstract function area();

}

class Triangulo extends Shape{
    public function area(){
        $this->area = ($this->width * $this->height)/2;
        echo "<br>Triangulo:<br>";
        parent::print();
    }
}
class Rectangulo extends Shape{
    public function area(){
        $this->area = $this->width * $this->height;
        echo "<br>Rectangulo:<br>";
        parent::print();
    }
}

//creando figuras
$triangulo = new Triangulo(20,30);
$triangulo->area();

$rectangulo = new Rectangulo(20,30);
$rectangulo->area();