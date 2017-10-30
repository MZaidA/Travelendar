/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Nino
 */
public class ScheduledTransportationModes {
    private int transportationId;
    private String transportationType;

    /**
     * @return the transportationId
     */
    public int getTransportationId() {
        return transportationId;
    }

    /**
     * @param transportationId the transportationId to set
     */
    public void setTransportationId(int transportationId) {
        this.transportationId = transportationId;
    }

    /**
     * @return the transportationType
     */
    public String getTransportationType() {
        return transportationType;
    }

    /**
     * @param transportationType the transportationType to set
     */
    public void setTransportationType(String transportationType) {
        this.transportationType = transportationType;
    }
    
    
}
