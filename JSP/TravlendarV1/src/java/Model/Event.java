/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import javafx.util.Pair;

/**
 *
 * @author syamcode
 */
public class Event {

    /**
     * @return the travelingMode
     */
    public String getTravelingMode() {
        return travelingMode;
    }

    /**
     * @param travelingMode the travelingMode to set
     */
    public void setTravelingMode(String travelingMode) {
        this.travelingMode = travelingMode;
    }
    private Integer eventId;
    private String endLocation;
    private String startLocation;
    private String eventName;
    
    private Date endTime = new Date();
    private String endTimeStr;
    private String endDateStr;
    
    private Date arrivalTime = new Date();
    private String arrivalDateStr;
    private String arrivalTimeStr;
    
    private Date departureToLocation = new Date();
    private String departureDateStr;
    private String departureTimeStr;

    private Location location;
    private String description;

   private Integer unscheduled_id;
    private List<Suggestion> suggestions = new ArrayList<Suggestion>();
    private String travelingMode;
    /**
     * @return the eventId
     */
    public Integer getEventId() {
        return eventId;
    }

    /**
     * @param eventId the eventId to set
     */
    public void setEventId(Integer eventId) {
        this.eventId = eventId;
    }

    /**
     * @return the endLocation
     */
    public String getEndLocation() {
        return endLocation;
    }

    /**
     * @param endLocation the endLocation to set
     */
    public void setEndLocation(String endLocation) {
        this.endLocation = endLocation;
    }

    /**
     * @return the startLocation
     */
    public String getStartLocation() {
        return startLocation;
    }

    /**
     * @param startLocation the startLocation to set
     */
    public void setStartLocation(String startLocation) {
        this.startLocation = startLocation;
    }

    /**
     * @return the eventName
     */
    public String getEventName() {
        return eventName;
    }

    /**
     * @param eventName the eventName to set
     */
    public void setEventName(String eventName) {
        this.eventName = eventName;
    }

    /**
     * @return the endTime
     */
    public Date getEndTime() {
        return endTime;
    }

    /**
     * @param endTime the endTime to set
     */
    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    /**
     * @return the endTimeStr
     */
    public String getEndTimeStr() {
        return endTimeStr;
    }

    /**
     * @param endTimeStr the endTimeStr to set
     */
    public void setEndTimeStr(String endTimeStr) {
        this.endTimeStr = endTimeStr;
    }

    /**
     * @return the endDateStr
     */
    public String getEndDateStr() {
        return endDateStr;
    }

    /**
     * @param endDateStr the endDateStr to set
     */
    public void setEndDateStr(String endDateStr) {
        this.endDateStr = endDateStr;
    }

    /**
     * @return the arrivalTime
     */
    public Date getArrivalTime() {
        return arrivalTime;
    }

    /**
     * @param arrivalTime the arrivalTime to set
     */
    public void setArrivalTime(Date arrivalTime) {
        this.arrivalTime = arrivalTime;
    }

    /**
     * @return the arrivalDateStr
     */
    public String getArrivalDateStr() {
        return arrivalDateStr;
    }

    /**
     * @param arrivalDateStr the arrivalDateStr to set
     */
    public void setArrivalDateStr(String arrivalDateStr) {
        this.arrivalDateStr = arrivalDateStr;
    }

    /**
     * @return the arrivalTimeStr
     */
    public String getArrivalTimeStr() {
        return arrivalTimeStr;
    }

    /**
     * @param arrivalTimeStr the arrivalTimeStr to set
     */
    public void setArrivalTimeStr(String arrivalTimeStr) {
        this.arrivalTimeStr = arrivalTimeStr;
    }

    /**
     * @return the departureToLocation
     */
    public Date getDepartureToLocation() {
        return departureToLocation;
    }

    /**
     * @param departureToLocation the departureToLocation to set
     */
    public void setDepartureToLocation(Date departureToLocation) {
        this.departureToLocation = departureToLocation;
    }

    /**
     * @return the departureDateStr
     */
    public String getDepartureDateStr() {
        return departureDateStr;
    }

    /**
     * @param departureDateStr the departureDateStr to set
     */
    public void setDepartureDateStr(String departureDateStr) {
        this.departureDateStr = departureDateStr;
    }

    /**
     * @return the departureTimeStr
     */
    public String getDepartureTimeStr() {
        return departureTimeStr;
    }

    /**
     * @param departureTimeStr the departureTimeStr to set
     */
    public void setDepartureTimeStr(String departureTimeStr) {
        this.departureTimeStr = departureTimeStr;
    }

    /**
     * @return the location
     */
    public Location getLocation() {
        return location;
    }

    /**
     * @param location the location to set
     */
    public void setLocation(Location location) {
        this.location = location;
    }

    /**
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * @return the unscheduled_id
     */
    public Integer getUnscheduled_id() {
        return unscheduled_id;
    }

    /**
     * @param unscheduled_id the unscheduled_id to set
     */
    public void setUnscheduled_id(Integer unscheduled_id) {
        this.unscheduled_id = unscheduled_id;
    }

    /**
     * @return the suggestions
     */
    public List<Suggestion> getSuggestions() {
        return suggestions;
    }

    /**
     * @param suggestions the suggestions to set
     */
    public void setSuggestions(List<Suggestion> suggestions) {
        this.suggestions = suggestions;
    }
    
}
