/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Mecanicos;
import Modelo.MecanicosCAR;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author cforero
 */
public class Controlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    MecanicosCAR car=new MecanicosCAR();
    Mecanicos p=new Mecanicos();
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion=request.getParameter("accion");
        switch (accion){
            case "Listar":
                List<Mecanicos>datos=car.listar();
                request.setAttribute("datos",datos);
                request.getRequestDispatcher("Listar.jsp").forward(request, response);
                break;
            case "Nuevo":
                request.getRequestDispatcher("Agregar.jsp").forward(request, response);
                break;  
            case "Guardar":
                 String tip=request.getParameter("txttip");
                 String doc=request.getParameter("txtdoc");
                 String nomp=request.getParameter("txtnomp");
                 String noms=request.getParameter("txtnoms");
                 String app=request.getParameter("txtapp");
                 String aps=request.getParameter("txtaps");
                 String cel=request.getParameter("txtcel");
                 String dir=request.getParameter("txtdir");
                 String email=request.getParameter("txtemail");
                 String est=request.getParameter("txtest");
                 p.setTipDoc(tip);
                 p.setDoc(doc);
                 p.setNomp(nomp);
                 p.setNoms(noms);
                 p.setAPep(app);
                 p.setAPes(aps);
                 p.setCel(cel);
                 p.setDir(dir);
                 p.setEmail(email);
                 p.setEstado(est);
                 car.Agregar(p);
                 request.getRequestDispatcher("Controlador?accion=Listar").forward(request, response); 
            break; 
            case "Atras":
               request.getRequestDispatcher("index.jsp").forward(request, response);
            break;  
                
                
            default:
                throw new AssertionError();
                
        }
               
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
