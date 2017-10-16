/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendar;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import javafx.util.Pair;

/**
 *
 * @author syamcode
 */
public class EventList {
    private Location home;
    private List<Event> events= new ArrayList<Event>();
    
    public void addEvent(Event item) {
        events.add(item);
    }
    
    public Location getHome() {
        return home;
    }
    
    public void setHome(Location _home) {
        home = _home;
    }
    public void printAllItem() {
        int i = 0;
        SimpleDateFormat sdfd = new SimpleDateFormat("dd-MM-yyyy");
        SimpleDateFormat sdft = new SimpleDateFormat("hh:mm");
        String tempDate1 = "";
        for(Event item : events) {
            if(!tempDate1.equals(sdfd.format(item.getArrivalTime()))) {
                System.out.println("\nTanggal: " + sdfd.format(item.getArrivalTime()) + "\n");
                tempDate1 = sdfd.format(item.getArrivalTime());
            }
            System.out.println("Item " + ++i + ": ");
            System.out.println("Event Name: " + item.getEventName());
            System.out.println("Location: " + item.getLocation().getLocationName());
            System.out.println("Start Time: " + sdft.format(item.getArrivalTime()));
            System.out.println("End Time: " + sdft.format(item.getEndTime()));
            System.out.println("Suggestions:");
            int j = 0;
            for(Suggestion mode: item.getSuggestions()) {
                System.out.println((j+1) + ". Kendaraan: " + mode.getTransportationModeSuggestion().getTransportationName() + ", Berangkat: " + sdft.format(mode.getDepartureSuggestion()));
                j++;
            }
        }
    }
    
    public void suggestTransportationModes(TravelingTime travelingTime) {
        int i = 0;
        Event item2 = new Event("");
        for(Event item : events) {
            if(i==0) {
                item.setSuggestions(travelingTime.findTransportationMode(home, item.getLocation(), Long.MAX_VALUE, item.getArrivalTime()));
            }
            else {
                item.setSuggestions(travelingTime.findTransportationMode(item2.getLocation(), item.getLocation(), (item.getArrivalTime().getTime() - item2.getEndTime().getTime())/(60000), item.getArrivalTime()));
                //System.out.println(item.getStartTime() + "-" + item2.getEndTime() + ":" + (item.getStartTime().getTime() - item2.getEndTime().getTime())/(6000));
            }
            item2 = item;
            i++;
        }
    }
}
