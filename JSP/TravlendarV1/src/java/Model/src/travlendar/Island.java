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
public class Island extends Province{
    private String islandName;

    public Island(String _locationName) {
        super(_locationName);
    }
    
    
    /**
     * @return the islandName
     */
    public String getIslandName() {
        return islandName;
    }

    /**
     * @param islandName the islandName to set
     */
    public void setIslandName(String islandName) {
        this.islandName = islandName;
    }
    
}
