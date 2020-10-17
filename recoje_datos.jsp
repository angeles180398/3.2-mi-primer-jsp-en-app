<%-- 
    Document   : recoje_datos
    Created on : 12-oct-2020, 12:36:11
    Author     : Angeles Gaona
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="prueba.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table width="25%">
        <%
            String ClaveHorario=request.getParameter("ClaveHorario");
            String ClaveMateria=request.getParameter("ClaveMateria");
              String claveCarrera=request.getParameter("claveCarrera");
            String Materia=request.getParameter("Materia");
            String Carrera=request.getParameter("Carrera");
            String Maestro=request.getParameter("Maestro");
            String Periodo=request.getParameter("Periodo");
            String Turno=request.getParameter("Turno");
            String Grupo=request.getParameter("Grupo");
          String nAlumno=request.getParameter("nAlumno");
           String Semestre=request.getParameter("Semestre");
           String Creditos=request.getParameter("Creditos");
           String Lunes=request.getParameter("Lunes");
             String SalonL=request.getParameter("SalonL");
             String Martes=request.getParameter("Martes");
             String SalonM=request.getParameter("SalonM");
             String Miercoles=request.getParameter("Miercoles");
             String SalonMi=request.getParameter("SalonMi");
             String Jueves=request.getParameter("Jueves");
             String SalonJ=request.getParameter("SalonJ");
              String Viernes=request.getParameter("Viernes");
             String SalonV=request.getParameter("SalonV");
             
            Class.forName("com.mysql.jdbc.Driver");
            
            java.sql.Connection miConexion=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/docentes","root","");
            java.sql.Statement miStatement=miConexion.createStatement();
            String instriccionSql="INSERT INTO sabana (ClaveHorario, ClaveMateria, claveCarrera, Materia, Carrera, Maestro, Periodo, Turno, Grupo, nAlumno, Semestre, Creditos, Lunes, SalonL, Martes, SalonM, Miercoles, SalonMi, Jueves, SalonJ, Viernes, SalonV) values ('"+ClaveHorario+"','"+ClaveMateria+"','"+claveCarrera+"','"+Materia+"','"+Carrera+"','"+Maestro+"','"+Periodo+"', '"+Turno+"','"+Grupo+"','"+nAlumno+"','"+ Semestre+"','"+ Creditos+"','"+ Lunes+"','"+ SalonL+"','"+ Martes+"','"+ SalonM+"','"+ Miercoles+"','"+ SalonMi+"','"+ Jueves+"','"+ SalonJ+"','"+ Viernes+"','"+ SalonV+"')";
            miStatement.executeUpdate(instriccionSql);
        %>
         <tr>
         <h3>NUEVO DATO GUARDADO </h3>
      <td colspan="2" align="center">
          <form action="ConsultaJefe.jsp" method="get">
          <input type="submit" name="button" id="button" value="SALIR">
          </form>
      
      </td>
      
    </tr>
        </table>
    
    </body>
</html>
