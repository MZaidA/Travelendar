/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendar;

/**
 *
 * @author syamcode
 */
public class LookupItem {
    private Location tujuanAwal;
    private Location tujuanAkhir;
    private ModeTransportasi transportationMode;
    private long waktuTempuh;
    
    public Location getTujuanAwal() {
        return tujuanAwal;
    }
    
    public void setTujuanAwal(Location embarkation) {
        tujuanAwal = embarkation;
    }
    
    public Location getTujuanAkhir() {
        return tujuanAkhir;
    }
    
    public void setTujuanAkhir(Location destination) {
        tujuanAkhir = destination;
    }
    
    public ModeTransportasi getModeTransportasi() {
        return transportationMode;
    }
    
    public void setTransportationMode(ModeTransportasi _transportationMode) {
        transportationMode = _transportationMode;
    }
    public long getWaktuTempuh() {
        return waktuTempuh;
    }
    
    public void setWaktuTempuh(long travelTime) {
        waktuTempuh = travelTime;
    }
}
