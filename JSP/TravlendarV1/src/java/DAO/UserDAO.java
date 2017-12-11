/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import static DAO.EventDAO.getConnection;
import Model.User;
import com.mysql.jdbc.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ZARS
 */
public class UserDAO {
    
    public static Connection getConnection() {
        Connection con = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");  
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/travlender", "root", "");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }
    
    public static int update(User user) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO akun(HOME, WORKPLACE, MAX_WALKING) VALUES (?, ?, ?)");
            ps.setString(1, user.getHome());
            ps.setString(2, user.getWorkplace());
            ps.setInt(3, user.getMaxWalking());

            status = ps.executeUpdate();
            System.out.println(ps);
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static int createUser(User user) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO user(USERNAME, PASSWORD) VALUES (?, ?)");
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());

            status = ps.executeUpdate();
            System.out.println(ps);
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }
}
