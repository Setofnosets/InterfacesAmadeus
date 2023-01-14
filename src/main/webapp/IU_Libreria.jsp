<%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: locua
  Date: 13/01/2023
  Time: 10:56 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Libreria</title>
  <%
    PrintWriter wr = response.getWriter();
    //TODO: Recuperar datos de la libreria y quitar comentarios
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
      <h3 style="display: inline; padding-right: 200px;">Libreria</h3>
      <button type="submit" name="opcion" value="3">Hazte Premium</button>
    </form>
    <table id="Videojuegos" class="display">
      <thead>
        <th>Tus Juegos</th>
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
        <td style="border: 1px solid black; border-collapse: collapse;">
          Juego: <input type="text" id="juego" name="juego" value="" readonly>
        </td>
        <!--Mostrar informacion del videojuego seleccionado-->
        <script>
          addEventListener("click", function (event) {
            //Mostrar informacion del videojuego seleccionado
            //TODO: Cambiar a clase Videojuego y mostrar su informacion
            <% for (String juego : juegos) { %>
              if (event.target.innerHTML == "<%=juego%>") {
                document.getElementById("juego").value = "<%=juego%>";
              }
            <% } %>
          });
        </script>
      </tr>
      <tr>
        <td>
          <form action="Oyente_Gestor_videojuegos" method="get">
            <button type="submit" name="opcion" value="1">Tienda</button>
            <button type="submit" name="opcion" value="2">Noticias</button>
            <button type="submit" name="opcion" value="4">Ver perfil</button>
          </form>
        </td>
      </tr>
    </table>
</body>
</html>
