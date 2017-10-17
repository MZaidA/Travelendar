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
public class PrivateTransportation {
    private int privateId;
    private String privateType;
    
    /**
     * @return the privateType
     */
    public String getPrivateType() {
        return privateType;
    }

    /**
     * @param privateType the privateType to set
     */
    public void setPrivateType(String privateType) {
        this.privateType = privateType;
    }

    /**
     * @return the privateId
     */
    public int getPrivateId() {
        return privateId;
    }

    /**
     * @param privateId the privateId to set
     */
    public void setPrivateId(int privateId) {
        this.privateId = privateId;
    }
    
}
