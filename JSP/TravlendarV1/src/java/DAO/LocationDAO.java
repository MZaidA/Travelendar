/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Location;
import Model.District;
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
public class LocationDAO {

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");  
            con = (Connection) DriverManager.getConnection("jdbc:mysql://sql12.freesqldatabase.com/sql12202281", "sql12202281", "vhcYQzrnci");
        }
        catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }

    public static List<Location> getAll() {
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
            for(int i = 0; i < locations.size(); i++) {
                PreparedStatement ps1 = con.prepareStatement("SELECT * FROM district where DISTRICT_ID=?");
                ps1.setInt(1, locations.get(i).getDistrictId());
                ResultSet rs1 = ps1.executeQuery();
                while(rs1.next()) {
                    locations.get(i).setDistrictName(rs1.getString("DISTRICT_NAME"));
                }
            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return locations;
    }
    
    public static int save(Location _location) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO location(LOCATION_NAME, ADDRESS, DISTRICT_ID) VALUES(?, ?, ?)");
            ps.setString(1, _location.getLocationName());
            ps.setString(2, _location.getAddress());
            ps.setInt(3, _location.getDistrictId());
            status = ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int delete(Location _location) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps4 = con.prepareStatement("DELETE FROM unscheduled_traveling_table WHERE (EVENT_LOCATION_ID = ?) OR (START_LOCATION_ID =?)");
            PreparedStatement ps2 = con.prepareStatement("DELETE FROM event WHERE EVENT_LOCATION_ID=?");
            PreparedStatement ps3 = con.prepareStatement("DELETE FROM event WHERE START_LOCATION_ID=?");
            PreparedStatement ps = con.prepareStatement("DELETE FROM location WHERE LOCATION_ID=?");
            ps4.setInt(1, _location.getLocationId());
            ps4.setInt(2, _location.getLocationId());
            ps2.setInt(1, _location.getLocationId());
            ps3.setInt(1, _location.getLocationId());
            ps.setInt(1, _location.getLocationId());
            ps4.executeUpdate();
            ps2.executeUpdate();
            ps3.executeUpdate();
            status = ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static int update(Location _location) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps=con.prepareStatement("update location set LOCATION_NAME=?, ADDRESS=?, DISTRICT_ID=? where LOCATION_ID=?");
            ps.setString(1, _location.getLocationName());
            ps.setString(2, _location.getAddress());           
            ps.setInt(3, _location.getDistrictId());
            ps.setInt(4, _location.getLocationId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static Location getLocationById(String id) throws SQLException {
        Location loc = null;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM location WHERE LOCATION_ID=?");
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                loc = new Location();
                loc.setLocationId(rs.getInt("LOCATION_ID"));
                loc.setLocationName(rs.getString("LOCATION_NAME"));
                loc.setAddress(rs.getString("ADDRESS"));
                loc.setDistrictId(rs.getInt("DISTRICT_ID"));
            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return loc;
    }
    
    public static List<District> getDistrict() {
        List<District> districts = new ArrayList<District>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM district");
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                District dis = new District();
                dis.setDistrictId(rs.getInt("DISTRICT_ID"));
                dis.setDistrictName(rs.getString("DISTRICT_NAME"));
                dis.setProvinceId(rs.getInt("PROVINCE_ID"));
                districts.add(dis);
            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return districts;
    }
}
