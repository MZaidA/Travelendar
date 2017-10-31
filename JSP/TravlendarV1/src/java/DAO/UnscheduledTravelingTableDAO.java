/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.UnscheduledTravelingTable;
import Model.Location;
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
 * @author Cecep Sutisna
 */
public class UnscheduledTravelingTableDAO {
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
    
    public static List<UnscheduledTravelingTable> getAll() {
        List<UnscheduledTravelingTable> unscheduledTravelingTables = new ArrayList<UnscheduledTravelingTable>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM unscheduled_traveling_table");
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                UnscheduledTravelingTable unst = new UnscheduledTravelingTable();
                unst.setUnscheduledTravelingId(rs.getInt("UNSCHEDULED_TRAVELING_ID"));
                unst.setStartLocationId(rs.getInt("START_LOCATION_ID"));
                unst.setEventLocationId(rs.getInt("EVENT_LOCATION_ID"));
                unst.setUnscheduledTransportationId(rs.getInt("UNSCHEDULED_TRANSPORTATION_ID"));
                unst.setTravelingTime(rs.getLong("TRAVELING_TIME"));
                unscheduledTravelingTables.add(unst);
            }
            
            for(int i = 0; i < unscheduledTravelingTables.size(); i++)
            {
                PreparedStatement ps1 = con.prepareStatement("SELECT * FROM location where LOCATION_ID=?");
                PreparedStatement ps2 = con.prepareStatement("SELECT * FROM location where LOCATION_ID=?");
                PreparedStatement ps3 = con.prepareStatement("SELECT * FROM unscheduled_transportation where UNSCHEDULED_TRANSPORTATION_ID=?");
                ps1.setInt(1, unscheduledTravelingTables.get(i).getStartLocationId());
                ps2.setInt(1, unscheduledTravelingTables.get(i).getEventLocationId());
                ps3.setInt(1, unscheduledTravelingTables.get(i).getUnscheduledTransportationId());
                ResultSet rs1 = ps1.executeQuery();
                ResultSet rs2 = ps2.executeQuery();
                ResultSet rs3 = ps3.executeQuery();
                while(rs1.next()) {
                    unscheduledTravelingTables.get(i).setStartLocationName(rs1.getString("LOCATION_NAME"));
                }
                while(rs2.next()) {
                    unscheduledTravelingTables.get(i).setEventLocationName(rs2.getString("LOCATION_NAME"));
                }
                while(rs3.next()) {
                    unscheduledTravelingTables.get(i).setUnscheduledTransportationType(rs3.getString("UNSCHEDULED_TRANSPORTATION_TYPE"));
                }
            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return unscheduledTravelingTables;
    }
    
    public static int save(UnscheduledTravelingTable _unscheduledTravelingTable) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO unscheduled_traveling_table(START_LOCATION_ID, EVENT_LOCATION_ID, UNSCHEDULED_TRANSPORTATION_ID, TRAVELING_TIME) VALUES(?, ?, ?, ?)");
            ps.setInt(1, _unscheduledTravelingTable.getStartLocationId());
            ps.setInt(2, _unscheduledTravelingTable.getEventLocationId());
            ps.setInt(3, _unscheduledTravelingTable.getUnscheduledTransportationId());
            ps.setLong(4, _unscheduledTravelingTable.getTravelingTime());
            status = ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static int delete(UnscheduledTravelingTable _unscheduledTravelingTable) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("DELETE FROM unscheduled_traveling_table WHERE UNSCHEDULED_TRAVELING_ID=?");
            ps.setInt(1, _unscheduledTravelingTable.getUnscheduledTravelingId());
            status = ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static int update(UnscheduledTravelingTable _unscheduledTravelingTable) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps=con.prepareStatement("update unscheduled_traveling_table set START_LOCATION_ID=?, EVENT_LOCATION_ID=?, UNSCHEDULED_TRANSPORTATION_ID=?, TRAVELING_TIME=? where UNSCHEDULED_TRAVELING_ID=?");
            ps.setInt(1, _unscheduledTravelingTable.getStartLocationId());
            ps.setInt(2, _unscheduledTravelingTable.getEventLocationId());           
            ps.setInt(3, _unscheduledTravelingTable.getUnscheduledTransportationId());
            ps.setLong(4, _unscheduledTravelingTable.getTravelingTime());
            ps.setInt(5, _unscheduledTravelingTable.getUnscheduledTravelingId());
            status = ps.executeUpdate();
        }
        catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static UnscheduledTravelingTable getUnscheduledTravelingTableById(String id) throws SQLException {
        UnscheduledTravelingTable unst = null;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM unscheduled_traveling_table WHERE UNSCHEDULED_TRAVELING_ID=?");
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                unst = new UnscheduledTravelingTable();
                unst.setUnscheduledTravelingId(rs.getInt("UNSCHEDULED_TRAVELING_ID"));
                unst.setStartLocationId(rs.getInt("START_LOCATION_ID"));
                unst.setEventLocationId(rs.getInt("EVENT_LOCATION_ID"));
                unst.setUnscheduledTransportationId(rs.getInt("UNSCHEDULED_TRANSPORTATION_ID"));
                unst.setTravelingTime(rs.getLong("TRAVELING_TIME"));
            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return unst;
    }
    
    public static List<Location> getLocation() {
        List<Location> locations = new ArrayList<Location>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM location");
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                Location loc = new Location();
                loc.setLocationId(rs.getInt("LOCATION_ID"));
                loc.setLocationName(rs.getString("LOCATION_NAME"));
                loc.setAddress(rs.getString("ADDRESS"));
                loc.setDistrictId(rs.getInt("DISTRICT_ID"));
                locations.add(loc);
            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return locations;
    }
    
    public static List<UnscheduledTransportation> getUnscheduledTransportation() {
        List<UnscheduledTransportation> unscheduledTransportations = new ArrayList<UnscheduledTransportation>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM unscheduled_transportation");
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                UnscheduledTransportation ut = new UnscheduledTransportation();
                ut.setUnscheduledTransportationId(rs.getInt("UNSCHEDULED_TRANSPORTATION_ID"));
                ut.setUnscheduledTransportationType(rs.getString("UNSCHEDULED_TRANSPORTATION_TYPE"));
                unscheduledTransportations.add(ut);
            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return unscheduledTransportations;
    }

}
