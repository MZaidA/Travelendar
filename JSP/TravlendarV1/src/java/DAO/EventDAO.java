/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Event;
import com.mysql.jdbc.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author afadh
 */
public class EventDAO{

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");  
            con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/travlendar", "root", "");
        } catch(Exception e) {
            System.out.println(e);
        }
        return con;
    }

    public static List<Event> getAll() {
        List<Event> events = new ArrayList<Event>();
        try {
            String arrival;
            String end;
            String departure;
            
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM event WHERE USERNAME='usermane' ORDER BY departure_time ASC");
            //Event epen = new Event();
            //ps.setString(1, epen.getUsername().getUsername());
            ResultSet rs = ps.executeQuery();
            
            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
            DateFormat tf = new SimpleDateFormat("HH:mm:ss");
            while(rs.next()) {
                Event event = new Event();
                event.setEvent_id(rs.getInt("EVENT_ID"));
                event.setDestination(rs.getString("DESTINATION"));
                event.setEvent_name(rs.getString("EVENT_NAME"));
                
                if(rs.getBoolean("AVOID_TOLLS") == true) {
                    event.setTravelName("Motor");
                } else {
                    event.setTravelName("Motor");
                }
                
                arrival = rs.getString("ARRIVAL_TIME");
                event.setArrival_time(format.parse(arrival)); //menyamakan format sesuai yang ada pada database
                event.setArrivalDateStr(df.format(event.getArrival_time())); //membuat date bertipe string agar dapat dibaca JSON
                event.setArrivalTimeStr(tf.format(event.getArrival_time())); //membuat time bertipe string agar dapat dibaca JSON
                
                end = rs.getString("EVENT_END");
                event.setEvent_end(format.parse(end));
                event.setEndDateStr(df.format(event.getEvent_end()));
                event.setEndTimeStr(tf.format(event.getEvent_end()));
                
               departure = rs.getString("DEPARTURE_TIME");
               event.setDeparture_time(format.parse(departure));
               event.setDepartureDateStr(df.format(event.getDeparture_time()));
               event.setDepartureTimeStr(tf.format(event.getDeparture_time()));
               
               events.add(event);
            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return events;
    }

//    public static Event get(int id) {
//        Event event = null;
//        try{
//            String arrival;
//            String end;
//            Connection con = getConnection();
//            PreparedStatement ps = con.prepareStatement("SELECT * FROM event WHERE EVENT_ID=?");
//            ps.setInt(1, id);
//            ResultSet rs = ps.executeQuery();
//            
//            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//            DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
//            DateFormat tf = new SimpleDateFormat("HH:mm:ss");
//            while(rs.next()) {
//                event = new Event();
//                event.setEventId(rs.getInt("EVENT_ID"));
//		event.setLocationId(rs.getInt("LOCATION_ID"));
//		event.setLoc2Id(rs.getInt("LOC_LOCATION_ID"));
//                event.setEventName(rs.getString("EVENT_NAME"));
//                
//                arrival = rs.getString("ARRIVAL_AT_LOCATION");
//                event.setArrivalTime(format.parse(arrival));
//                event.setArrivalDateStr(df.format(event.getArrivalTime()));
//                event.setArrivalTimeStr(tf.format(event.getArrivalTime()));
//                
//                end = rs.getString("EVENT_FINISHED");
//                event.setEndTime(format.parse(end));
//                event.setEndDateStr(df.format(event.getEndTime()));
//                event.setEndTimeStr(tf.format(event.getEndTime()));
//                
//                event.setDescription(rs.getString("DESCRIPTION"));
//            }
//        }
//        catch(Exception e) {
//            System.out.println(e);
//        }
//        return event;
//    }

    public static int save(Event event) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO event(EVENT_NAME, NAME_DESTINATION, NAME_ORIGIN, ARRIVAL_TIME, EVENT_END, TRAVEL_MODE) VALUES (?, ?, ?, ?, ?, ?)");
            ps.setString(1, event.getEvent_name());
            ps.setString(2, event.getDestination());
            ps.setString(3, event.getOrigin());
            //ps.setDate(4, new Date(event.getArrivalTime().getTime()));
            //ps.setDate(5, new Date(event.getDestination()));
            //ps.setString(6, event.getDescription());
            ps.setString(6, event.getTravel_mode());
//            ps.setDate(7, new Date(event.getDepartureToLocation().getTime()));
            status = ps.executeUpdate();
            System.out.println(ps);
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }

//    public static int update(Event event) {
//                int status = 0;
//        try {
//            Connection con = getConnection();
//            PreparedStatement ps = con.prepareStatement("UPDATE event set EVENT_NAME=?, EVENT_LOCATION_ID=?, START_LOCATION_ID=?, ARRIVAL_AT_LOCATION=?, EVENT_FINISHED=?, DESCRIPTION=? UNSCHEDULED_TRANSPORTATION_ID=? WHERE EVENT_ID=?");
//            ps.setString(1, event.getEventName());
//            ps.setInt(2, event.getEndLocation());
//            ps.setInt(3, event.getLoc2Id());
//            ps.setDate(4, (Date) event.getArrivalTime());
//            ps.setDate(5, (Date) event.getEndTime());
//            ps.setString(6, event.getDescription());
//            ps.setInt(7, event.getUnscheduled_id());
//            ps.setInt(8, event.getEventId());
//            System.out.print(ps);
//            status = ps.executeUpdate();
//        }
//        catch(Exception e) {
//            System.out.println(e);
//        }
//        return status;
//    }

    public static int delete(Event event) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("DELETE FROM event WHERE EVENT_ID=?");
            ps.setInt(1, event.getEvent_id());
            status = ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
}
