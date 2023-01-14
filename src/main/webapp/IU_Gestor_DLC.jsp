<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: locua
  Date: 14/01/2023
  Time: 03:04 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DLC</title>
<%
    //TODO: Revisar lista de DLC
    String juego = request.getParameter("juegoSeleccionado");
    ArrayList<String> listaDLC = new ArrayList<String>();
    listaDLC.add("DLC1");
    listaDLC.add("DLC2");
    listaDLC.add("DLC3");
    listaDLC.add("DLC4");
    listaDLC.add("DLC5");
%>
</head>
<body>
    <h3>Lista de DLC para <%=juego%></h3>
    <table id="DLCs" class="display">
        <thead>
            <th style="font-size: 24px">DLC</th>
        </thead>
        <tr>
            <td>
                <table style="border: 1px solid black; border-collapse: collapse;">
                    <% for (String dlc : listaDLC) { %>
                        <tr>
                            <td style="border: 1px solid black; border-collapse: collapse;" onclick="click"><%=dlc%></td>
                        </tr>
                    <% } %>
                </table>
            </td>
            <td>
                <form action="Oyente_Gestor_DLC" method="post">
                    <table style="border: 1px solid black; border-collapse: collapse;">
                        <tr>
                            <td>
                                DLC: <input type="text" name="dlc" id="dlc" readonly required>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Precio: <input type="number" name="precio" id="precio" readonly>
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
                        <form action="Oyente_Gestor_DLC" method="get">
                            <button type="submit" name="opcion" value="1">Volver</button>
                        </form>
                    </td>
                </tr>
            </td>
        </tr>
        <script>
            addEventListener("click", function (event){
                //TODO: Cambiar a la clase DLC
                <% for (String dlc : listaDLC) { %>
                    if (event.target.innerHTML === "<%=dlc%>"){
                        document.getElementById("dlc").value = "<%=dlc%>";
                        document.getElementById("precio").value = "10";
                    }
                <% } %>
            });
        </script>
    </table>
</body>
</html>
