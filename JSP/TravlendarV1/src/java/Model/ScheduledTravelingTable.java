/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;
import java.util.Date;

/**
 *
 * @author HP1
 */
public class ScheduledTravelingTable {
    private Date arrivalSchedule;
    private Date departureSchedule;
    private Integer scheduledTravelingId;
    private Integer startLocationId;
    private Integer eventLocationId;
    private Integer scheduledTransportationId;
    private String startLocationName;
    private String eventLocationName;
    private String scheduledTransportationName;

    /**
     * @return the arrivalSchedule
     */
    public Date getArrivalSchedule() {
        return arrivalSchedule;
    }

    /**
     * @param arrivalSchedule the arrivalSchedule to set
     */
    public void setArrivalSchedule(Date arrivalSchedule) {
        this.arrivalSchedule = arrivalSchedule;
    }

    /**
     * @return the departureSchedule
     */
    public Date getDepartureSchedule() {
        return departureSchedule;
    }

    /**
     * @param departureSchedule the departureSchedule to set
     */
    public void setDepartureSchedule(Date departureSchedule) {
        this.departureSchedule = departureSchedule;
    }

    /**
     * @return the scheduledTravelingId
     */
    public Integer getScheduledTravelingId() {
        return scheduledTravelingId;
    }

    /**
     * @param scheduledTravelingId the scheduledTravelingId to set
     */
    public void setScheduledTravelingId(Integer scheduledTravelingId) {
        this.scheduledTravelingId = scheduledTravelingId;
    }

    /**
     * @return the startLocationId
     */
    public Integer getStartLocationId() {
        return startLocationId;
    }

    /**
     * @param startLocationId the startLocationId to set
     */
    public void setStartLocationId(Integer startLocationId) {
        this.startLocationId = startLocationId;
    }

    /**
     * @return the eventLocationId
     */
    public Integer getEventLocationId() {
        return eventLocationId;
    }

    /**
     * @param eventLocationId the eventLocationId to set
     */
    public void setEventLocationId(Integer eventLocationId) {
        this.eventLocationId = eventLocationId;
    }

    /**
     * @return the scheduledTransportationId
     */
    public Integer getScheduledTransportationId() {
        return scheduledTransportationId;
    }

    /**
     * @param scheduledTransportationId the scheduledTransportationId to set
     */
    public void setScheduledTransportationId(Integer scheduledTransportationId) {
        this.scheduledTransportationId = scheduledTransportationId;
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
    
    
}
