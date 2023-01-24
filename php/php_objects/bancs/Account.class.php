<?php

class Account implements JsonSerializable{
    private $numeroCuenta;
    private $nombre;
    private $apellidos;
    private $saldo;

    public function __construct($numeroCuenta, $nombre, $apellidos, $saldo){
        $this->numeroCuenta = $numeroCuenta;
        $this->nombre = $nombre;
        $this->apellidos = $apellidos;
        $this->saldo = $saldo;
    }

    public function deposit($amount){
        if(is_numeric($amount)){
            $this->saldo+=$amount;
            echo "<br>Operación Satisfactoria!! :) <br>";
        }else{
            echo "<br>el monto no es numérico.</br>No se pudo realizar la operación :( <br>";
        }
    }
    public function withdraw($amount){
        if(is_numeric($amount)){
            if($amount <= $this->saldo){
                $this->saldo-=$amount;
                echo "<br>Operación Satisfactoria!! :) <br>";
            }else{
                echo "<br>Saldo insuficiente!! :( <br> No se pudo realizar la operación.<br>";
            }
        }else{
            echo "<br>el monto no es numérico.</br>No se pudo realizar la operación :( <br>";
        }
        
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

    public function jsonSerialize(){
        return get_object_vars($this);
    }
}