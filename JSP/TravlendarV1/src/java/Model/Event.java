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
   private User username;
   private String event_name;
   private Date arrival_time = new Date();
   private String arrivalDateStr;
   private String arrivalTimeStr;
   private Date event_end = new Date();
   private String endDateStr;
   private String endTimeStr;
   private Date departure_time = new Date();
   private String departureTimeStr;
   private String departureDateStr;
   private String origin;
   private String destination;
   private String travel_mode;
   private Boolean avoid_tolls;
   private String travelName;

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

    public String getArrivalDateStr() {
        return arrivalDateStr;
    }

    public void setArrivalDateStr(String arrivalDateStr) {
        this.arrivalDateStr = arrivalDateStr;
    }

    public String getArrivalTimeStr() {
        return arrivalTimeStr;
    }

    public void setArrivalTimeStr(String arrivalTimeStr) {
        this.arrivalTimeStr = arrivalTimeStr;
    }

    public String getEndDateStr() {
        return endDateStr;
    }

    public void setEndDateStr(String endDateStr) {
        this.endDateStr = endDateStr;
    }

    public String getEndTimeStr() {
        return endTimeStr;
    }

    public void setEndTimeStr(String endTimeStr) {
        this.endTimeStr = endTimeStr;
    }

    public String getDepartureTimeStr() {
        return departureTimeStr;
    }

    public void setDepartureTimeStr(String departureTimeStr) {
        this.departureTimeStr = departureTimeStr;
    }

    public String getDepartureDateStr() {
        return departureDateStr;
    }

    public void setDepartureDateStr(String departureDateStr) {
        this.departureDateStr = departureDateStr;
    }

    /**
     * @return the username
     */
    public User getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(User username) {
        this.username = username;
    }

    /**
     * @return the avoid_tolls
     */
    public Boolean getAvoid_tolls() {
        return avoid_tolls;
    }

    /**
     * @param avoid_tolls the avoid_tolls to set
     */
    public void setAvoid_tolls(Boolean avoid_tolls) {
        this.avoid_tolls = avoid_tolls;
    }

    /**
     * @return the travelName
     */
    public String getTravelName() {
        return travelName;
    }

    /**
     * @param travelName the travelName to set
     */
    public void setTravelName(String travelName) {
        this.travelName = travelName;
    }
    
    
}
