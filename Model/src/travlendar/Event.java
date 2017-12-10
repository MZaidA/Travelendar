/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendar;

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
    private String eventName;
    private Date endTime = new Date();
    private Date arrivalTime = new Date();
    private Location location;
    private List<Suggestion> suggestions = new ArrayList<Suggestion>();
    
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
