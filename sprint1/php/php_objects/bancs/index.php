<?php
    session_start();
    session_destroy();
    session_unset();
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>BANCS</title>
    </head>
    <body>
        <form method="post" action="operacion.php">
            <table>
                <tr>
                    <td>Nro. Cuenta: </td><td><input type="text" name="txtnroCta"> </td>
                </tr>
                <tr>
                    <td>Nombres: </td><td><input type="text" name="txtnombre"> </td>
                </tr>
                <tr>
                    <td>Apellidos: </td><td><input type="text" name="txtapellidos"> </td>
                </tr>
                <tr>
                    <td></td><td><input type="submit" value="registrar" name="btnRegistrar"></td>
                </tr>
        </form>
        <script src="valida.js" type="text/javascript"></script>
    </body>
</html>