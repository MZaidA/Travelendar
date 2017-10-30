/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.UnscheduledTransportation;
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
public class UnscheduledTransportationDAO {

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/travlendar", "root", "");
        }
        catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }
    
    public static List<UnscheduledTransportation> getAll() {
        List<UnscheduledTransportation> unscheduledTransportations = new ArrayList<UnscheduledTransportation>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM unscheduled_transportation");
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                UnscheduledTransportation uns = new UnscheduledTransportation();
                uns.setUnscheduledTransportationId(rs.getInt("UNSCHEDULED_TRANSPORTATION_ID"));
		uns.setUnscheduledTransportationType(rs.getString("UNSCHEDULED_TRANSPORTATION_TYPE"));
                unscheduledTransportations.add(uns);
            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return unscheduledTransportations;
    }
    
    public static UnscheduledTransportation getUnscheduledTransportationById(String id) throws SQLException {
        UnscheduledTransportation uns = null;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM unscheduled_transportation WHERE UNSCHEDULED_TRANSPORTATION_ID=?");
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                uns = new UnscheduledTransportation();
                uns.setUnscheduledTransportationId(rs.getInt("UNSCHEDULED_TRANSPORTATION_ID"));
                uns.setUnscheduledTransportationType(rs.getString("UNSCHEDULED_TRANSPORTATION_TYPE"));
            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return uns;
    }

    public static int save(UnscheduledTransportation _unscheduledTransportation) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO unscheduled_transportation(UNSCHEDULED_TRANSPORTATION_TYPE) VALUES(?)");
            ps.setString(1, _unscheduledTransportation.getUnscheduledTransportationType());
            status = ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static int update(UnscheduledTransportation _unscheduledTransportation) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("update unscheduled_transportation set UNSCHEDULED_TRANSPORTATION_TYPE=? where UNSCHEDULED_TRANSPORTATION_ID=?");  
            ps.setString(1, _unscheduledTransportation.getUnscheduledTransportationType());
            ps.setInt(2, _unscheduledTransportation.getUnscheduledTransportationId());
            status = ps.executeUpdate();
        }
        catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int delete(UnscheduledTransportation _unscheduledTransportation) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("DELETE FROM unscheduled_transportation WHERE SCHEDULED_TRANSPORTATION_ID=?");
            ps.setInt(1, _unscheduledTransportation.getUnscheduledTransportationId());
            status = ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
}
