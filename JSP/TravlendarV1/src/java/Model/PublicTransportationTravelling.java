/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendar;
import java.util.Date;
/**
 *
 * @author HP1
 */
public class PublicTransportationTravelling {
    private Date arrivalSchedule;
    private Date departureSchedule;

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
    
}
