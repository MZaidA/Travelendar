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
   private Date departureTime = new Date();
   private String departureTimeStr;
   private String departureDateStr;
   private String departureDateTimeStr;
   private String startDateStr;
   private String startTimeStr;
   private String startDateTimeStr;
   private Date endTime = new Date();
   private String endDateStr;
   private String endTimeStr;
   private String endDateTimeStr;
   private Date startTime = new Date();

   private String departureLocation;
   private String eventLocation;
   private String travelMode;
   private Boolean avoidTolls;
   private String summary;

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
    public String getEventName() {
        return eventName;
    }

    /**
     * @param event_name the eventName to set
     */
    public void setEventName(String event_name) {
        this.eventName = event_name;
    }

    /**
     * @return the departureTime
     */
    public Date getDepartureTime() {
        return departureTime;
    }

    /**
     * @param Departure_time the departureTime to set
     */
    public void setDepartureTime(Date departure_time) {
        this.departureTime = departure_time;
    }

    /**
     * @return the endTime
     */
    public Date getEndTime() {
        return endTime;
    }

    /**
     * @param end_time the eventEnd to set
     */
    public void setEndTime(Date end_time) {
        this.endTime = end_time;
    }

    /**
     * @return the startTime
     */
    public Date getStartTime() {
        return startTime;
    }

    /**
     * @param start_time the departureTime to set
     */
    public void setStartTime(Date start_time) {
        this.startTime = start_time;
    }

    /**
     * @return the origin
     */
    public String getDepartureLocation() {
        return departureLocation;
    }

    /**
     * @param departure_location
     */
    public void setDepartureLocation(String departure_location) {
        this.departureLocation = departure_location;
    }

    /**
     * @return the eventLocation
     */
    public String getEventLocation() {
        return eventLocation;
    }

    /**
     * @param event_location
     */
    public void setEventLocation(String event_location) {
        this.eventLocation = event_location;
    }

    /**
     * @return the travelMode
     */
    public String getTravelMode() {
        return travelMode;
    }

    /**
     * @param travel_mode the travelMode to set
     */
    public void setTravelMode(String travel_mode) {
        this.travelMode = travel_mode;
    }

    public String getStartDateStr() {
        return startDateStr;
    }

    public void setStartDateStr(String startDateStr) {
        this.startDateStr = startDateStr;
    }
    
    public void setDepartureDateTimeStr(String departureDateTimeStr) {
        this.departureDateTimeStr = departureDateTimeStr;
    }
    
    public void setEndDateTimeStr(String endDateTimeStr) {
        this.endDateTimeStr = endDateTimeStr;
    }

    public void setStartDateTimeStr(String startDateTimeStr) {
        this.startDateTimeStr = startDateTimeStr;
    }
    
    public String getDepartureDateTimeStr() {
        return departureDateTimeStr;
    }
    
    public String getEndDateTimeStr() {
        return endDateTimeStr;
    }

    public String getStartDateTimeStr() {
        return startDateTimeStr;
    }
    
    public String getStartTimeStr() {
        return startTimeStr;
    }

    public void setStartTimeStr(String startTimeStr) {
        this.startTimeStr = startTimeStr;
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
    public Boolean getAvoidTolls() {
        return avoidTolls;
    }

    /**
     * @param avoid_tolls the avoidTolls to set
     */
    public void setAvoidTolls(Boolean avoid_tolls) {
        this.avoidTolls = avoid_tolls;
    }

    /**
     * @return the travelName
     */
    public String getSummary() {
        return summary;
    }

    /**
     * @param summary
     */
    public void setSummary(String summary) {
        this.summary = summary;
    } 
}