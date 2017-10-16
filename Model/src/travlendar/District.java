/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendar;

/**
 *
 * @author HP1
 */
public class District extends Location{
    private String districtName;

    
    public District(String _locationName) {
        super(_locationName);
    }

    
    /**
     * @return the districtName
     */
    
    public String getDistrictName() {
        return districtName;
    }
    
    /**
     * @param districtName the districtName to set
     */
    public void setDistrictName(String districtName) {
        this.districtName = districtName;
    }
    
    
}
