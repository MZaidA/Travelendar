/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.Date;

/**
 *
 * @author Salam שלום
 */
public class Event {
   private Integer event_id;
   private String event_name;
   private Date arrival_time = new Date();
   private Date event_end = new Date();
   private Date departure_time = new Date();
   private String origin;
   private String destination;
   private String travel_mode;
   private Boolean avoid_tools;

    /**
     * @return the event_id
     */
    public Integer getEvent_id() {
        return event_id;
    }

    /**
     * @param event_id the event_id to set
     */
    public void setEvent_id(Integer event_id) {
        this.event_id = event_id;
    }

    /**
     * @return the event_name
     */
    public String getEvent_name() {
        return event_name;
    }

    /**
     * @param event_name the event_name to set
     */
    public void setEvent_name(String event_name) {
        this.event_name = event_name;
    }

    /**
     * @return the arrival_time
     */
    public Date getArrival_time() {
        return arrival_time;
    }

    /**
     * @param arrival_time the arrival_time to set
     */
    public void setArrival_time(Date arrival_time) {
        this.arrival_time = arrival_time;
    }

    /**
     * @return the event_end
     */
    public Date getEvent_end() {
        return event_end;
    }

    /**
     * @param event_end the event_end to set
     */
    public void setEvent_end(Date event_end) {
        this.event_end = event_end;
    }

    /**
     * @return the departure_time
     */
    public Date getDeparture_time() {
        return departure_time;
    }

    /**
     * @param departure_time the departure_time to set
     */
    public void setDeparture_time(Date departure_time) {
        this.departure_time = departure_time;
    }

    /**
     * @return the origin
     */
    public String getOrigin() {
        return origin;
    }

    /**
     * @param origin the origin to set
     */
    public void setOrigin(String origin) {
        this.origin = origin;
    }

    /**
     * @return the destination
     */
    public String getDestination() {
        return destination;
    }

    /**
     * @param destination the destination to set
     */
    public void setDestination(String destination) {
        this.destination = destination;
    }

    /**
     * @return the travel_mode
     */
    public String getTravel_mode() {
        return travel_mode;
    }

    /**
     * @param travel_mode the travel_mode to set
     */
    public void setTravel_mode(String travel_mode) {
        this.travel_mode = travel_mode;
    }

    /**
     * @return the avoid_tools
     */
    public Boolean getAvoid_tools() {
        return avoid_tools;
    }

    /**
     * @param avoid_tools the avoid_tools to set
     */
    public void setAvoid_tools(Boolean avoid_tools) {
        this.avoid_tools = avoid_tools;
    }
}
