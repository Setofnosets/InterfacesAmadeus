<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: locua
  Date: 14/01/2023
  Time: 01:24 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Noticias</title>
  <%
    //TODO: Recuperar noticias
    ArrayList<String> noticias = new ArrayList<String>();
    noticias.add("Noticia 1");
    noticias.add("Noticia 2");
    noticias.add("Noticia 3");
  %>
</head>
<body>
  <table id="noticias" class="display">
    <tbody>
      <%
        for (String noticia : noticias) {
      %>
      <tr>
        <td style="font-size: 24px"><%= noticia %></td>
      </tr>
      <tr>
        <td style="font-size: 16px">Fecha</td>
      </tr>
      <tr>
        <td>
          <textarea style="width: 100%; height: 200px; resize: none; font-size: 14px" readonly>Contenido</textarea>
        </td>
      </tr>
      <%
        }
      %>
    <tr>
        <td style="padding-right: 500px">
            <form action="Oyente_Gestor_Noticias" method="get">
              <button type="submit" name="opcion" value="1">Regresar</button>
            </form>
        </td>
    </tr>
    </tbody>
  </table>
</body>
</html>
