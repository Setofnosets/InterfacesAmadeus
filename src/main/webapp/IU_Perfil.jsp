<%--
  Created by IntelliJ IDEA.
  User: locua
  Date: 13/01/2023
  Time: 10:03 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Informacion de la cuenta</title>
</head>
<body>
<h4>Informacion de la cuenta:</h4>
<%
    //TODO: Recuperar usuario de la base de datos
    //BORRAR ESTO
    String nombre = "Juan";
    String apellidoP = "Perez";
    String apellidoM = "Gonzalez";
    String usuario = "juanperez";
    String correo = "Juan@Ejemplo.com";
    String telefono = "123456789";
    String direccion = "Calle 123";
%>
<table>
    <tr>
        <td>
            <form action="Oyente_Gestor_Cuenta" method="post">
                <table>
                    <tr>
                        <td>Usuario</td>
                        <td><input type="text" name="usuario" value="<%=usuario%>" required readonly></td>
                    </tr>
                    <tr>
                        <td>Nombre</td>
                        <td><input type="text" name="nombre" value="<%=nombre%>" required readonly></td>
                    </tr>
                    <tr>
                        <td>Apellido Paterno</td>
                        <td><input type="text" name="apellidoP" value="<%=apellidoP%>" required readonly></td>
                    </tr>
                    <tr>
                        <td>Apellido Materno</td>
                        <td><input type="text" name="apellidoM" value="<%=apellidoM%>" required readonly></td>
                    </tr>
                    <tr>
                        <td>Direccion</td>
                        <td><input type="text" name="direccion" value="<%=direccion%>" required readonly></td>
                    </tr>
                    <tr>
                        <td>Telefono</td>
                        <td><input type="text" name="telefono" value="<%=telefono%>" required readonly></td>
                    </tr>
                    <tr>
                        <td>Correo</td>
                        <td><input type="text" name="correo" value="<%=correo%>" required readonly></td>
                    </tr>
                    <tr>
                        <td>Contraseña</td>
                        <td><input type="password" name="contrasena" required></td>
                    </tr>
                    <tr>
                        <td>Confirmar Contraseña</td>
                        <td><input type="password" name="contrasena2" required></td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" name="Cambiar" value="Cambiar">
                        </td>
                    </tr>
                </table>
            </form>
        </td>
    </tr>
    <tr>
        <td>
            <form action="Oyente_Gestor_Cuenta" method="get">
                <button type="submit" name="opcion" value="2" formnovalidate>Regresar</button>
            </form>
        </td>
    </tr>
</table>
</body>
</html>
