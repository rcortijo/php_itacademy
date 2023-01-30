<?php

class Account{
    private $numeroCuenta;
    private $nombre;
    private $apellidos;
    private $saldo;

    public function __construct($numeroCuenta, $nombre, $apellidos){
        $this->numeroCuenta = $numeroCuenta;
        $this->nombre = $nombre;
        $this->apellidos = $apellidos;
        $this->saldo = 0.00;
    }

    public function deposit($amount){
        $this->saldo+=$amount;
    }
    public function withdraw($amount){
        if($amount <= $this->saldo)
            $this->saldo-=$amount;
        else
            echo "Saldo insuficiente!";
    }
    
    public function getNumeroCuenta(){
        return $this->numeroCuenta;
    }

    public function setNumeroCuenta($numeroCuenta){
        $this->numeroCuenta = $numeroCuenta;
    }

    public function getNombre(){
        return $this->nombre;
    }
    
    public function setNombre($nombre){
        $this->nombre = $nombre;
    }

    public function getApellidos(){
        return $this->apellidos;
    }
    
    public function setApellidos($apellidos){
        $this->apellidos = $apellidos;
    }

    public function getSaldo(){
        return $this->saldo;
    }

}

$objCuenta = new Account("117195691","Roberto","Cortijo Rosales");
echo "Nombre y Apellidos: ".$objCuenta->getNombre()." ".$objCuenta->getApellidos()." <br> Saldo Inicial: ".$objCuenta->getSaldo();
echo "<br>depositando 200...";
$objCuenta->deposit(200);
echo "<br>Saldo: ".$objCuenta->getSaldo();
echo "<br>depositando 100...";
$objCuenta->deposit(100);
echo "<br>Saldo: ".$objCuenta->getSaldo();
echo "<br>retirando 50...";
$objCuenta->withdraw(50);
echo "<br>Saldo: ".$objCuenta->getSaldo();


