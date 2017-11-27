/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model1;

import java.util.Date;

/**
 *
 * @author USER
 */
public class Event1 {
   private Integer event_id;
   private String event_name;
   private String name_origin;
   private Float lat_origin;
   private Float lng_origin;
   private String name_destination;
   private Float lat_destination;
   private Float lng_destination;
   private Date arrival_time = new Date();
   private Date event_end = new Date();
   private Date departure_time = new Date();
   private String travel_mode;
   private String private_transport_type;
   private String public_transport_type;
   private String public_transport_name;
   private Boolean avoid_tools;
   private String transit_mode;
   private String privatte_transport_type;

    /**
     * @return the event_id
     */
    public Integer getEvent_id() {
        return event_id;
    }

    /**
     * @param event_id the event_id to set
     */
    public void setEvent_id(Integer event_id) {
        this.event_id = event_id;
    }

    /**
     * @return the event_name
     */
    public String getEvent_name() {
        return event_name;
    }

    /**
     * @param event_name the event_name to set
     */
    public void setEvent_name(String event_name) {
        this.event_name = event_name;
    }

    /**
     * @return the name_origin
     */
    public String getName_origin() {
        return name_origin;
    }

    /**
     * @param name_origin the name_origin to set
     */
    public void setName_origin(String name_origin) {
        this.name_origin = name_origin;
    }

    /**
     * @return the lat_origin
     */
    public Float getLat_origin() {
        return lat_origin;
    }

    /**
     * @param lat_origin the lat_origin to set
     */
    public void setLat_origin(Float lat_origin) {
        this.lat_origin = lat_origin;
    }

    /**
     * @return the lng_origin
     */
    public Float getLng_origin() {
        return lng_origin;
    }

    /**
     * @param lng_origin the lng_origin to set
     */
    public void setLng_origin(Float lng_origin) {
        this.lng_origin = lng_origin;
    }

    /**
     * @return the name_destination
     */
    public String getName_destination() {
        return name_destination;
    }

    /**
     * @param name_destination the name_destination to set
     */
    public void setName_destination(String name_destination) {
        this.name_destination = name_destination;
    }

    /**
     * @return the lat_destination
     */
    public Float getLat_destination() {
        return lat_destination;
    }

    /**
     * @param lat_destination the lat_destination to set
     */
    public void setLat_destination(Float lat_destination) {
        this.lat_destination = lat_destination;
    }

    /**
     * @return the lng_destination
     */
    public Float getLng_destination() {
        return lng_destination;
    }

    /**
     * @param lng_destination the lng_destination to set
     */
    public void setLng_destination(Float lng_destination) {
        this.lng_destination = lng_destination;
    }

    /**
     * @return the arrival_time
     */
    public Date getArrival_time() {
        return arrival_time;
    }

    /**
     * @param arrival_time the arrival_time to set
     */
    public void setArrival_time(Date arrival_time) {
        this.arrival_time = arrival_time;
    }

    /**
     * @return the event_end
     */
    public Date getEvent_end() {
        return event_end;
    }

    /**
     * @param event_end the event_end to set
     */
    public void setEvent_end(Date event_end) {
        this.event_end = event_end;
    }

    /**
     * @return the departure_time
     */
    public Date getDeparture_time() {
        return departure_time;
    }

    /**
     * @param departure_time the departure_time to set
     */
    public void setDeparture_time(Date departure_time) {
        this.departure_time = departure_time;
    }

    /**
     * @return the travel_mode
     */
    public String getTravel_mode() {
        return travel_mode;
    }

    /**
     * @param travel_mode the travel_mode to set
     */
    public void setTravel_mode(String travel_mode) {
        this.travel_mode = travel_mode;
    }

    /**
     * @return the private_transport_type
     */
    public String getPrivate_transport_type() {
        return private_transport_type;
    }

    /**
     * @param private_transport_type the private_transport_type to set
     */
    public void setPrivate_transport_type(String private_transport_type) {
        this.private_transport_type = private_transport_type;
    }

    /**
     * @return the public_transport_type
     */
    public String getPublic_transport_type() {
        return public_transport_type;
    }

    /**
     * @param public_transport_type the public_transport_type to set
     */
    public void setPublic_transport_type(String public_transport_type) {
        this.public_transport_type = public_transport_type;
    }

    /**
     * @return the public_transport_name
     */
    public String getPublic_transport_name() {
        return public_transport_name;
    }

    /**
     * @param public_transport_name the public_transport_name to set
     */
    public void setPublic_transport_name(String public_transport_name) {
        this.public_transport_name = public_transport_name;
    }

    /**
     * @return the avoid_tools
     */
    public Boolean getAvoid_tools() {
        return avoid_tools;
    }

    /**
     * @param avoid_tools the avoid_tools to set
     */
    public void setAvoid_tools(Boolean avoid_tools) {
        this.avoid_tools = avoid_tools;
    }

    /**
     * @return the transit_mode
     */
    public String getTransit_mode() {
        return transit_mode;
    }

    /**
     * @param transit_mode the transit_mode to set
     */
    public void setTransit_mode(String transit_mode) {
        this.transit_mode = transit_mode;
    }

    /**
     * @return the privatte_transport_type
     */
    public String getPrivatte_transport_type() {
        return privatte_transport_type;
    }

    /**
     * @param privatte_transport_type the privatte_transport_type to set
     */
    public void setPrivatte_transport_type(String privatte_transport_type) {
        this.privatte_transport_type = privatte_transport_type;
    }
   
}
