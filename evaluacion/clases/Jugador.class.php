<?php

class Jugador{
    private $nombre;
    private $edad;
    private $altura;
    private $peso;
    

    public function __construct($nombre, $edad, $altura,$peso,$posicion){
        $this->nombre = $nombre;
        $this->edad= $edad;
        $this->altura= $altura;
        $this->peso= $peso;
        $this->posicion = $posicion;
    }

    public function getNombre(){
        return $this->nombre;
    }
    public function getEdad(){
        return $this->edad;
    }
    public function getAltura(){
        return $this->altura;
    }
    public function getPeso(){
        return $this->peso;
    }
    public function getPosicion(){
        return $this->posicion;
    }

    public function print(){
        echo "<br>Nombre: ".$this->nombre.", Edad: ".$this->edad.", Altura: ".$this->altura.", Peso: ".$this->peso;
    }
}