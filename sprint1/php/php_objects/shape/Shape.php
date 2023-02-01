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
    abstract protected function cacularArea();

}