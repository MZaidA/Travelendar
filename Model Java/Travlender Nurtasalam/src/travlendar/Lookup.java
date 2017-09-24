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
    private String idTabelLookup;
    private double jarakTempuh;
    private String jenisKendaraan;
    private Time waktuTempuh;
    private String tempatAsal;
    private String tempatTujuan;

    /**
     * @return the IdTabelLookup
     */
    public String getIdTabelLookup() {
        return idTabelLookup;
    }

    /**
     * @param idTabelLookup the IdTabelLookup to set
     */
    public void setidTabelLookup(String idTabelLookup) {
        this.setIdTabelLookup(idTabelLookup);
    }

    /**
     * @return the JarakTempuh
     */
    public double getjarakTempuh() {
        return jarakTempuh;
    }

    /**
     * @param jarakTempuh the JarakTempuh to set
     */
    public void setjarakTempuh(double jarakTempuh) {
        this.jarakTempuh = jarakTempuh;
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
        return tempatAsal;
    }

    /**
     * @param tempatAsal the TempatAsal to set
     */
    public void settempatAsal(String tempatAsal) {
        this.tempatAsal = tempatAsal;
    }

    /**
     * @return the TempatTujuan
     */
    public String gettempatTujuan() {
        return tempatTujuan;
    }

    /**
     * @param tempatTujuan the TempatTujuan to set
     */
    public void settempatTujuan(String tempatTujuan) {
        this.tempatTujuan = tempatTujuan;
    }   

    /**
     * @param idTabelLookup the idTabelLookup to set
     */
    public void setIdTabelLookup(String idTabelLookup) {
        this.idTabelLookup = idTabelLookup;
    }

    /**
     * @return the jenisKendaraan
     */
    public String getjenisKendaraan() {
        return jenisKendaraan;
    }

    /**
     * @param jenisKendaraan the jenisKendaraan to set
     */
    public void setjenisKendaraan(String jenisKendaraan) {
        this.jenisKendaraan = jenisKendaraan;
    }
}
