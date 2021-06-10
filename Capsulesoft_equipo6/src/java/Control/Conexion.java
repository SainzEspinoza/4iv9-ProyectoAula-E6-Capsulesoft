/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

/**
 *
 * @author ian_i
 */
import java.sql.*;
public class Conexion {
    
        public static Connection getConnection(){
            String url,username,pssword;
            url= "jdbc:mysql://localhost/capsulesoft_equipo6";
            username = "root";
            pssword= "1Yan$polar5101520";
            Connection con =null;
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con= DriverManager.getConnection(url,username,pssword);
                System.out.println("Connexion Exitosa a la BD");
            }catch(Exception e){
                System.out.println("Error al conectar con la BD");
                System.out.println(e.getMessage());
            }
            return con;
            
            
        }
    
}
