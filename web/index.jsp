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
        <table align="Center" style=" border: black 2px solid;" width="50%" >
            <tr>
                <td>
                    <center>
                        <div class="imagen" >
                            <img style="margin-bottom: 0.1cm;" align="Center" src="https://i.pinimg.com/474x/8a/55/b8/8a55b854b78f48c0e5e49988902dd2ae--logo-service-bear-logo.jpg" style="width: 350px; height: 340px;" />
			</div>
			<div align="center" style=" border: black 0px solid; font-size: 20pt;" width="100%">        
                            <h3>CARCENTER SERVICES</h3>
                            <form action="Controlador" method="POST">
                                <input type="submit" name="accion" value="Listar">
				<input type="submit" name="accion" value="Nuevo">
                            </form>
			</div>
			<div align="center" style=" border: black 0px solid; font-size: 12pt;" width="100%">        
                            <p>&nbsp;</p>
			</div>
						
                    </center>
                </td>
            </tr>
           </table>    
    </body>
</html>
