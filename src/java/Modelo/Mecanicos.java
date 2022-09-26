package Modelo;

/**
 *
 * @author cforero
 */
public class Mecanicos {
       String TipDoc;
       String Doc;
       String Nomp;
       String Noms;
       String APep;
       String APes;
       String Cel;
       String Dir;
       String Email;
       String Estado;
    
    public Mecanicos() {
    }   
    
    public Mecanicos(String TipDoc,String Doc,String Nomp,String Noms,String APep,String APes,String Cel,String Dir,String Email,String Estado){
        this.TipDoc = TipDoc;
        this.Doc = Doc;
        this.Nomp = Nomp;
        this.Noms = Noms;
        this.APep = APep;
        this.APes = APes;
        this.Cel = Cel;
        this.Dir = Dir;
        this.Email = Email;
        this.Estado = Estado;
    
    
    }

    public String getTipDoc() {
        return TipDoc;
    }

    public void setTipDoc(String TipDoc) {
        this.TipDoc = TipDoc;
    }

    public String getDoc() {
        return Doc;
    }

    public void setDoc(String Doc) {
        this.Doc = Doc;
    }

    public String getNomp() {
        return Nomp;
    }

    public void setNomp(String Nomp) {
        this.Nomp = Nomp;
    }
    
     public String getNoms() {
        return Noms;
    }

    public void setNoms(String Noms) {
        this.Noms = Noms;
    }
    
    public String getAPep() {
        return APep;
    }

    public void setAPep(String APep) {
        this.APep = APep;
    }
    
    public String getAPes() {
        return APes;
    }

    public void setAPes(String APes) {
        this.APes = APes;
    }
     
     public String getCel() {
        return Cel;
    }

    public void setCel(String Cel) {
        this.Cel = Cel;
    }
    
     public String getDir() {
        return Dir;
    }

    public void setDir(String Dir) {
        this.Dir = Dir;
    }
     
     public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }
    
    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    } 
    
    
     
    
    
}

