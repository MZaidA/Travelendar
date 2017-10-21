/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.PublicTransportation;
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
public class PublicTransportationDAO {

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
    
    public static List<PublicTransportation> getAll() {
        List<PublicTransportation> publicTransportations = new ArrayList<PublicTransportation>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM public_transportation");
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                PublicTransportation pub = new PublicTransportation();
                pub.setPublicId(rs.getInt("PUBLIC_ID"));
                pub.setPublicType(rs.getString("PUBLIC_TYPE"));
                pub.setPublicName(rs.getString("PUBLIC_NAME"));
                publicTransportations.add(pub);
            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return publicTransportations;
    }

    public static int save(PublicTransportation _publicTransportation) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO public_transportation(PUBLIC_TYPE, PUBLIC_NAME) VALUES(?, ?)");
            ps.setString(1, _publicTransportation.getPublicType());
            ps.setString(2, _publicTransportation.getPublicName());
            status = ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int delete(PublicTransportation _publicTransportation) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("DELETE FROM public_transportation WHERE PUBLIC_ID=?");
            ps.setInt(1, _publicTransportation.getPublicId());
            status = ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static int update(PublicTransportation _publicTransportation) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("update public_transportation set PUBLIC_TYPE=?, PUBLIC_NAME=? where PUBLIC_ID=?");  
            
            ps.setString(1, _publicTransportation.getPublicType());
            ps.setString(2, _publicTransportation.getPublicName());           
            ps.setInt(3, _publicTransportation.getPublicId());
            status = ps.executeUpdate();
        }
        catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static PublicTransportation getPublicTransportationById(String id) throws SQLException {
        PublicTransportation pub = null;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM public_transportation WHERE PUBLIC_ID=?");
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                pub = new PublicTransportation();
                pub.setPublicId(rs.getInt("PUBLIC_ID"));
                pub.setPublicType(rs.getString("PUBLIC_TYPE"));
                pub.setPublicName(rs.getString("PUBLIC_NAME"));
            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return pub;
    }
    
}
