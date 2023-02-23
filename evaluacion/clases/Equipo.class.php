<?php

class Equipo{
    private $jugadores;
    private $index=0;

    function setJugador(Jugador $jugador){
        $this->jugadores[$this->index]=$jugador;
        $this->index++;
    }

    function getJugadoresAltos(){
        for($i=0;$i<count($this->jugadores);$i++){
           if($this->jugadores[$i]->getAltura() > 2){
               $this->jugadores[$i]->print();
           }
        }
    }
    function getJugadoresMenoresEdad($edad){
        for($i=0;$i<count($this->jugadores);$i++){
           if($this->jugadores[$i]->getEdad() < $edad){
               $this->jugadores[$i]->print();
           }
        }
    }

}