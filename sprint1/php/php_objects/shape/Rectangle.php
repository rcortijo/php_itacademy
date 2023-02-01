<?php
class Rectangle extends Shape{
    public function cacularArea(){
        $this->area = $this->width * $this->height;
        echo "<br>Rectangulo:<br>";
        parent::print();
    }
}