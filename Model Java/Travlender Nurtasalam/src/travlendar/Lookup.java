/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendar;
import java.sql.Time;

/**
 *
 * @author USER
 */
public class Lookup {
    private String IdTabelLookup;
    private double JarakTempuh;
    private Time waktuTempuh;
    private String TempatAsal;
    private String TempatTujuan;

    /**
     * @return the IdTabelLookup
     */
    public String getIdTabelLookup() {
        return IdTabelLookup;
    }

    /**
     * @param IdTabelLookup the IdTabelLookup to set
     */
    public void setIdTabelLookup(String IdTabelLookup) {
        this.IdTabelLookup = IdTabelLookup;
    }

    /**
     * @return the JarakTempuh
     */
    public double getJarakTempuh() {
        return JarakTempuh;
    }

    /**
     * @param JarakTempuh the JarakTempuh to set
     */
    public void setJarakTempuh(double JarakTempuh) {
        this.JarakTempuh = JarakTempuh;
    }

    /**
     * @return the waktuTempuh
     */
    public Time getWaktuTempuh() {
        return waktuTempuh;
    }

    /**
     * @param waktuTempuh the waktuTempuh to set
     */
    public void setWaktuTempuh(Time waktuTempuh) {
        this.waktuTempuh = waktuTempuh;
    }

    /**
     * @return the TempatAsal
     */
    public String getTempatAsal() {
        return TempatAsal;
    }

    /**
     * @param TempatAsal the TempatAsal to set
     */
    public void setTempatAsal(String TempatAsal) {
        this.TempatAsal = TempatAsal;
    }

    /**
     * @return the TempatTujuan
     */
    public String getTempatTujuan() {
        return TempatTujuan;
    }

    /**
     * @param TempatTujuan the TempatTujuan to set
     */
    public void setTempatTujuan(String TempatTujuan) {
        this.TempatTujuan = TempatTujuan;
    }
}
