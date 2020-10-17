<%-- 
    Document   : ConsultaMaestro
    Created on : 16-oct-2020, 8:59:59
    Author     : Angeles Gaona
--%>


<!-- Los import -->
<%@ page language="java" %>
<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.DriverManager"%> 
<%@ page import = "java.sql.ResultSet"%> 
<%@ page import = "java.sql.Statement"%> 
<html>
    <head>
       <meta charset="utf-8">
<link href="prueba.css" rel="stylesheet" type="text/css">
<title>Documento sin título</title>

</head>
<body>
<h1>Horario</h1>
 <table width="25%">
<%
try
{
     String Maestro=request.getParameter("Maestro");
   // Conexion con bd
  Class.forName("com.mysql.jdbc.Driver");
   java.sql.Connection miConexion=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/docentes","root","");
            if (!miConexion.isClosed())
   {
      // La consulta
      Statement st = miConexion.createStatement();
      ResultSet rs = st.executeQuery("SELECT * FROM sabana where Maestro="+"'"+Maestro+"'");
 

      // Ponemos los resultados en un table de html
      out.println("<table border=\"1\">"
              +"<tr><td><label>Clave Horario</label</td>"
              +"<td><label>ClaveMateria</label></td>"
              +"<td><label>Clave Carrera</label></td>"
              +"<td><label>Materia</label></td>"
              +"<td><label>Carrera</label></td>"
              +"<td><label>Maestro</label></td>"
              +"<td><label> Periodo</label></td>"
              +"<td><label>Turno</label></td>"
              +"<td><label>Grupo</label> </td>"
              +"<td> <label> Numero de Alumnos</label></td>"
              +" <td><label>Semestre</label></td>"
              +"<td><label> Creditos</label></td>"
              +"<td><label>Lunes</label></td>"
              +"<td><label>Salon en Lunes</label></td>"
              +"<td> <label>Martes</label></td>"
              +"<td> <label>Salon en Martes</label> </td>"
              +" <td><label>Miercoles</label> </td>"
              +"<td><label>Salon en Maiercoles </label></td>"
              +" <td><label>Jueves </label> </td>"
              +"<td> <label> Salon en Jueves</label></td>"
              +"<td><label>Viernes</label></td>"
              +"<td><label>Salon en Viernes</label></td></tr>");
      while (rs.next())
      {
         out.println("<tr>");
         out.println("<td>"+rs.getObject("ClaveHorario")+"</td>");
         out.println("<td>"+rs.getObject("ClaveMateria")+"</td>");
         out.println("<td>"+rs.getObject("claveCarrera")+"</td>");
         out.println("<td>"+rs.getObject("Materia")+"</td>");
         out.println("<td>"+rs.getObject("Carrera")+"</td>");
         out.println("<td>"+rs.getObject("Maestro")+"</td>");
         out.println("<td>"+rs.getObject("Periodo")+"</td>");
         out.println("<td>"+rs.getObject("Turno")+"</td>");
         out.println("<td>"+rs.getObject("Grupo")+"</td>");
         out.println("<td>"+rs.getObject("nAlumno")+"</td>");
         out.println("<td>"+rs.getObject("Semestre")+"</td>");
         out.println("<td>"+rs.getObject("Creditos")+"</td>");
         out.println("<td>"+rs.getObject("Lunes")+"</td>");
         out.println("<td>"+rs.getObject("SalonL")+"</td>");
         out.println("<td>"+rs.getObject("Martes")+"</td>");
         out.println("<td>"+rs.getObject("SalonM")+"</td>");
         out.println("<td>"+rs.getObject("Miercoles")+"</td>");
         out.println("<td>"+rs.getObject("SalonMi")+"</td>");
         out.println("<td>"+rs.getObject("Jueves")+"</td>");
         out.println("<td>"+rs.getObject("SalonJ")+"</td>");
         out.println("<td>"+rs.getObject("Viernes")+"</td>");
         out.println("<td>"+rs.getObject("SalonV")+"</td>");
         out.println("</tr>");
      }
      out.println("</table>");

      // cierre de la conexion
      miConexion.close();
   }
   else
      // Error en la conexion
      out.println("fallo");
}
catch (Exception e)
{
   // Error en algun momento.
   out.println("Excepcion "+e);
   e.printStackTrace();
}
%>
<tr>
      <td colspan="2" align="center">
          <form action="tipoDocente.html" method="get">
          <input type="submit" name="button" id="button" value="Salir">
          </form>
      
      </td>
</tr>
 </table>
</body>
</html>