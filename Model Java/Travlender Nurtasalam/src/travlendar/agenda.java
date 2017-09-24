/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendar;

import java.sql.Time;
import java.util.Date;


/**
 *
 * @author USER
 */
public class agenda {
    private String KodeAgenda;
    private String NamaAgenda;
    private Date WaktuMulai;
    private Date WaktuSelesai;
    private String Lokasi;
    

    /**
     * @return the KodeAgenda
     */
    public String getKodeAgenda() {
        return KodeAgenda;
    }

    /**
     * @param KodeAgenda the KodeAgenda to set
     */
    public void setKodeAgenda(String KodeAgenda) {
        this.KodeAgenda = KodeAgenda;
    }

    /**
     * @return the NamaAgenda
     */
    public String getNamaAgenda() {
        return NamaAgenda;
    }

    /**
     * @param NamaAgenda the NamaAgenda to set
     */
    public void setNamaAgenda(String NamaAgenda) {
        this.NamaAgenda = NamaAgenda;
    }

    /**
     * @return the WaktuMulai
     */
    public Date getWaktuMulai() {
        return WaktuMulai;
    }

    /**
     * @param WaktuMulai the WaktuMulai to set
     */
    public void setWaktuMulai(Date WaktuMulai) {
        this.WaktuMulai = WaktuMulai;
    }

    /**
     * @return the WaktuWaktuSelesai
     */
    public Date getWaktuSelesai() {
        return WaktuSelesai;
    }

    /**
     * @param WaktuSelesai the WaktuSelesai to set
     */
    public void setWaktuSelesai(Date WaktuSelesai) {
        this.WaktuSelesai = WaktuSelesai;
    }

    /**
     * @return the Lokasi
     */
    public String getLokasi() {
        return Lokasi;
    }

    /**
     * @param Lokasi the Lokasi to set
     */
    public void setLokasi(String Lokasi) {
        this.Lokasi = Lokasi;
    }
}

