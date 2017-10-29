/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.PrivateTransportationTraveling;
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
 * @author Cecep Sutisna
 */
public class PrivateTransportationTravelingDAO {
    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/lander_v1.5", "root", "");
        }
        catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }
    
    public static List<PrivateTransportationTraveling> getAll() {
        List<PrivateTransportationTraveling> privateTransportationTravelings = new ArrayList<PrivateTransportationTraveling>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM private_transportation_traveling");
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                PrivateTransportationTraveling priv = new PrivateTransportationTraveling();
                priv.setPrivateTravelingId(rs.getInt("PRIVATE_TRAVELING_ID"));
                priv.setLocationId(rs.getInt("LOCATION_ID"));
                priv.setLocLocationId(rs.getInt("LOC_LOCATION_ID"));
                priv.setPrivateId(rs.getInt("PRIVATE_ID"));
                priv.setTravelingTime(rs.getLong("TRAVELING_TIME"));
                privateTransportationTravelings.add(priv);
            }
            
            for(int i = 0; i < privateTransportationTravelings.size(); i++)
            {
                PreparedStatement ps1 = con.prepareStatement("SELECT * FROM location where LOCATION_ID=?");
                PreparedStatement ps2 = con.prepareStatement("SELECT * FROM location where LOCATION_ID=?");
                PreparedStatement ps3 = con.prepareStatement("SELECT * FROM private_transportation where PRIVATE_ID=?");
                ps1.setInt(1, privateTransportationTravelings.get(i).getLocationId());
                ps2.setInt(1, privateTransportationTravelings.get(i).getLocLocationId());
                ps3.setInt(1, privateTransportationTravelings.get(i).getPrivateId());
                ResultSet rs1 = ps1.executeQuery();
                ResultSet rs2 = ps2.executeQuery();
                ResultSet rs3 = ps3.executeQuery();
                while(rs1.next()) {
                    privateTransportationTravelings.get(i).setLocationName(rs1.getString("LOCATION_NAME"));
                }
                while(rs2.next()) {
                    privateTransportationTravelings.get(i).setLocLocationName(rs2.getString("LOCATION_NAME"));
                }
                while(rs3.next()) {
                    privateTransportationTravelings.get(i).setPrivateType(rs3.getString("PRIVATE_TYPE"));
                }
            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return privateTransportationTravelings;
    }
    
    public static int save(PrivateTransportationTraveling _privateTransportationTraveling) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO private_transportation_traveling(LOCATION_ID, LOC_LOCATION_ID, PRIVATE_ID, TRAVELING_TIME) VALUES(?, ?, ?, ?)");
            ps.setInt(1, _privateTransportationTraveling.getLocationId());
            ps.setInt(2, _privateTransportationTraveling.getLocLocationId());
            ps.setInt(3, _privateTransportationTraveling.getPrivateId());
            ps.setLong(4, _privateTransportationTraveling.getTravelingTime());
            status = ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static int delete(PrivateTransportationTraveling _privateTransportationTraveling) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("DELETE FROM private_transportation_traveling WHERE PRIVATE_TRAVELING_ID=?");
            ps.setInt(1, _privateTransportationTraveling.getPrivateTravelingId());
            status = ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static int update(PrivateTransportationTraveling _privateTransportationTraveling) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps=con.prepareStatement("update private_transportation_traveling set LOCATION_ID=?, LOC_LOCATION_ID=?, PRIVATE_ID=?, TRAVELING_TIME=? where PRIVATE_TRAVELING_ID=?");
            ps.setInt(1, _privateTransportationTraveling.getLocationId());
            ps.setInt(2, _privateTransportationTraveling.getLocLocationId());           
            ps.setInt(3, _privateTransportationTraveling.getPrivateId());
            ps.setLong(4, _privateTransportationTraveling.getTravelingTime());
            ps.setInt(5, _privateTransportationTraveling.getPrivateTravelingId());
            status = ps.executeUpdate();
        }
        catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static PrivateTransportationTraveling getPrivateTravelingById(String id) throws SQLException {
        PrivateTransportationTraveling priv = null;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM private_transportation_traveling WHERE PRIVATE_TRAVELING_ID=?");
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                priv = new PrivateTransportationTraveling();
                priv.setPrivateTravelingId(rs.getInt("PRIVATE_TRAVELING_ID"));
                priv.setLocationId(rs.getInt("LOCATION_ID"));
                priv.setLocLocationId(rs.getInt("LOC_LOCATION_ID"));
                priv.setPrivateId(rs.getInt("PRIVATE_ID"));
                priv.setTravelingTime(rs.getLong("TRAVELING_TIME"));
            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return priv;
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
    
    public static List<PrivateTransportation> getPrivateTransportation() {
        List<PrivateTransportation> privateTransportations = new ArrayList<PrivateTransportation>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM private_transportation");
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                PrivateTransportation pt = new PrivateTransportation();
                pt.setPrivateId(rs.getInt("PRIVATE_ID"));
                pt.setPrivateType(rs.getString("PRIVATE_TYPE"));
                privateTransportations.add(pt);
            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return privateTransportations;
    }

}
