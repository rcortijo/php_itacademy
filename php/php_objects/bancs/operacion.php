<?php
require_once("Account.class.php");
session_start();

if(isset($_SESSION["objCuenta"])){
    $objSession = json_decode($_SESSION["objCuenta"],true);
    $objCuenta = new Account($objSession["numeroCuenta"],$objSession["nombre"],$objSession["apellidos"],$objSession["saldo"]);
}else{

    $nroCuenta = $_POST["txtnroCta"];
    $nombre = $_POST["txtnombre"];
    $apellidos = $_POST["txtapellidos"];
    
    $objCuenta = new Account($nroCuenta,$nombre,$apellidos,0.00);
    $_SESSION["objCuenta"] = json_encode($objCuenta);
}

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
    <a href="index.php">Ir al Inicio</a>
        ';
if(validarData()){
    echo $html;
}


function validarData(){
    $valida=true;
    if(trim($_POST["txtnroCta"])==""){
        $valida=false;
        echo "<br>Debe ingresar numero de Cuenta!<br>";
    }
    if(trim($_POST["txtnombre"])==""){
        $valida=false;
        echo "<br>Debe ingresar Nombre!<br>";
    }
    if(trim($_POST["txtapellidos"])==""){
        $valida=false;
        echo "<br>Debe ingresar Apellidos!<br>";
    }
    return $valida;
}