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
public class PrivateTransportationTraveling {
    private int privateTravelingId;
    private int locationId;
    private String locationName;
    private String locLocationName;
    private int locLocationId;
    private int privateId;
    private String privateType;
    private long travelingTime;
    private Location location;
    private PrivateTransportation privateTransportation;

    /**
     * @return the privateTravelingId
     */
    public int getPrivateTravelingId() {
        return privateTravelingId;
    }

    /**
     * @param privateTravelingId the privateTravelingId to set
     */
    public void setPrivateTravelingId(int privateTravelingId) {
        this.privateTravelingId = privateTravelingId;
    }

    /**
     * @return the locationId
     */
    public int getLocationId() {
        return locationId;
    }

    /**
     * @param locationId the locationId to set
     */
    public void setLocationId(int locationId) {
        this.locationId = locationId;
    }

    /**
     * @return the locLocationId
     */
    public int getLocLocationId() {
        return locLocationId;
    }

    /**
     * @param locLocationId the locLocationId to set
     */
    public void setLocLocationId(int locLocationId) {
        this.locLocationId = locLocationId;
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

    /**
     * @return the location
     */
    public Location getLocation() {
        return location;
    }

    /**
     * @param location the location to set
     */
    public void setLocation(Location location) {
        this.location = location;
    }

    /**
     * @return the privateTransportation
     */
    public PrivateTransportation getPrivateTransportation() {
        return privateTransportation;
    }

    /**
     * @param privateTransportation the privateTransportation to set
     */
    public void setPrivateTransportation(PrivateTransportation privateTransportation) {
        this.privateTransportation = privateTransportation;
    }

    /**
     * @return the locationName
     */
    public String getLocationName() {
        return locationName;
    }

    /**
     * @param locationName the locationName to set
     */
    public void setLocationName(String locationName) {
        this.locationName = locationName;
    }

    /**
     * @return the privateType
     */
    public String getPrivateType() {
        return privateType;
    }

    /**
     * @param privateName the privateType to set
     */
    public void setPrivateType(String privateType) {
        this.privateType = privateType;
    }

    /**
     * @return the locLocationName
     */
    public String getLocLocationName() {
        return locLocationName;
    }

    /**
     * @param locLocationName the locLocationName to set
     */
    public void setLocLocationName(String locLocationName) {
        this.locLocationName = locLocationName;
    }
}
