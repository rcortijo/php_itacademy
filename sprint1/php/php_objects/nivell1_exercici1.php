<?php

class Employee{
    private $name;
    private $salary;

    public function initialize($name, $salary){
        $this->name = $name;
        $this->salary = $salary;
    }
    public function print(){
        echo "<br>Nombre: ".$this->name." <br>Salary: ".$this->salary;
        echo "<br>";
    }
    public function printPayTax(){
        $this->print();
        if(($this->salary) > 6000){
            echo "Debe pagar impuestos!. :(";
        }else{
            echo "No paga impuestos. :)";
        }
        echo "<br>";
    }
}

$employee1 = new Employee();
$employee1->initialize("Roberto Cortijo", "2350");
$employee1->printPayTax();

$employee2 = new Employee();
$employee2->initialize("Juan Perez", "6001");
$employee2->printPayTax();