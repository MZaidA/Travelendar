/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import static DAO.ScheduledTransportationDAO.getConnection;
import Model.Event;
import Model.ScheduledTransportationModes;
import com.mysql.jdbc.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import Model.UnscheduledTravelingTable;
import java.sql.Timestamp;

/**
 *
 * @author syamcode
 */
public class SuggestionDAO {
    
    public static Connection getConnection() {
        Connection con = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");  
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/travlendar", "root", "");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }

    public static List<UnscheduledTravelingTable> suggestUnscheduled(int idAwal, int idAkhir, long travelingTime) {
        List<UnscheduledTravelingTable> unscheduledTravelingSuggestions = new ArrayList<UnscheduledTravelingTable>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT "
                    + "unscheduled_traveling_table.UNSCHEDULED_TRANSPORTATION_ID, "
                    + "unscheduled_traveling_table.TRAVELING_TIME, "
                    + "unscheduled_traveling_table.UNSCHEDULED_TRAVELING_ID, "
                    + "unscheduled_transportation.UNSCHEDULED_TRANSPORTATION_TYPE "
                    + "FROM unscheduled_traveling_table "
                    + "INNER JOIN unscheduled_transportation "
                    + "ON unscheduled_traveling_table.UNSCHEDULED_TRANSPORTATION_ID="
                    + "unscheduled_transportation.UNSCHEDULED_TRANSPORTATION_ID "
                    + "WHERE unscheduled_traveling_table.TRAVELING_TIME<=? "
                    + "AND unscheduled_traveling_table.START_LOCATION_ID=? "
                    + "AND unscheduled_traveling_table.EVENT_LOCATION_ID=?");
            ps.setLong(1, travelingTime);
            ps.setInt(2, idAwal);
            ps.setInt(3, idAkhir);
            System.out.println("WUOWOOOWOOWOWOOWOW");
            System.out.println(ps);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                UnscheduledTravelingTable mod = new UnscheduledTravelingTable();
                mod.setUnscheduledTransportationId(rs.getInt("UNSCHEDULED_TRANSPORTATION_ID"));
                mod.setUnscheduledTravelingId(rs.getInt("UNSCHEDULED_TRAVELING_ID"));
                mod.setTravelingTime(rs.getLong("TRAVELING_TIME"));
                mod.setUnscheduledTransportationType(rs.getString("UNSCHEDULED_TRANSPORTATION_TYPE"));
                unscheduledTravelingSuggestions.add(mod);
            }
        }
        catch(Exception e) {
            System.out.println("ERROR: " + e);
        }
        return unscheduledTravelingSuggestions;
    }
    
        public static Event getLastEvent(String dt) {
        Event ev = null;
        try{
            SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy hh:mm");
            java.util.Date date = dateFormat.parse(dt);
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT EVENT_LOCATION_ID, EVENT_FINISHED FROM `event` WHERE TIMEDIFF(?, `EVENT_FINISHED`)>=0 "
                    + "ORDER BY TIMEDIFF(`EVENT_FINISHED`, ?) DESC LIMIT 1");
            ps.setTimestamp(1, new Timestamp(date.getTime()));
            ps.setTimestamp(2, new Timestamp(date.getTime()));
            System.out.println(ps);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                ev = new Event();
                ev.setLocationId(rs.getInt("EVENT_LOCATION_ID"));
                ev.setEndTime(rs.getDate("EVENT_FINISHED"));
            }
        }
        catch(Exception e) {
            System.out.println("ERROR: "+e);
        }
        return ev;
    }
}