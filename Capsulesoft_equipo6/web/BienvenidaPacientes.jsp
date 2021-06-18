<%-- 
    Document   : Registro_pacientes
    Created on : 3/06/2021, 01:46:51 PM
    Author     : ian_i
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%String usuario="";
HttpSession SesionPa=request.getSession();
if(SesionPa.getAttribute("usuario")==null){

%>    
<jsp:forward page="index.html">
    <jsp:param name ="error" value="Es obligatorio el inicio de sesion"></jsp:param>
</jsp:forward>

<%
}else{
    usuario=(String)SesionPa.getAttribute("usuario");
}

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido Paciente</title>
    </head>
    <body>
        <h1>Bienvenido paciente  <%out.println(usuario);%></h1>
        
        <a href="index.html"> Regresar al menu principal</a>
    </body>
</html>
