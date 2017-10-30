/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Cecep Sutisna
 */
public class UnscheduledTravelingTable {
    private int unscheduledTravelingId;
    private int eventLocationId;
    private String eventLocationName;
    private String startLocationName;
    private int startLocationId;
    private int unscheduledTransportationId;
    private String unscheduledTransportationType;
    private long travelingTime;

    /**
     * @return the unscheduledTravelingId
     */
    public int getUnscheduledTravelingId() {
        return unscheduledTravelingId;
    }

    /**
     * @param unscheduledTravelingId the unscheduledTravelingId to set
     */
    public void setUncheduledTravelingId(int unscheduledTravelingId) {
        this.unscheduledTravelingId = unscheduledTravelingId;
    }

    /**
     * @return the eventLocationId
     */
    public int getEventLocationId() {
        return eventLocationId;
    }

    /**
     * @param eventLocationId the eventLocationId to set
     */
    public void setEventLocationId(int eventLocationId) {
        this.eventLocationId = eventLocationId;
    }

    /**
     * @return the eventLocationName
     */
    public String getEventLocationName() {
        return eventLocationName;
    }

    /**
     * @param eventLocationName the eventLocationName to set
     */
    public void setEventLocationName(String eventLocationName) {
        this.eventLocationName = eventLocationName;
    }

    /**
     * @return the startLocationName
     */
    public String getStartLocationName() {
        return startLocationName;
    }

    /**
     * @param startLocationName the startLocationName to set
     */
    public void setStartLocationName(String startLocationName) {
        this.startLocationName = startLocationName;
    }

    /**
     * @return the startLocationId
     */
    public int getStartLocationId() {
        return startLocationId;
    }

    /**
     * @param startLocationId the startLocationId to set
     */
    public void setStartLocationId(int startLocationId) {
        this.startLocationId = startLocationId;
    }

    /**
     * @return the unscheduledTransportationId
     */
    public int getUnscheduledTransportationId() {
        return unscheduledTransportationId;
    }

    /**
     * @param unscheduledTransportationId the unscheduledTransportationId to set
     */
    public void setUnscheduledTransportationId(int unscheduledTransportationId) {
        this.unscheduledTransportationId = unscheduledTransportationId;
    }

    /**
     * @return the unscheduledTransportationType
     */
    public String getUnscheduledTransportationType() {
        return unscheduledTransportationType;
    }

    /**
     * @param unscheduledTransportationType the unscheduledTransportationType to set
     */
    public void setUnscheduledTransportationType(String unscheduledTransportationType) {
        this.unscheduledTransportationType = unscheduledTransportationType;
    }

    /**
     * @return the travelingTime
     */
    public long getTravelingTime() {
        return travelingTime;
    }

    /**
     * @param travelingTime the travelingTime to set
     */
    public void setTravelingTime(long travelingTime) {
        this.travelingTime = travelingTime;
    }

    
}
