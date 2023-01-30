<?php
require_once("Account.class.php");
session_start();

$html='';

$objSession = json_decode($_SESSION["objCuenta"],true);
$objCuenta = new Account($objSession["numeroCuenta"],$objSession["nombre"],$objSession["apellidos"],$objSession["saldo"]);
echo 'Retirando '.$_POST["txtmonto"].'....';
$objCuenta->withdraw($_POST["txtmonto"]);

$html.='
    <br><br>
    <table>
        <tr><td>Nro. Cuenta</td><td>:</td><td>'.$objCuenta->getNumeroCuenta().'</td></tr>
        <tr><td>Nombre</td><td>:</td><td>'.$objCuenta->getNombre().'</td></tr>
        <tr><td>Apellidos</td><td>:</td><td>'.$objCuenta->getApellidos().'</td></tr>
        <tr><td>Saldo</td><td>:</td><td>'.$objCuenta->getSaldo().'</td></tr>
    </table>
    <br><br><a href="operacion.php">Regresar a Operaciones</a>';
$_SESSION["objCuenta"] = json_encode($objCuenta);
echo $html;
