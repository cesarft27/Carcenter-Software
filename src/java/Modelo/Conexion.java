package Modelo;

/**
 *
 * @author cforero
 */

/*Importamos Libreria para Conexion con Oracle*/
import java.sql.Connection;  
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
    
    Connection con = null;
    
    /*Variables para la conexion de BBDD*/
    String user ="CFORERO";
    String pass ="CFORERO_1";
    String url ="jdbc:oracle:thin:@localhost:1521:CFORERO";
    
    public Connection conectar(){
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection(url,user,pass);  
            con.setAutoCommit(false);
        
        } catch (SQLException | ClassNotFoundException ex) {
            System.out.println("Error en la conexión de la base de datos");
        }
        return con;
    }

}
