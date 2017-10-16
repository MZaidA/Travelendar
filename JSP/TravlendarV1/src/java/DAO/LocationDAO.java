/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Location;
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
public class LocationDAO{

    public static Connection getConnection() {
        Connection con = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");  
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/trav", "root", "");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }

    public static List<Location> getAll() {
        List<Location> locations = new ArrayList<Location>();
        try{
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM location");
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                Location loc = new Location();
                loc.setKode(rs.getString("kode"));
                loc.setNama(rs.getString("nama"));
                locations.add(loc);
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
            PreparedStatement ps = con.prepareStatement("INSERT INTO location(kode, nama) VALUES (?, ?)");
            ps.setString(1, _location.getKode());
            ps.setString(2, _location.getNama());
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
            PreparedStatement ps = con.prepareStatement("DELETE FROM location WHERE kode=?");
            ps.setString(1, _location.getKode());
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
            PreparedStatement ps=con.prepareStatement("update location set nama=? where kode=?");  
            ps.setString(1, _location.getNama());
            ps.setString(2, _location.getKode());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static Location getLocationById(String id) throws SQLException {
        Location loc = null;
        try{
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM location WHERE kode=?");
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                loc = new Location();
                loc.setKode(rs.getString("kode"));
                loc.setNama(rs.getString("nama"));
            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return loc;
    }
}
