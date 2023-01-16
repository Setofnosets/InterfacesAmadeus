<%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="Amadeus.MODEL.gestorVideojuego"%>
<%@ page import="Amadeus.MODEL.videojuego"%>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: locua
  Date: 14/01/2023
  Time: 12:52 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tienda</title>
    <%
        gestorVideojuego gestor = new gestorVideojuego();
        PrintWriter wr = response.getWriter();
        //TODO: Cambiar a clase Videojuego
        List<String> juegos = gestor.visualizarJuegos();
    %>
</head>
<body>
<form action="Oyente_Gestor_videojuegos" method="get">
    <h3>Bienvenido a la tienda</h3>
</form>
<table id="Videojuegos" class="display">
    <thead>
    <th style="font-size: 24px">Juegos</th>
    </thead>
    <tr>
        <td>
            <table style="border: 1px solid black; border-collapse: collapse;">
                <% for (String juego : juegos) { %>
                <tr>
                    <td style="border: 1px solid black; border-collapse: collapse;" onclick="click"><%=juego%></td>
                </tr>
                <% } %>
            </table>
        </td>
        <td>
            <form action="Oyente_Gestor_videojuegos" method="post">
                <table style="border: 1px solid black; border-collapse: collapse;">
                    <tr>
                        <td>
                            Juego: <input type="text" id="juego" name="juego" value="" readonly required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Precio: <input type="text" id="precio" name="precio" value="" readonly>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Genero: <input type="text" id="genero" name="genero" value="" readonly>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Desarrollador: <input type="text" id="desarrollador" name="desarrollador" value="" readonly>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Descripcion: <textarea id="descripcion" name="descripcion" rows="4" cols="50" readonly></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" value="Comprar">
                        </td>
                    </tr>
                </table>
            </form>
            <tr>
                <td>
                    <form action="Oyente_Gestor_videojuegos" method="get">
                        <button type="submit" name="opcion" value="5" formnovalidate>Mostrar reseñas</button>
                    </form>
                </td>
                <td>
                    <form action="Oyente_Gestor_videojuegos" method="get">
                        <button type="submit" name="opcion" value="6">Regresar</button>
                    </form>
                </td>
            </tr>
        <!--Mostrar informacion del videojuego seleccionado-->
        <script>
            addEventListener("click", function (event) {
                //Mostrar informacion del videojuego seleccionado
                //TODO: Cambiar a clase Videojuego y mostrar su informacion
                <% for (String juego : juegos) { %>
                if (event.target.innerHTML == "<%=juego%>") {
                    document.getElementById("juego").value = "<%=juego%>";
                    document.getElementById("precio").value = "10";
                    document.getElementById("genero").value = "tmp";
                    document.getElementById("desarrollador").value = "tmp";
                    document.getElementById("descripcion").value = "tmp";
                    <%session.setAttribute("juego",juego);%>
                }
                <% } %>
            });
        </script>
</table>
</body>
</html>