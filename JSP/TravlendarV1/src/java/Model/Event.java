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
    private Integer eventId;
    private Integer locationId;
    private Integer loc2Id;
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

    public Integer getLocationId() {
        return locationId;
    }

    public void setLocationId(Integer locationId) {
        this.locationId = locationId;
    }

    public Integer getLoc2Id() {
        return loc2Id;
    }

    public void setLoc2Id(Integer loc2Id) {
        this.loc2Id = loc2Id;
    }

    
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    public String getEndDateStr() {
        return endDateStr;
    }

    public void setEndDateStr(String endDateStr) {
        this.endDateStr = endDateStr;
    }

    public String getArrivalDateStr() {
        return arrivalDateStr;
    }

    public Date getDepartureToLocation() {
        return departureToLocation;
    }

    public void setDepartureToLocation(Date departureToLocation) {
        this.departureToLocation = departureToLocation;
    }

    public String getDepartureDateStr() {
        return departureDateStr;
    }

    public void setDepartureDateStr(String departureDateStr) {
        this.departureDateStr = departureDateStr;
    }

    public String getDepartureTimeStr() {
        return departureTimeStr;
    }

    public void setDepartureTimeStr(String departureTimeStr) {
        this.departureTimeStr = departureTimeStr;
    }

    public void setArrivalDateStr(String arrivalDateStr) {
        this.arrivalDateStr = arrivalDateStr;
    }

    public Event() {
    }

    public String getEndTimeStr() {
        return endTimeStr;
    }

    public void setEndTimeStr(String endTimeStr) {
        this.endTimeStr = endTimeStr;
    }

    public String getArrivalTimeStr() {
        return arrivalTimeStr;
    }

    public void setArrivalTimeStr(String arrivalTimeStr) {
        this.arrivalTimeStr = arrivalTimeStr;
    }
    
    
    public Integer getEventId() {
        return eventId;
    }

    public void setEventId(Integer eventId) {
        this.eventId = eventId;
    }
    
    public Event(String _eventName) {
        eventName = _eventName;
    } 
    public String getEventName() {
        return eventName;
    }
    
    public void setEventName(String _eventName) {
        eventName = _eventName;
    }
    
    public Date getEndTime() {
        return endTime;
    }
    
    public void setEndTime(Date _endTime) {
        endTime = _endTime;
    }
    
    public Date getArrivalTime() {
        return arrivalTime;
    }
    
    public void setArrivalTime(Date _arrivalTime) {
        arrivalTime = _arrivalTime;
    }
    
    public Location getLocation() {
        return location;
    }
    
    public void setLocation(Location _location) {
        location = _location;
    }
    
    public List<Suggestion> getSuggestions() {
        return suggestions;
    }
    
    public void setSuggestions(List<Suggestion> _suggestions) {
        suggestions = _suggestions;
    }
}
