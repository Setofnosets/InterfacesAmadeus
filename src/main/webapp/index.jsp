<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Amadeus</title>
</head>
<body>
<!--Logo-->
<img src="images/logo.jpg" alt="logo" width="200" height="100">
<!--Formulario de acceso-->
<!--Formulario en tabla-->
<table>
    <tr>
        <td>
            <form action="Oyente_IU_Principal" method="post">
                <table>
                    <tr>
                        <td>Usuario:</td>
                        <td><input type="text" name="usuario" value=""/></td>
                    </tr>
                    <tr>
                        <td>Contraseña:</td>
                        <td><input type="password" name="password" value=""/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Entrar"/></td>
                    </tr>
                </table>
            </form>
        </td>
    </tr>
</table>
<h5>¿No tienes cuenta?</h5>
<form action="Oyente_IU_Principal" method="get">
    <button type="submit" name="opcion" value="1">Registrate</button>
    <button type="submit" name="opcion" value="2">Ver tienda</button>
</form>
</body>
</html>