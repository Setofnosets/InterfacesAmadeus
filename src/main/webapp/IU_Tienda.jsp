<%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.PrintWriter" %><%--
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
        PrintWriter wr = response.getWriter();
        //TODO: Recuperar la lista de videojuegos en venta
        //TODO: Cambiar a clase Videojuego
        ArrayList<String> juegos = new ArrayList<String>();
        juegos.add("Juego 1");
        juegos.add("Juego 2");
        juegos.add("Juego 3");
        juegos.add("Juego 4");
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
                            Juego: <input type="text" id="juego" name="juego" value="" readonly>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Precio: <input type="text" id="precio" name="precio" value="" readonly>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form action="Oyente_Gestor_videojuegos" method="get">
                                <button type="submit" name="opcion" value="5">Mostrar reseñas</button>
                            </form>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" value="Comprar">
                        </td>
                        <td>
                            <form action="Oyente_Gestor_videojuegos" method="get">
                                <button type="submit" name="opcion" value="6">Regresar</button>
                            </form>
                        </td>
                    </tr>
                </table>
            </form>
        </td>
        <!--Mostrar informacion del videojuego seleccionado-->
        <script>
            addEventListener("click", function (event) {
                //Mostrar informacion del videojuego seleccionado
                //TODO: Cambiar a clase Videojuego y mostrar su informacion
                <% for (String juego : juegos) { %>
                if (event.target.innerHTML == "<%=juego%>") {
                    document.getElementById("juego").value = "<%=juego%>";
                    //Placeholder
                    document.getElementById("precio").value = "10";
                }
                <% } %>
            });
        </script>
    </tr>
</table>
</body>
</html>