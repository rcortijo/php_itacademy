<?php

class Tigger {
    private static $instance;
    private $cant;

    private function __construct() {
            
    }

    static function getInstance(){
        if(self::$instance){
            return self::$instance;
        }
        self::$instance = new Tigger();
        return self::$instance;
    }

    public function roar() {
            echo "<br>Grrr!" . PHP_EOL;
            $this->cant++;
    }
    public function getCounter(){
        echo "<br>Cantidad: ".$this->cant;
    }
}