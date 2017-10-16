/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author HP1
 */
public class Island{
    private String islandName;
    private Integer islandId;    
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

    /**
     * @return the islandId
     */
    public Integer getIslandId() {
        return islandId;
    }

    /**
     * @param islandId the islandId to set
     */
    public void setIslandId(Integer islandId) {
        this.islandId = islandId;
    }
    
}
