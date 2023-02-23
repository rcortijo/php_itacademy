<?php
require_once("clases/Equipo.class.php");
require_once("clases/Jugador.class.php");

define('EDAD_LIMITE',21);

enum Posicion: string {     
    case BASE = 'Base';     
    case ESCOLTA = 'Escolta';     
    case ALERO = 'Alero'; 
    case ALAPIBOT = 'Alapibot'; 
    case PIBOT = 'Pibot'; 
}

$arrayJugadores = array();

$jugador = new Jugador("Roberto",35,2.86,91,Posicion::BASE);
$equipo = new Equipo();
$equipo->setJugador($jugador);

$jugador = new Jugador("Carlos",19,1.86,90,Posicion::ESCOLTA);
$equipo->setJugador($jugador);

$jugador = new Jugador("Junior",21,2.20,92,Posicion::ALERO);
$equipo->setJugador($jugador);

$jugador = new Jugador("Alfonso",17,2.10,85,Posicion::ALAPIBOT);
$equipo->setJugador($jugador);

$jugador = new Jugador("Joan",32,2.40,96,Posicion::PIBOT);
$equipo->setJugador($jugador);

echo "Jugadores que tienen mas de 2 MT de altura:";
$equipo->getJugadoresAltos();
echo "<br><br>Jugadores que tienen menos de 21 años:";
$equipo->getJugadoresMenoresEdad(EDAD_LIMITE);
