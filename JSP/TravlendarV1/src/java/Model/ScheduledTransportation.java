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
public class ScheduledTransportation {
    private int scheduledTransportationId;
    private String scheduledTransportationName;
    private int transportationId;
    private String transportationType;    

    /**
     * @return the scheduledTransportationId
     */
    public int getScheduledTransportationId() {
        return scheduledTransportationId;
    }

    /**
     * @param scheduledTransportationId the scheduledTransportationId to set
     */
    public void setScheduledTransportationId(int scheduledTransportationId) {
        this.scheduledTransportationId = scheduledTransportationId;
    }

    /**
     * @return the scheduledTransportationName
     */
    public String getScheduledTransportationName() {
        return scheduledTransportationName;
    }

    /**
     * @param scheduledTransportationName the scheduledTransportationName to set
     */
    public void setScheduledTransportationName(String scheduledTransportationName) {
        this.scheduledTransportationName = scheduledTransportationName;
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
    
    
}
