/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.ScheduledTransportation;
import Model.ScheduledTransportation;
import Model.Location;
import Model.ScheduledTravelingTable;
import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.Date;

/**
 *
 * @author Nino
 */
public class ScheduledTravelingTableDAO {

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
    
    public static List<ScheduledTravelingTable> getAll() {
        List<ScheduledTravelingTable> scheduledTable = new ArrayList<ScheduledTravelingTable>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM scheduled_transportation");
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                ScheduledTravelingTable pub = new ScheduledTravelingTable();
                pub.setScheduledTransportationId(rs.getInt("scheduled_transportation_id"));
                pub.setEventLocationId(rs.getInt("event_location_id"));
                pub.setStartLocationId(rs.getInt("start_location_id"));
                pub.setScheduledTransportationId(rs.getInt("scheduled_transportation_id"));
                pub.setArrivalSchedule(rs.getDate("arrival_schedule"));
                pub.setDepartureSchedule(rs.getDate("departure_schedule"));
                pub.setScheduledTransportationName(rs.getString("scheduled_transportation_name"));
                scheduledTable.add(pub);
            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return scheduledTable;
    }

    public static int save(ScheduledTravelingTable _scheduledTravelingTable) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO scheduled_transportation(scheduled_traveling_id, event_location_id, start_location_id, scheduled_transportation_id, arrival_schedule, departure_schedule, scheduled_transportation_id) VALUES(?, ?, ?, ?, ?, ?, ?)");
            ps.setInt(1, _scheduledTravelingTable.getScheduledTravelingId());
            ps.setInt(2, _scheduledTravelingTable.getEventLocationId());
            ps.setInt(3, _scheduledTravelingTable.getStartLocationId());
            ps.setInt(4, _scheduledTravelingTable.getScheduledTransportationId());
            ps.setDate(5, (Date) _scheduledTravelingTable.getArrivalSchedule());
            ps.setDate(6, (Date) _scheduledTravelingTable.getDepartureSchedule());
            ps.setString(7, _scheduledTravelingTable.getScheduledTransportationName());
            status = ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int delete(ScheduledTravelingTable _scheduledTravelingTable) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("DELETE FROM scheduled_transportation WHERE schedule_traveling_id=?");
            ps.setInt(1, _scheduledTravelingTable.getScheduledTravelingId());
            status = ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static int update(ScheduledTravelingTable stt) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps=con.prepareStatement("update scheduled_transportations set SCHEDULED_TRAVELING_ID=?, EVENT_LOCATION_ID=?, START_LOCATION_ID=?, SCHEDULED_TRANSPORTATION_ID=?, ARRIVAL_SCHEDULE=?, DEPARTURE_SCHEDULE=?, SCHEDULE_TRANSPORTAION_NAME=? where SCHEDULE_TRAVELING_ID=?");
            ps.setInt(1, stt.getScheduledTravelingId());
            ps.setInt(2, stt.getEventLocationId());           
            ps.setInt(3, stt.getStartLocationId());
            ps.setInt(4, stt.getScheduledTransportationId());
            ps.setDate(5, (Date) stt.getArrivalSchedule());
            ps.setDate(6, (Date) stt.getDepartureSchedule());
            ps.setString(7, stt.getScheduledTransportationName());
            status = ps.executeUpdate();
        }
        catch (Exception e) {
            System.out.println(e);
        }
        return status;
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
    
    public static List<ScheduledTransportation> getScheduledTransportation() {
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
    
}
