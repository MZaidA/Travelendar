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
public class Location {
    private String locationName;
    
    public Location(String _locationName) {
        locationName = _locationName;
    } 
    
    public String getLocationName() {
        return locationName;
    }
    
    public void setLocationName(String _locationName) {
        locationName = _locationName;
    }
}
