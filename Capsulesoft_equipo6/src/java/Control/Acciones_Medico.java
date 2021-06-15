package Control;

import Modelo.Medico;
import java.sql.Connection;
import java.sql.PreparedStatement;


public class Acciones_Medico {
    public static int RegistrarMedico (Medico m){
        int status=0;
        try {
        Connection con=Conexion.getConnection();
        String q = "call inserta_medico (?,?,?,?,?,?)";
        PreparedStatement ps = con.prepareStatement(q);
        ps.setString(1,m.getNombre());
        ps.setString(2,m.getAppat());
        ps.setInt(3, m.getEdad());
        ps.setInt(4, m.getEspecialidad());
        ps.setString(5, m.getUsuario());
        ps.setString(6, m.getContrasena());
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
