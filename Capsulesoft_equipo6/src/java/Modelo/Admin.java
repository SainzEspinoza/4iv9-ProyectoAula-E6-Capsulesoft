/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Control.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ian_i
 */
public class Admin {
    String nombre,appat,apmat,usuario,contrasena;
    int id,edad,privilegio;
    
    public Admin (){}
    public Admin VerificarAdmin(String usuario,String contrasena){
        Admin a  = null;
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        try{
            con = Conexion.getConnection();
            String q="call VerificaAdmin (?,?)";
            ps=con.prepareStatement(q);
            ps.setString(1, usuario);
            ps.setString(2, contrasena);
            rs = ps.executeQuery();
            
            while(rs.next()){
            a= new Admin();
            a.setId(rs.getInt("id_admin"));
            a.setNombre(rs.getString("nombre"));
            a.setAppat(rs.getString("appat"));
            a.setApmat(rs.getString("apmat"));
            a.setEdad(rs.getInt("edad"));
            a.setUsuario(rs.getString("usuario"));
            a.setContrasena(rs.getString("contrasena"));
            a.setPrivilegio(rs.getInt("privilegio"));
            break;
             }
        }
        catch(SQLException sq){
            System.out.println("Error al verificar al paciente");
            System.out.println(sq.getMessage());
            a=null;
        }finally{
            try{
                rs.close();
                ps.close();
                con.close();
            
            }catch(Exception e){
                System.out.println("No encontro la clase");
                System.out.println(e.getMessage());
            
            }
        }
        return a;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getAppat() {
        return appat;
    }

    public void setAppat(String appat) {
        this.appat = appat;
    }

    public String getApmat() {
        return apmat;
    }

    public void setApmat(String apmat) {
        this.apmat = apmat;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public int getPrivilegio() {
        return privilegio;
    }

    public void setPrivilegio(int privilegio) {
        this.privilegio = privilegio;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    
    
}
