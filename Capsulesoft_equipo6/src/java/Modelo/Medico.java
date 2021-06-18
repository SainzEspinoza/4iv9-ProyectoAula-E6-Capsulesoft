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
public class Medico {
    private int id,edad, especialidad,privilegio;
    private String nombre,appat,usuario,contrasena;
    
    public Medico(){}
    
public Medico VerificarMedico(String usuario,String contrasena){
        Medico m = null;
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        try{
            con = Conexion.getConnection();
            String q="call VerificaMedico (?,?)";
            ps=con.prepareStatement(q);
            ps.setString(1, usuario);
            ps.setString(2, contrasena);
            rs = ps.executeQuery();
            
            while(rs.next()){
            m= new Medico();
            m.setId(rs.getInt("id_medico"));
            m.setNombre(rs.getString("nombre"));
            m.setAppat(rs.getString("appat"));
            m.setEdad(rs.getInt("edad"));
            m.setEspecialidad(rs.getInt("especialidad"));
            m.setUsuario(rs.getString("usuario"));
            m.setContrasena(rs.getString("contrasena"));
            m.setPrivilegio(rs.getInt("privilegio"));
            break;
             }
        }
        catch(SQLException sq){
            System.out.println("Error al verificar al medico");
            System.out.println(sq.getMessage());
            m=null;
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
        return m;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
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

    public int getEspecialidad() {
        return especialidad;
    }

    public void setEspecialidad(int especialidad) {
        this.especialidad = especialidad;
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

    public int getPrivilegio() {
        return privilegio;
    }

    public void setPrivilegio(int privilegio) {
        this.privilegio = privilegio;
    }
    
    
}
