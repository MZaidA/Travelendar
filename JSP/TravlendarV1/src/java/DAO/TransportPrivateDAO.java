/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import static DAO.LocationDAO.getConnection;
import Model.Location;
import Model.PrivateTransportation;
import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
    
    public static PrivateTransportation getPrTransportById(String id) throws SQLException {
        PrivateTransportation Transport = null;
        try{
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM private_transportation WHERE PRIVATE_ID=?");
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                Transport = new PrivateTransportation();
                Transport.setPrivateId(rs.getInt("PRIVATE_ID"));
                Transport.setPrivateType(rs.getString("PRIVATE_TYPE"));
            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return Transport;
    }

    public static int save(PrivateTransportation _PrivateTransportation) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO private_transportation(PRIVATE_ID, PRIVATE_TYPE) VALUES (?, ?)");
            ps.setInt(1, _PrivateTransportation.getPrivateId());
            ps.setString(2, _PrivateTransportation.getPrivateType());
            status = ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static int update(PrivateTransportation _PrivateTransportation) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps=con.prepareStatement("update private_transportation set PRIVATE_TYPE=? where PRIVATE_ID=?");  

            ps.setString(1, _PrivateTransportation.getPrivateType());
            ps.setInt(2, _PrivateTransportation.getPrivateId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int delete(PrivateTransportation _PrivateTransportation) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("DELETE FROM private_transportation WHERE PRIVATE_ID=?");
            ps.setInt(1, _PrivateTransportation.getPrivateId());
            status = ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
}
