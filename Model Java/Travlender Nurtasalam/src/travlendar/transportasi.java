/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendar;

/**
 *
 * @author USER
 */
public class transportasi {
    private Integer KodeModaTransportasi;
    private String ModaTransportasi;  

    public transportasi()
    {
    }
    /**
     * @return the KodeModaTransportasi
     */
    public Integer getKodeModaTransportasi() {
        return KodeModaTransportasi;
    }

    /**
     * @param KodeModaTransportasi the KodeModaTransportasi to set
     */
    public void setKodeModaTransportasi(Integer KodeModaTransportasi) {
        this.KodeModaTransportasi = KodeModaTransportasi;
    }

    /**
     * @return the ModaTransportasi
     */
    public String getModaTransportasi() {
        return ModaTransportasi;
    }

    /**
     * @param ModaTransportasi the ModaTransportasi to set
     */
    public void setModaTransportasi(String ModaTransportasi) {
        this.ModaTransportasi = ModaTransportasi;
    }
}
