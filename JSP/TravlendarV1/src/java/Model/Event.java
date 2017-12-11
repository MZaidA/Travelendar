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
   private String eventName;
   private Date arrivalTime = new Date();
   private String arrivalDateStr;
   private String arrivalTimeStr;
   private Date eventEnd = new Date();
   private String endDateStr;
   private String endTimeStr;
   private Date departureTime = new Date();
   private String departureTimeStr;
   private String departureDateStr;
   private String origin;
   private String destination;
   private String travelMode;
   private Boolean avoidTolls;
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
     * @return the eventName
     */
    public String getEvent_name() {
        return eventName;
    }

    /**
     * @param event_name the eventName to set
     */
    public void setEvent_name(String event_name) {
        this.eventName = event_name;
    }

    /**
     * @return the arrivalTime
     */
    public Date getArrival_time() {
        return arrivalTime;
    }

    /**
     * @param arrival_time the arrivalTime to set
     */
    public void setArrival_time(Date arrival_time) {
        this.arrivalTime = arrival_time;
    }

    /**
     * @return the eventEnd
     */
    public Date getEvent_end() {
        return eventEnd;
    }

    /**
     * @param event_end the eventEnd to set
     */
    public void setEvent_end(Date event_end) {
        this.eventEnd = event_end;
    }

    /**
     * @return the departureTime
     */
    public Date getDeparture_time() {
        return departureTime;
    }

    /**
     * @param departure_time the departureTime to set
     */
    public void setDeparture_time(Date departure_time) {
        this.departureTime = departure_time;
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
     * @return the travelMode
     */
    public String getTravel_mode() {
        return travelMode;
    }

    /**
     * @param travel_mode the travelMode to set
     */
    public void setTravel_mode(String travel_mode) {
        this.travelMode = travel_mode;
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
     * @return the avoidTolls
     */
    public Boolean getAvoid_tolls() {
        return avoidTolls;
    }

    /**
     * @param avoid_tolls the avoidTolls to set
     */
    public void setAvoid_tolls(Boolean avoid_tolls) {
        this.avoidTolls = avoid_tolls;
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
