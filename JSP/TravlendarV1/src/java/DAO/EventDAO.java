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
        try{
            Class.forName("com.mysql.jdbc.Driver");  
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/travtry", "root", "");
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
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM event");
            ResultSet rs = ps.executeQuery();
            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
            
            DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
            DateFormat tf = new SimpleDateFormat("hh:mm:ss");
            while(rs.next()) {
                Event event = new Event();
                event.setEventId(rs.getInt("event_id"));
                event.setEventName(rs.getString("event_name"));
                
                arrival = rs.getString("arrival_time");
                event.setArrivalTime(format.parse(arrival));
                event.setArrivalDateStr(df.format(event.getArrivalTime()));
                event.setArrivalTimeStr(tf.format(event.getArrivalTime()));
                
                end = rs.getString("end_time");
                event.setEndTime(format.parse(end));
                event.setEndDateStr(df.format(event.getEndTime()));
                event.setEndTimeStr(tf.format(event.getEndTime()));
                
                events.add(event);
            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return events;
    }

    public static Event get() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public static int save(Event event) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO event(event_name, arrival_time, end_time, ) VALUES (?, ?, ?)");
            ps.setString(1, event.getEventName());
            ps.setDate(2, (Date) event.getArrivalTime());
            ps.setDate(3, (Date) event.getEndTime());
            status = ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static void update(Event _location) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public static void delete(Event _location) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
