/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendar;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javafx.util.Pair;

/**
 *
 * @author fauzy
 */
public class ArrEvent {
    private Location currentLoc;
    private List<Event> arrayAgenda= new ArrayList<Event>();
    
    public void addAgendaItem(Event a) {
        arrayAgenda.add(a);
    }
    
    public Location getCurrentLoc() {
        return currentLoc;
    }
    
    public void setCurrentLoc(Location currentLoc) {
        this.currentLoc = currentLoc;
    }
    
   public void printAllItem() {
        int i = 0;
        for(Event item : arrayAgenda) {
            System.out.println("Agenda " + ++i + ": ");
            System.out.println("Nama Agenda: " + item.getNamaAgenda());
            System.out.println("Destinasi: " + item.getLokasi().getLocationName());
            System.out.println("Waktu Mulai: " + item.getStartTime());
            System.out.println("Waktu Berakhir: " + item.getEndTime());
            System.out.println("Transportasi yang bisa disarankan:");
            int j = 0;
            for(Pair<ModeTransportasi, Date> mode: item.getTransportationModeSuggestions()) {
                System.out.println((j+1) + ". " + mode.getKey().getTransportationName() + ", Berangkat : " + mode.getValue());
                j++;
            }
        }
    }
   
   public void suggestTransportationModes(Lookup lookup) {
        int i = 0;
        Event a = new Event("");
        for(Event item : arrayAgenda) {
            if(i==0) {
                item.setTransportationModes(lookup.findTransportationMode(currentLoc, item.getLokasi(), Long.MAX_VALUE, item.getStartTime()));
            }
            else {
                item.setTransportationModes(lookup.findTransportationMode(a.getLokasi(), item.getLokasi(), (item.getStartTime().getTime() - a.getEndTime().getTime())/(60000), item.getStartTime()));
                //System.out.println(item.getStartTime() + "-" + item2.getEndTime() + ":" + (item.getStartTime().getTime() - item2.getEndTime().getTime())/(6000));
            }
            a = item;
            i++;
        }
    }
}
