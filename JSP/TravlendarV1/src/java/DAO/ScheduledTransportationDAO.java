/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.ScheduledTransportation;
import Model.ScheduledTransportationModes;
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
 * @author Nino
 */
public class ScheduledTransportationDAO {
    
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
    
    public static List<ScheduledTransportation> getAll() {
        List<ScheduledTransportation> scheduledTransportations = new ArrayList<ScheduledTransportation>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM scheduled_transportation");
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                ScheduledTransportation sch = new ScheduledTransportation();
                sch.setScheduledTransportationId(rs.getInt("SCHEDULED_TRANSPORTATION_ID"));
                sch.setTransportationId(rs.getInt("TRANSPORTATION_ID"));
                sch.setScheduledTransportationName(rs.getString("SCHEDULED_TRANSPORTATION_NAME"));
                scheduledTransportations.add(sch);
            }
            for(int i = 0; i < scheduledTransportations.size(); i++) {
                PreparedStatement ps1 = con.prepareStatement("SELECT * FROM scheduled_transportation_modes where TRANSPORTATION_ID=?");
                ps1.setInt(1, scheduledTransportations.get(i).getTransportationId());
                ResultSet rs1 = ps1.executeQuery();
                while(rs1.next()) {
                    scheduledTransportations.get(i).setTransportationType(rs1.getString("TRANSPORTATION_TYPE"));
                }
            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return scheduledTransportations;
    }

    public static int save(ScheduledTransportation _scheduledTransportation) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO scheduled_transportation(TRANSPORTATION_ID, SCHEDULED_TRANSPORTATION_NAME) VALUES(?, ?)");
            ps.setInt(1, _scheduledTransportation.getTransportationId());
            ps.setString(2, _scheduledTransportation.getScheduledTransportationName());
            status = ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int delete(ScheduledTransportation _scheduledTransportation) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("DELETE FROM scheduled_transportation WHERE SCHEDULED_TRANSPORTATION_ID=?");
            ps.setInt(1, _scheduledTransportation.getScheduledTransportationId());
            status = ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static int update(ScheduledTransportation _scheduledTransportation) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("update scheduled_transportation set TRANSPORTATION_ID=?, SCHEDULED_TRANSPORTATION_NAME=? where SCHEDULED_TRANSPORTATION_ID=?");            
            ps.setInt(1, _scheduledTransportation.getTransportationId());
            ps.setString(2, _scheduledTransportation.getScheduledTransportationName());
            ps.setInt(3, _scheduledTransportation.getScheduledTransportationId());
            status = ps.executeUpdate();
        }
        catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static ScheduledTransportation getScheduledTransportationById(String id) throws SQLException {
        ScheduledTransportation sch = null;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM scheduled_transportation WHERE SCHEDULED_TRANSPORTATION_ID=?");
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                sch = new ScheduledTransportation();
                sch.setScheduledTransportationId(rs.getInt("SCHEDULED_TRANSPORTATION_ID"));
                sch.setTransportationId(rs.getInt("TRANSPORTATION_ID"));
                sch.setScheduledTransportationName(rs.getString("SCHEDULED_TRANSPORTATION_NAME"));
            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return sch;
    }
    
    public static List<ScheduledTransportationModes> getScheduledTransportationModes() {
        List<ScheduledTransportationModes> scheduledTransportationModess = new ArrayList<ScheduledTransportationModes>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM scheduled_transportation_modes");
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                ScheduledTransportationModes mod = new ScheduledTransportationModes();
                mod.setTransportationId(rs.getInt("TRANSPORTATION_ID"));
                mod.setTransportationType(rs.getString("TRANSPORTATION_TYPE"));
                scheduledTransportationModess.add(mod);
            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return scheduledTransportationModess;
    }
    
}
