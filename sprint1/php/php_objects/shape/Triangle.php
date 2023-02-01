<?php
class Triangle extends Shape{
    public function cacularArea(){
        $this->area = ($this->width * $this->height)/2;
        echo "<br>Triangulo:<br>";
        parent::print();
    }
}