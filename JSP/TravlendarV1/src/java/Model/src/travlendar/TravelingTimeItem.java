/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendar;

/**
 *
 * @author syamcode
 */
public class TravelingTimeItem {
    private String travelingTimeItemCode;
    private Location embarkation;
    private Location destination;
    private TransportationMode transportationMode;
    private long travelTime;
    
    public String getTravelingTimeItemCode() {
        return travelingTimeItemCode;
    }
    
    public void setTravelingTimeItemCode(String _travelingTimeItemCode) {
        travelingTimeItemCode = _travelingTimeItemCode;
    }
    
    public Location getEmbarkation() {
        return embarkation;
    }
    
    public void setEmbarkation(Location _embarkation) {
        embarkation = _embarkation;
    }
    
    public Location getDestination() {
        return destination;
    }
    
    public void setDestination(Location _destination) {
        destination = _destination;
    }
    
    public TransportationMode getTransportationMode() {
        return transportationMode;
    }
    
    public void setTransportationMode(TransportationMode _transportationMode) {
        transportationMode = _transportationMode;
    }
    public long getTravelTime() {
        return travelTime;
    }
    
    public void setTravelTime(long _travelTime) {
        travelTime = _travelTime;
    }
}
