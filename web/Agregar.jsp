<%-- 
    Document   : index
    Created on : 25/09/2022, 12:02:43 a. m.
    Author     : cforero
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                            <h3>AGREGAR MECANICOS</h3>
			</div>
			<div align="center" style=" border: black 0px solid; font-size: 12pt;" width="100%">        
                            <p>&nbsp;</p>
			</div>
			<div>
			<table align="center" style=" border-top: black 3px solid; font-size: 8pt;" width="70%">
                            </thead>
                             <tbody>
                                    <tr>
                                        <td align="Center" width="35%">
                                            <form action="Controlador" method="POST">
                                                <strong>TIPO_DOCUMENTO:</strong>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="txttip"><br>
                                               <strong>DOCUMENTO:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="txtdoc"><br>
                                               <strong>PRIMER_NOMBRE:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="txtnomp"><br>
                                               <strong>SEGUNDO_NOMBRE:</strong>&nbsp;&nbsp;&nbsp;<input type="text" name="txtnoms"><br>
                                               <strong>PRIMER_APELLIDO:</strong>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="txtapp"><br>
                                               <strong>SEGUNDO_APELLIDO:</strong><input type="text" name="txtaps"><br>
                                               <strong>CELULAR:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="txtcel"><br>
                                               <strong>DIRECCION:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="txtdir"><br>
                                               <strong>EMAIL:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="email" name="txtemail"><br>
                                               <strong>ESTADO:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="txtest"><br>
                                               <p><input type="submit" name="accion" value="Guardar">
                                                    <input type="submit" name="accion" value="Atras"></p>
                                            </form>
                                        </td>
                                        
                                    </tr>
                            </tbody>
                            
                            
			</table>
			</div>				
                    </center>
                </td>
            </tr>
           </table>    
    </body>
</html>
