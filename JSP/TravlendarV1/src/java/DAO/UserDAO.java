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
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/b2db", "root", "");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }
    
    public static User get(String user) {
        User us=null;
        try{
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM user WHERE USERNAME=?");
            ps.setString(1, user);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
            us=new User();
            us.setUsername(rs.getString("USERNAME"));
            us.setPassword(rs.getString("PASSWORD"));
            us.setHome(rs.getString("HOME"));
            us.setWorkplace(rs.getString("WORKPLACE"));
            us.setMaxWalking(rs.getInt("MAX_WALKING"));
            }
            
            ps.close();
            con.close();
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return us;
    }
    
    public static int update(User user) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("UPDATE user SET HOME=?, WORKPLACE=?, MAX_WALKING=? WHERE USERNAME=?");
            ps.setString(1, user.getHome());
            ps.setString(2, user.getWorkplace());
            ps.setInt(3, user.getMaxWalking());
            ps.setString(4, user.getUsername());

            status = ps.executeUpdate();
            System.out.println(ps);
            
            ps.close();
            con.close();
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
            
            ps.close();
            con.close();
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }
    public static boolean validasi(User user){
        boolean status = false;
        try{
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select USERNAME, PASSWORD from user where USERNAME = ? AND PASSWORD = ?");
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            
            ResultSet rs = ps.executeQuery();
            status=rs.next();
            
            ps.close();
            con.close();
            
        }catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }
}
