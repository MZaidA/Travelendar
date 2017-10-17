/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.PrivateTransportation;
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
 * @author afadh
 */
public class TransportPrivateDAO{

    public static Connection getConnection() {
        Connection con = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/lander_v1.5", "root", "");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }
    
    public static List<PrivateTransportation> getAll() {
        List<PrivateTransportation> transports = new ArrayList<PrivateTransportation>();
        try{
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM private_transportation");
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                PrivateTransportation transport = new PrivateTransportation();
                transport.setPrivateId(rs.getInt("PRIVATE_ID"));
		transport.setPrivateType(rs.getString("PRIVATE_TYPE"));
                transports.add(transport);
            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return transports;
    }

    public static PrivateTransportation get() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public static int save(PrivateTransportation privateTransport) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO event(event_name, arrival_time, end_time, ) VALUES (?, ?, ?)");
            ps.setInt(1, privateTransport.getPrivateId());
            ps.setString(2, privateTransport.getPrivateType());
            status = ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static void update(PrivateTransportation _location) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public static void delete(PrivateTransportation _location) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
