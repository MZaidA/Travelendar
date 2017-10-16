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
public class TransportationMode {
    private String transportationName;
    
    public TransportationMode(String _transportationName) {
        transportationName = _transportationName;
    }
    
    public String getTransportationName() {
        return transportationName;
    }
    
    public void setTransportationName(String _transportationName) {
        transportationName = _transportationName;
    }
}
