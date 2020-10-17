<%-- 
    Document   : entrar
    Created on : 15-oct-2020, 12:39:44
    Author     : Angeles Gaona
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="prueba.css" rel="stylesheet" type="text/css">
        <title>JSP Page</title>
    </head>
    <body>
         <table width="25%">
                   <%
            String usuario=request.getParameter("usuario");
            String contra=request.getParameter("contra");
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection miConexion=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/docentes","root","");
            PreparedStatement c_preparada=miConexion.prepareStatement("SELECT * FROM MAESTRO WHERE USUARIO=? AND CONTRASENA=?");
            c_preparada.setString(1,usuario);
            c_preparada.setString(2,contra);
            ResultSet miResultSet =c_preparada.executeQuery();
           if(miResultSet.next()){ out.println("Usuario autorizado");
              
            }else out.println("Intentalo de Nuevo");
%>

   <tr>
         <h3>Deceas Revisar tus Horarios </h3>
      <td colspan="2" align="center">
          <form action="irConsulta.html" method="get">
          <input type="submit" name="button" id="button" value="SI">
          </form>
      
      </td>
      <td colspan="2" align="center">
          <form action="tipoDocente.html" method="get">
          <input type="submit" name="button" id="button" value="NO">
          </form>
      
      </td>
      
    </tr>
        </table>
    </body>
    
</html>
