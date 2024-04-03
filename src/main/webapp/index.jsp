<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentesii.modelo.Persona"%>
<%
    if (session.getAttribute("listaper") == null) {
        ArrayList<Persona> lisaux = new ArrayList<Persona>();
        session.setAttribute("listaper", lisaux);
    }
    ArrayList<Persona> lista = (ArrayList<Persona>) session.getAttribute("listaper");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de calificaciones</title>
        <link rel="stylesheet" href="estilos.css">
    </head>
    <body>
        <div class="container">
            <div class="border">
                <h4>PRIMER PARCIAL TEM-742</h4>
                <p>Nombre: Primo Ticona Callizaya</p>
                <p>Carnet: 9093411 LP</p>
            </div>
        </div>
        <h1 class="center">Registro de calificaciones</h1>
        <a href="MainServlet?op=nuevo" class="button">Nuevo</a>
        <div class="container2">
        
        <table class="styled-table">
            <tr>
                <th>Id</th>
                <th>Nombres</th>
                <th>P1(30)</th>
                <th>P2(30)</th>
                <th>EF(40)</th>
                <th>Nota</th>
                <th></th>
                <th></th>
            </tr>
            <%
                if (lista != null) {
                    for (Persona item : lista) {
                                                   
            %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getNombre() %></td>
                <td><%= item.getP1() %></td>
                <td><%= item.getP2() %></td>
                <td><%= item.getEf() %></td>
                <td><%= item.getNota() %></td>
                <td><a href="MainServlet?op=editar&id=<%= item.getId() %>" class="button">Editar</a></td>
                <td><a href="MainServlet?op=eliminar&id=<%= item.getId() %>" class="button" onclick="return(confirm('Esta seguro de eliminar??'))">Eliminar</a></td>
            </tr>
            <%
                    }
                }
            %>
        </table>
        </div>
    </body>
</html>
