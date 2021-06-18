/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Control.Conexion;
import java.sql.*;

/**
 *
 * @author ian_i
 */
public class Paciente {
    private int id,estatura,pad,tipoSangre;
    private String nombre,appat,apmat,usuario,contrasena;
    private float peso;
    private int privilegio;
    public Paciente(){}
    
    public Paciente VerificarPaciente(String usuario,String contrasena){
        Paciente p = null;
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        try{
            con = Conexion.getConnection();
            String q="call VerificaPaciente (?,?)";
            ps=con.prepareStatement(q);
            ps.setString(1, usuario);
            ps.setString(2, contrasena);
            rs = ps.executeQuery();
            
            while(rs.next()){
            p= new Paciente();
            p.setId(rs.getInt("id_paciente"));
            p.setNombre(rs.getString("nombre"));
            p.setAppat(rs.getString("appat"));
            p.setApmat(rs.getString("apmat"));
            p.setPeso(rs.getFloat("peso"));
            p.setEstatura(rs.getInt("altura"));
            p.setPad(rs.getInt("pad"));
            p.setTipoSangre(rs.getInt("tipo_sangre"));
            p.setUsuario(rs.getString("usuario"));
            p.setContrasena(rs.getString("contrasena"));
            p.setPrivilegio(rs.getInt("privilegio"));
            break;
             }
        }
        catch(SQLException sq){
            System.out.println("Error al verificar al paciente");
            System.out.println(sq.getMessage());
            p=null;
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
        return p;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getEstatura() {
        return estatura;
    }

    public void setEstatura(int estatura) {
        this.estatura = estatura;
    }

    public int getPad() {
        return pad;
    }

    public void setPad(int pad) {
        this.pad = pad;
    }

    public int getTipoSangre() {
        return tipoSangre;
    }

    public void setTipoSangre(int tipoSangre) {
        this.tipoSangre = tipoSangre;
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

    public int getPrivilegio() {
        return privilegio;
    }

    public void setPrivilegio(int privilegio) {
        this.privilegio = privilegio;
    }

    public float getPeso() {
        return peso;
    }

    public void setPeso(float peso) {
        this.peso = peso;
    }
    
    
}
    

