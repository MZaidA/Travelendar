/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendar;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import javafx.util.Pair;

/**
 *
 * @author syamcode
 */
public class Lookup {
    private List<LookupItem> LookupItems = new ArrayList<LookupItem>(); 
    
    public void addLookupItem(LookupItem _travelingTimeItem) {
        LookupItems.add(_travelingTimeItem);
    }
    
    public void printAllItem() {
        int i = 0;
        for(LookupItem item : LookupItems) {
            System.out.println("Item " + ++i + ": ");
            System.out.println("Embarkation: " + item.getTujuanAwal().getLocationName());
            System.out.println("Destination: " + item.getTujuanAkhir().getLocationName());
            System.out.println("Transportation Mode: " + item.getModeTransportasi().getTransportationName());
            System.out.println("Traveling Time: " + item.getWaktuTempuh());
        }
    }
        
    public List<Pair<ModeTransportasi, Date>> findTransportationMode(Location embarkation, Location destination, long travelTime, Date departure) {
        List<Pair<ModeTransportasi, Date>> transportationMode = new ArrayList<Pair<ModeTransportasi, Date>>();
        for(LookupItem item : LookupItems) {
            if(item.getTujuanAwal() == embarkation && item.getTujuanAkhir() == destination && item.getWaktuTempuh()<=travelTime) {
                Date tDate = new Date(departure.getTime() - (item.getWaktuTempuh()*60000));
                transportationMode.add(new Pair<ModeTransportasi, Date>(item.getModeTransportasi(), tDate));
            }
        }
        return transportationMode;
    }
}
