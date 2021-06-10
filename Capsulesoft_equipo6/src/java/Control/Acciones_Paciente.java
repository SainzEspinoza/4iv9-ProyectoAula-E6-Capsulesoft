/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Modelo.Paciente;
import java.sql.*;

/**
 * las acciones que hara el paciente serán
 * registrarse, iniciar sesion, pedir cita de revision, vizualizar sus citas
 * verificar usuario
 */
public class Acciones_Paciente {
    public static int RegistrarPaciente(Paciente p){
        int status=0;
        try {
        Connection con=Conexion.getConnection();
        String q = "call inserta_paciente (?,?,?,?,?,?,?,?,?)";
        PreparedStatement ps = con.prepareStatement(q);
        ps.setString(1,p.getNombre());
        ps.setString(2,p.getAppat());
        ps.setString(3, p.getApmat());
        ps.setFloat(4, p.getPeso());
        ps.setInt(5, p.getEstatura());
        ps.setInt(6, p.getPad());
        ps.setInt(7, p.getTipoSangre());
        ps.setString(8, p.getUsuario());
        ps.setString(9, p.getContrasena());
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
