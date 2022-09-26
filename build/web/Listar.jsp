<%-- 
    Document   : index
    Created on : 25/09/2022, 12:02:43 a. m.
    Author     : cforero
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" content="Cesar Forero" name="author">
        <title>CARCENTER</title>
        <style type="text/css">
            @page {
                        size: letter portrait;
                        margin: 2cm;
                        margin-top: -2cm;
                    }
                    .imagen{
                        opacity: 0.3;
                        position: relative;
                    }
                    </style>
    </head>
    <body>
        <table align="Center" style=" border: black 2px solid;" width="90%" >
            <tr>
                <td>
                    <center>
                        <div class="imagen" >
                            <img style="margin-bottom: 0.1cm;" align="Center" src="https://i.pinimg.com/474x/8a/55/b8/8a55b854b78f48c0e5e49988902dd2ae--logo-service-bear-logo.jpg" style="width: 350px; height: 340px;" />
			</div>
			<div align="center" style=" border: black 0px solid; font-size: 20pt;" width="100%">        
                            <h3>MECANICOS DE CARCENTER</h3>
			</div>
			<div align="center" style=" border: black 0px solid; font-size: 12pt;" width="100%">        
                            <p>&nbsp;</p>
			</div>
			<div>
			<table style=" border: black 1px solid; font-size: 8pt;" width="100%">
                            <thead>
                                <tr >
                                    <th width="9%" style=" border: black 1px solid;">TIPO DOCUMENTO</th>
                                    <th width="9%" style=" border: black 1px solid;">DOCUMENTO</th>
                                    <th width="9%" style=" border: black 1px solid;">PRIMER NOMBRE</th>
                                    <th width="9%" style=" border: black 1px solid;">SEGUNDO_NOMBRE</th>
                                    <th width="9%" style=" border: black 1px solid;">PRIMER_APELLIDO</th>
                                    <th width="9%" style=" border: black 1px solid;">SEGUNDO_APELLIDO</th>
                                    <th width="9%" style=" border: black 1px solid;">CELULAR</th>
                                    <th width="9%" style=" border: black 1px solid;">DIRECCION</th>
                                    <th width="9%" style=" border: black 1px solid;">EMAIL</th>
                                    <th width="9%"style=" border: black 1px solid;">ESTADO</th>
                                </tr>
                            </thead>
                             <tbody>
                                <c:forEach var="dato" items="${datos}">
                                    <tr>
                                        <td style=" border: black 1px solid;">${dato.getTipDoc()}</td>
                                        <td style=" border: black 1px solid;">${dato.getDoc()}</td>
                                        <td style=" border: black 1px solid;">${dato.getNomp()}</td>
                                        <td style=" border: black 1px solid;">${dato.getNoms()}</td>
                                        <td style=" border: black 1px solid;">${dato.getAPep()}</td>
                                        <td style=" border: black 1px solid;">${dato.getAPes()}</td>
                                        <td style=" border: black 1px solid;">${dato.getCel()}</td>
                                        <td style=" border: black 1px solid;">${dato.getDir()}</td>
                                        <td style=" border: black 1px solid;">${dato.getEmail()}</td>
                                        <td style=" border: black 1px solid;">${dato.getEstado()}</td>
                                    </tr>
                                </c:forEach>                                   
                            </tbody>
			</table>
                            <p>&nbsp;</p>
                            <p>&nbsp;</p>
                            <p>&nbsp;</p>
                            <p>&nbsp;</p>
                            <form action="Controlador" method="POST">
                                <input type="submit" name="accion" value="Atras">
                            </form>
                            
			</div>						
                    </center>
                </td>
            </tr>
           </table>    
    </body>
</html>
