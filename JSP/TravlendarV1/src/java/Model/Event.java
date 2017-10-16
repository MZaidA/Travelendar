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
    
    private Location location;
    private String description;

   
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
