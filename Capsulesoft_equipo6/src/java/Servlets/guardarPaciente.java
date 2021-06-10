/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Control.Acciones_Paciente;
import Modelo.Paciente;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ian_i
 */
public class guardarPaciente extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String nombre,appat,apmat,usuario,contrasena;
            int estatura,tipoSangre,pad;
            float peso;
            
            nombre=request.getParameter("nombre");
            appat=request.getParameter("appat");
            apmat=request.getParameter("apmat");
            peso=Float.parseFloat(request.getParameter("peso"));
            estatura=Integer.parseInt(request.getParameter("estatura"));
            pad=Integer.parseInt(request.getParameter("pad"));
            tipoSangre=Integer.parseInt(request.getParameter("tipoSangre"));
            usuario=request.getParameter("usuario");
            contrasena=request.getParameter("contrasena");
            Paciente p = new Paciente();
            
            p.setNombre(nombre);
            p.setAppat(appat);
            p.setApmat(apmat);
            p.setPeso(peso);
            p.setEstatura(estatura);
            p.setPad(pad);
            p.setTipoSangre(tipoSangre);
            p.setUsuario(usuario);
            p.setContrasena(contrasena);
            
            int status= Acciones_Paciente.RegistrarPaciente(p);
            
            if(status>0){
            response.sendRedirect("Registro_pacientes.jsp");
        }else{
               response.sendRedirect("error.jsp");
                }
        }
        }
    }