/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Event;
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
 * @author syamcode
 */
public class EventDAO {

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");  
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/maps_location", "root", "");
        }
        catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }

    public static List<Event> getAll() {
        List<Event> events = new ArrayList<Event>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM events");
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                Event loc = new Event();
                loc.setId(rs.getInt("id"));
                loc.setStartName(rs.getString("start_name"));
                loc.setEndName(rs.getString("end_name"));
                loc.setLatStart(rs.getFloat("lat_start"));
                loc.setLngStart(rs.getFloat("lng_start"));
                loc.setLatEnd(rs.getFloat("lat_end"));
                loc.setLngEnd(rs.getFloat("lng_end"));
                events.add(loc);
            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return events;
    }
    
    public static int save(Event _event) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO events(start_name, lat_start, lng_start, end_name, lat_end, lng_end, distance, avoid_tolls) VALUES(?, ?, ?, ?, ?, ?, ?, ?)");
            ps.setString(1, _event.getStartName());
            ps.setFloat(2, _event.getLatStart());
            ps.setFloat(3, _event.getLngStart());
            ps.setString(4, _event.getEndName());
            ps.setFloat(5, _event.getLatEnd());
            ps.setFloat(6, _event.getLngEnd()); 
            ps.setFloat(7, _event.getDistance()); 
            ps.setBoolean(8, _event.isAvoidTolls()); 
            status = ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }

//    public static int delete(Location _location) {
//        int status = 0;
//        try {
//            Connection con = getConnection();
//            PreparedStatement ps4 = con.prepareStatement("DELETE FROM unscheduled_traveling_table WHERE (EVENT_LOCATION_ID = ?) OR (START_LOCATION_ID =?)");
//            PreparedStatement ps2 = con.prepareStatement("DELETE FROM event WHERE EVENT_LOCATION_ID=?");
//            PreparedStatement ps3 = con.prepareStatement("DELETE FROM event WHERE START_LOCATION_ID=?");
//            PreparedStatement ps = con.prepareStatement("DELETE FROM location WHERE LOCATION_ID=?");
//            ps4.setInt(1, _location.getLocationId());
//            ps4.setInt(2, _location.getLocationId());
//            ps2.setInt(1, _location.getLocationId());
//            ps3.setInt(1, _location.getLocationId());
//            ps.setInt(1, _location.getLocationId());
//            ps4.executeUpdate();
//            ps2.executeUpdate();
//            ps3.executeUpdate();
//            status = ps.executeUpdate();
//        }
//        catch(Exception e) {
//            System.out.println(e);
//        }
//        return status;
//    }
    
//    public static int update(Location _location) {
//        int status = 0;
//        try {
//            Connection con = getConnection();
//            PreparedStatement ps=con.prepareStatement("update location set LOCATION_NAME=?, ADDRESS=?, DISTRICT_ID=? where LOCATION_ID=?");
//            ps.setString(1, _location.getLocationName());
//            ps.setString(2, _location.getAddress());           
//            ps.setInt(3, _location.getDistrictId());
//            ps.setInt(4, _location.getLocationId());
//            status = ps.executeUpdate();
//        } catch (Exception e) {
//            System.out.println(e);
//        }
//        return status;
//    }
    
    public static Event getEventById(int id) throws SQLException {
        Event loc = null;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM events WHERE id=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                loc = new Event();
                loc.setStartName(rs.getString("start_name"));
                loc.setEndName(rs.getString("end_name"));
                loc.setLatStart(rs.getFloat("lat_start"));
                loc.setLngStart(rs.getFloat("lng_start"));
                loc.setLatEnd(rs.getFloat("lat_end"));
                loc.setLngEnd(rs.getFloat("lng_end"));
                loc.setDistance(rs.getFloat("distance"));
                loc.setAvoidTolls(rs.getBoolean("avoid_tolls"));
            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return loc;
    }
    
//    public static List<District> getDistrict() {
//        List<District> districts = new ArrayList<District>();
//        try {
//            Connection con = getConnection();
//            PreparedStatement ps = con.prepareStatement("SELECT * FROM district");
//            ResultSet rs = ps.executeQuery();
//            while(rs.next()) {
//                District dis = new District();
//                dis.setDistrictId(rs.getInt("DISTRICT_ID"));
//                dis.setDistrictName(rs.getString("DISTRICT_NAME"));
//                dis.setProvinceId(rs.getInt("PROVINCE_ID"));
//                districts.add(dis);
//            }
//        }
//        catch(Exception e) {
//            System.out.println(e);
//        }
//        return districts;
//    }
}
