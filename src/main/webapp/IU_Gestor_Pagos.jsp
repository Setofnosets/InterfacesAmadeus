<%@ page import="Amadeus.MODEL.videojuego" %>
<%@ page import="Amadeus.MODEL.DLC" %><%--
  Created by IntelliJ IDEA.
  User: locua
  Date: 14/01/2023
  Time: 01:38 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Comprar</title>
    <%
        //TODO: Implementar pago DLC
        videojuego juego = (videojuego) request.getSession().getAttribute("juego");
        DLC dlc = (DLC) request.getSession().getAttribute("dlc");
        if(juego == null){
            //TODO: Recuperar informacion dlc

        }else{
            request.getSession().setAttribute("juego", juego);
        }
    %>
</head>
<body>
    <h3><strong>Juego a comprar:</strong> <%=juego.getNombre()%></h3>
    <h3 style="padding-left: 100px">Ingrese los datos de su tarjeta de credito: </h3>
    <form action="Oyente_Gestor_Pagos" method="post">
        <input type="hidden" name="juego" value="<%=juego.getNombre()%>">
        <input type="hidden" name="precio" value="<%=juego.getPrecio()%>">
        <table style="padding-left: 125px">
            <tr>
                <td>Numero de tarjeta:</td>
                <td><input type="text" name="numeroTarjeta" size="20" maxlength="20"></td>
            </tr>
            <tr>
                <td>Fecha de vencimiento (mm/yy):</td>
                <td><input type="text" name="fechaVencimiento" size="20" maxlength="5"></td>
                <td>CVV</td>
                <td><input type="text" name="cvv" size="3" maxlength="3"></td>
            </tr>
            <tr>
                <td>Nombre del titular:</td>
                <td><input type="text" name="nombreTitular" size="30" maxlength="30"></td>
            </tr>
            <tr>
                <td><strong>Total: </strong>$<%=juego.getPrecio()%></td>
            </tr>
            <tr>
                <td><input type="submit" value="Comprar"></td>
            </tr>
        </table>
    </form>
    <td style="padding-left: 400px;">
        <form action="Oyente_Gestor_Pagos" method="get">
            <button type="submit" name="cancelar" value="cancelar">Cancelar</button>
        </form>
    </td>
</body>
</html>
