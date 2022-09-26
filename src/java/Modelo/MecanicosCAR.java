
package Modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author cforero
 */
public class MecanicosCAR {
    PreparedStatement ps;
    ResultSet rs;
    
    Conexion c= new Conexion();
    Connection con;
    
    public List listar(){
        List<Mecanicos>Lista=new ArrayList<>();
        String sql="Select * from Mecanicos order by 2";
        try{
            con=c.conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Mecanicos p=new Mecanicos();
                p.setTipDoc(rs.getString(1));
                p.setDoc(rs.getString(2));
                p.setNomp(rs.getString(3));
                p.setNoms(rs.getString(4));
                p.setAPep(rs.getString(5));
                p.setAPes(rs.getString(6));
                p.setCel(rs.getString(7));
                p.setDir(rs.getString(8));
                p.setEmail(rs.getString(9));
                p.setEstado(rs.getString(10));
                Lista.add(p);
            }
        }catch (Exception e){
        }
        return Lista;
    
    }
    public int Agregar(Mecanicos p){
        int r=0;
        String sql="Insert into MECANICOS(TIPO_DOCUMENTO,DOCUMENTO,PRIMER_NOMBRE,SEGUNDO_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,CELULAR,DIRECCION,EMAIL,ESTADO) values (?,?,?,?,?,?,?,?,?,?)";
        try{
            con=c.conectar();
            ps=con.prepareStatement(sql); 
            ps.setString(1, p.getTipDoc());
            ps.setString(2, p.getDoc());
            ps.setString(3, p.getNomp());
            ps.setString(4, p.getNoms());
            ps.setString(5, p.getAPep());
            ps.setString(6, p.getAPes());
            ps.setString(7, p.getCel());
            ps.setString(8, p.getDir());
            ps.setString(9, p.getEmail());
            ps.setString(10, p.getEstado());
            r=ps.executeUpdate();
            if(r==1){
                r=1;
            }else{
                r=0;
            }
        }catch (Exception e){
        }
        return r;
    }

}
