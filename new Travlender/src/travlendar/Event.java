/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendar;

import java.sql.Time;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javafx.util.Pair;


/**
 *
 * @author USER
 */
public class Event {
    private String kodeAgenda;
    private String namaAgenda;
    private Date endTime = new Date();
    private Date startTime = new Date();
    private Location lokasiTujuan;
    private List<Pair<ModeTransportasi, Date>> transportationModeSuggestions = new ArrayList<Pair<ModeTransportasi, Date>>();
    
    
    public Event(String agendaName) {
        namaAgenda = agendaName;
    } 
    /**
     * @return the KodeAgenda
     */
    public String getKodeAgenda() {
        return kodeAgenda;
    }

    /**
     * @param KodeAgenda the KodeAgenda to set
     */
    public void setKodeAgenda(String KodeAgenda) {
        this.kodeAgenda = kodeAgenda;
    }

    /**
     * @return the NamaAgenda
     */
    public String getNamaAgenda() {
        return namaAgenda;
    }

    /**
     * @param NamaAgenda the NamaAgenda to set
     */
    public void setNamaAgenda(String namaAgenda) {
        this.namaAgenda = namaAgenda;
    }

    /**
     * @return the WaktuMulai
     */
    public Date getStartTime() {
        return startTime;
    }

    /**
     * @param WaktuMulai the WaktuMulai to set
     */
    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    /**
     * @return the WaktuWaktuSelesai
     */
    public Date getEndTime() {
        return endTime;
    }

    /**
     * @param WaktuSelesai the WaktuSelesai to set
     */
    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    /**
     * @return the Lokasi
     */
    public Location getLokasi() {
        return lokasiTujuan;
    }

    /**
     * @param Lokasi the Lokasi to set
     */
    public void setLokasi(Location lokasiTujuan) {
        this.lokasiTujuan = lokasiTujuan;
    }
    
    public List<Pair<ModeTransportasi, Date>> getTransportationModeSuggestions() {
        return transportationModeSuggestions;
    }
    
    public void setTransportationModes(List<Pair<ModeTransportasi, Date>> _transportationModeSuggestions) {
        transportationModeSuggestions = _transportationModeSuggestions;
    }
}

