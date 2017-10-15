/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author syamcode
 */
public class Traveler {
    private String travelerName;
    private EventList eventList;
    
    public Traveler(String _travelerName) {
        travelerName = _travelerName;
    }
    
    public String getTravelerName() {
        return travelerName;
    }
    
    public void setTravelerName(String _travelerName) {
        travelerName = _travelerName;
    }
    
    public EventList getEventList() {
        return eventList;
    }
    
    public void setEventList(EventList _eventList) {
        eventList = _eventList;
    }
    
    public void printEventList() {
        eventList.printAllItem();
    }
}
