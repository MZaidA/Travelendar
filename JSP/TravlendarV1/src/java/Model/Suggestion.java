/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.Date;

/**
 *
 * @author syamcode
 */
public class Suggestion {
    private TransportationMode transportationModeSuggestion;
    private Date departureSuggestion;
    
    public TransportationMode getTransportationModeSuggestion() {
        return transportationModeSuggestion;
    }
    
    public void setTransportationModeSuggestion(TransportationMode _transportationModeSuggestion) {
        transportationModeSuggestion = _transportationModeSuggestion;
    }
    
    public Date getDepartureSuggestion() {
        return departureSuggestion;
    }
    
    public void setDepartureSuggestion(Date _departureSuggestion) {
        departureSuggestion = _departureSuggestion;
    }
}
