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
import java.sql.Timestamp;
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

    public static List<Event> getAll(String uname) {
        List<Event> events = new ArrayList<Event>();
        try {
            String start;
            String end;
            String departure;
            
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM event WHERE username = ? ORDER BY departure_time ASC");
            //Event epen = new Event();
            //System.out.println(uname);
            ps.setString(1, uname);
            ResultSet rs = ps.executeQuery();
            
            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
            DateFormat tf = new SimpleDateFormat("HH:mm:ss");
            while(rs.next()) {
                Event event = new Event();
                event.setEvent_id(rs.getInt("EVENT_ID"));
                event.setEventLocation(rs.getString("EVENT_LOCATION"));
                event.setEventName(rs.getString("EVENT_NAME"));
                
                //if(rs.getBoolean("AVOID_TOLLS") == true) {
                //    event.setTravelName("Motor");
                //} else {
                //    event.setTravelName("Motor");
                //}
                event.setTravelMode(rs.getString("TRAVEL_MODE"));
                
                start = rs.getString("START_TIME");
                event.setStartTime(format.parse(start)); //menyamakan format sesuai yang ada pada database
                event.setStartDateStr(df.format(event.getStartTime())); //membuat date bertipe string agar dapat dibaca JSON
                event.setStartTimeStr(tf.format(event.getStartTime())); //membuat time bertipe string agar dapat dibaca JSON
                
                end = rs.getString("END_TIME");
                event.setEndTime(format.parse(end));
                event.setEndDateStr(df.format(event.getEndTime()));
                event.setEndTimeStr(tf.format(event.getEndTime()));
                
               departure = rs.getString("DEPARTURE_TIME");
               event.setDepartureTime(format.parse(departure));
               event.setDepartureDateStr(df.format(event.getDepartureTime()));
               event.setDepartureTimeStr(tf.format(event.getDepartureTime()));
               
               events.add(event);
            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return events;
    }

public static Event get(int id) {
        Event event = null;
        try {
            String start;
            String end;
            String departure;
            
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM event WHERE EVENT_ID=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            
            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
            DateFormat tf = new SimpleDateFormat("HH:mm:ss");
            while(rs.next()) {
                event = new Event();
                event.setEvent_id(rs.getInt("EVENT_ID"));
                event.setEventLocation(rs.getString("EVENT_LOCATION"));
                event.setEventName(rs.getString("EVENT_NAME"));
                
                //if(rs.getBoolean("AVOID_TOLLS") == true) {
                //    event.setTravelName("Motor");
                //} else {
                //    event.setTravelName("Motor");
                //}
                event.setTravelMode(rs.getString("TRAVEL_MODE"));
                
                start = rs.getString("START_TIME");
                event.setStartTime(format.parse(start)); //menyamakan format sesuai yang ada pada database
                event.setStartDateStr(df.format(event.getStartTime())); //membuat date bertipe string agar dapat dibaca JSON
                event.setStartTimeStr(tf.format(event.getStartTime())); //membuat time bertipe string agar dapat dibaca JSON
                
                end = rs.getString("EVENT_END");
                event.setEndTime(format.parse(end));
                event.setEndDateStr(df.format(event.getEndTime()));
                event.setEndTimeStr(tf.format(event.getEndTime()));
                
               departure = rs.getString("DEPARTURE_TIME");
               event.setDepartureTime(format.parse(departure));
               event.setDepartureDateStr(df.format(event.getDepartureTime()));
               event.setDepartureTimeStr(tf.format(event.getDepartureTime()));
               
            }
          }
        catch(Exception e) {
            System.out.println(e);
        }
        return event;
    }

    public static int save(Event event) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO event(USERNAME, EVENT_NAME, ARRIVAL_AT_LOCATION, END_TIME, DEPARTURE_LOCATION, EVENT_LOCATION, TRAVEL_MODE, DEPARTURE_TIME) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
            ps.setString(1, event.getUsername().getUsername());
            ps.setString(2, event.getEventName());
            ps.setTimestamp(3, new Timestamp(event.getStartTime().getTime()));
            ps.setTimestamp(4, new Timestamp(event.getEndTime().getTime()));
            
            ps.setString(5, event.getDepartureLocation());
            ps.setString(6, event.getEventLocation());
            ps.setString(7, event.getTravelMode());
            ps.setTimestamp(8, new Timestamp(event.getDepartureTime().getTime()));
            //ps.setBoolean(9, event.getAvoidTolls());
            status = ps.executeUpdate();
            System.out.println(ps);
        }
        catch(Exception e) {
            System.out.println("jhhjjii"+e);
        }
        return status;
    }

    public static int update(Event event) {
                int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("UPDATE event set USERNAME=?, EVENT_NAME=?, START_TIME=?, END_TIME=?, DEPARTURE_TIME=?, DEPARTURE_LOCATION=?, EVENT_LOCATION=?, TRAVEL_MODE=?, AVOID_TOLLS=? WHERE EVENT_ID=?");
            ps.setString(1, event.getUsername().getUsername());
            ps.setString(2, event.getEventName());
            ps.setTimestamp(3, new Timestamp(event.getStartTime().getTime()));
            ps.setTimestamp(4, new Timestamp(event.getEndTime().getTime()));
            ps.setTimestamp(5, new Timestamp(event.getDepartureTime().getTime()));
            ps.setString(6, event.getDepartureLocation());
            ps.setString(7, event.getEventLocation());
            ps.setString(8, event.getTravelMode());
            ps.setBoolean(9, event.getAvoidTolls());
            System.out.print(ps);
            status = ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }

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
    
    public static Event getLastEvent(String uname) {
        Event last = new Event();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM event WHERE username = ? ORDER BY departure_time ASC LIMIT 1");
            ps.setString(1, uname);
            ResultSet rs = ps.executeQuery();
            
            last.setDepartureLocation(rs.getString("DEPARTURE_LOCATION"));
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return last;
    }
    
}
