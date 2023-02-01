<?php
require_once("Account.class.php");
session_start();

if(isset($_SESSION["objCuenta"])){
    $objSession = json_decode($_SESSION["objCuenta"],true);
    $objCuenta = new Account($objSession["numeroCuenta"],$objSession["nombre"],$objSession["apellidos"],$objSession["saldo"]);
    printForm($objCuenta);
}else{
    if(validarData()){
        $nroCuenta = $_POST["txtnroCta"];
        $nombre = $_POST["txtnombre"];
        $apellidos = $_POST["txtapellidos"];
        
        $objCuenta = new Account($nroCuenta,$nombre,$apellidos,0.00);
        $_SESSION["objCuenta"] = json_encode($objCuenta);    
        printForm($objCuenta);
    }
    
}

function printForm($objCuenta){
    $html='
            <table>
                <tr><td>Nro. Cuenta:</td><td>:</td><td>'.$objCuenta->getNumeroCuenta().'</td></tr>
                <tr><td>Nombre:</td><td>:</td><td>'.$objCuenta->getNombre().'</td></tr>
                <tr><td>Apellidos:</td><td>:</td><td>'.$objCuenta->getApellidos().'</td></tr>
                <tr><td>Saldo:</td><td>:</td><td>'.$objCuenta->getSaldo().'</td></tr>
            </table>
            <br><br>
            <form method="post" action="depositar.php">
                <table>
                    <tr>
                        <td colspan="2">Monto a depositar:</td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="text" name="txtmonto"> </td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Depositar" name="btnDepositar"></td>
                    </tr>
                </table>
            </form>
            <form method="post" action="retirar.php">
                <table>
                    <tr>
                        <td colspan="2">Monto a retirar:</td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="text" name="txtmonto"> </td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Retirar" name="btnRetirar"></td>
                    </tr>
                </table>
            </form>
            
            <br>
            <a href="index.php">Nueva Cuenta</a>
                ';
    echo $html;
}

function validarData(){
    if(!isset($_SESSION["objCuenta"])){
        if(trim($_POST["txtnroCta"])==""){
            echo "<br>Debe ingresar numero de Cuenta!<br><a href='index.php'><< Regresar</a><br>";
            return false;
        }
        if(trim($_POST["txtnombre"])==""){
            echo "<br>Debe ingresar Nombre!<br><a href='index.php'><< Regresar</a><br>";
            return false;
        }
        if(trim($_POST["txtapellidos"])==""){
            echo "<br>Debe ingresar Apellidos!<br><a href='index.php'><< Regresar</a><br>";
            return false;
        }
        
    }  
    return true;
}