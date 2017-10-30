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
public class EventDAO {

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

    public static List<Event> getAll() {
        List<Event> events = new ArrayList<Event>();
        try{
            String arrival;
            String end;
            String departure;
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM event");
            ResultSet rs = ps.executeQuery();
            
            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
            DateFormat tf = new SimpleDateFormat("HH:mm:ss");
            while(rs.next()) {
                Event event = new Event();
                event.setEventId(rs.getInt("EVENT_ID"));
                event.setLocationId(rs.getInt("START_LOCATION_ID"));
                event.setLoc2Id(rs.getInt("EVENT_LOCATION_ID"));
                event.setEventName(rs.getString("EVENT_NAME"));
                
                arrival = rs.getString("ARRIVAL_AT_LOCATION");
                event.setArrivalTime(format.parse(arrival)); //menyamakan format sesuai yang ada pada database
                event.setArrivalDateStr(df.format(event.getArrivalTime())); //membuat date bertipe string agar dapat dibaca JSON
                event.setArrivalTimeStr(tf.format(event.getArrivalTime())); //membuat time bertipe string agar dapat dibaca JSON
                
                end = rs.getString("EVENT_FINISHED");
                event.setEndTime(format.parse(end));
                event.setEndDateStr(df.format(event.getEndTime()));
                event.setEndTimeStr(tf.format(event.getEndTime()));
                
               departure = rs.getString("DEPARTURE_TO_LOCATION");
               event.setDepartureToLocation(format.parse(departure));
               event.setDepartureDateStr(df.format(event.getDepartureToLocation()));
               event.setDepartureTimeStr(tf.format(event.getDepartureToLocation()));
               
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
        try{
            String arrival;
            String end;
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM event WHERE EVENT_ID=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            
            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
            DateFormat tf = new SimpleDateFormat("HH:mm:ss");
            while(rs.next()) {
                event = new Event();
                event.setEventId(rs.getInt("EVENT_ID"));
		event.setLocationId(rs.getInt("LOCATION_ID"));
		event.setLoc2Id(rs.getInt("LOC_LOCATION_ID"));
                event.setEventName(rs.getString("EVENT_NAME"));
                
                arrival = rs.getString("ARRIVAL_AT_LOCATION");
                event.setArrivalTime(format.parse(arrival));
                event.setArrivalDateStr(df.format(event.getArrivalTime()));
                event.setArrivalTimeStr(tf.format(event.getArrivalTime()));
                
                end = rs.getString("EVENT_FINISHED");
                event.setEndTime(format.parse(end));
                event.setEndDateStr(df.format(event.getEndTime()));
                event.setEndTimeStr(tf.format(event.getEndTime()));
                
                event.setDescription(rs.getString("DESCRIPTION"));
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
            PreparedStatement ps = con.prepareStatement("INSERT INTO event(EVENT_NAME, LOCATION_ID, LOC_LOCATION_ID, ARRIVAL_AT_LOCATION, EVENT_FINISHED, DESCRIPTION) VALUES (?, ?, ?, ?, ?, ?)");
            ps.setString(1, event.getEventName());
            ps.setInt(2, event.getLocationId());
            ps.setInt(3, event.getLoc2Id());
            ps.setDate(4, new Date(event.getArrivalTime().getTime()));
            ps.setDate(5, new Date(event.getEndTime().getTime()));
            ps.setString(6, event.getDescription());
            status = ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int update(Event event) {
                int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("UPDATE event set EVENT_NAME=?, LOCATION_ID=?, LOC_LOCATION_ID=?, ARRIVAL_AT_LOCATION=?, EVENT_FINISHED=?, DESCRIPTION=? WHERE EVENT_ID=?");
            ps.setString(1, event.getEventName());
            ps.setInt(2, event.getLocationId());
            ps.setInt(3, event.getLoc2Id());
            ps.setDate(4, (Date) event.getArrivalTime());
            ps.setDate(5, (Date) event.getEndTime());
            ps.setString(6, event.getDescription());
            ps.setInt(7, event.getEventId());
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
            ps.setInt(1, event.getEventId());
            status = ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }
   
}
