/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;


import Modelo.Admin;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author ian_i
 */
public class Acciones_Admin {
    public static int RegistrarAdmin(Admin a){
        int status=0;
        try {
        Connection con=Conexion.getConnection();
        String q = "call InsertaAdmin (?,?,?,?,?,?)";
        PreparedStatement ps = con.prepareStatement(q);
        ps.setString(1,a.getNombre());
        ps.setString(2,a.getAppat());
        ps.setString(3, a.getApmat());
        ps.setInt(4, a.getEdad());
        ps.setString(5, a.getUsuario());
        ps.setString(6, a.getContrasena());
        status=ps.executeUpdate();
        System.out.println("Su registro fue correcto");
        con.close();
        }catch(Exception ed){
            System.out.println("Error en el registro");
            System.out.println(ed.getMessage());

        }
        return status;
    }
        
        
    
    }

