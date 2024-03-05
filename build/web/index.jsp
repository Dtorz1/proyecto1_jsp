<%-- 
    Document   : index
    Created on : 24/09/2021, 9:34:59 a.m.
    Author     : didie
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="estilo.css" rel="stylesheet" type="text/css">
        <title>pagina jsp</title>

    </head>
    <body>
        <h1>probando expreciones de jsp</h1>
        <h2>la fecha y hora actual es: <%=new Date()%></h2> 
        <!--        %=  tipo exprecion-->
        <h2>fecha y hora local: <%=new Date().toLocaleString()%> </h2>
        <h2>la potencia de 16 es: <%=Math.pow(16, 2)%></h2>
        <h2>la raiz de 49 es: <%=Math.sqrt(49)%></h2>

        <h1>probando declaracion de variables en jsp</h1>
        <!--        %! declaracion de variables-->
        <%! double x = 4;
            double y = 2;
//            String p="daniel lo mama";

            public double potencia(double a, double b) {
                return Math.pow(a, b);
            }%>
        <h2>la potencia de <%=x%> elevado a <%=y%> es: <%=potencia(x, y)%></h2>
        <h1>tablas de multiplicar</h1>
<!--        <h1><%=p%></h1>-->


        <table>
            <thead>
            <th>numero</th>
            <th>operador</th>
            <th>numero</th>
            <th>igual</th>
            <th>resultado</th>
        </thead>
        <tbody>
            <%
                for (int i = 1; i <= 200; i++) {

            %>
            <tr>
                <td>9</td>
                <td>x</td>
                <td><%=i%> </td>
                <td>=</td>
                <td><%=i * 9%></td>
            </tr>
            <%}%>
        </tbody>
    </table>


</body>
</html>
