/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author HP1
 */
public class Province {
    private String provinceName;
    private Integer provinceId;
    private Integer islandId;

    /**
     * @return the provinceName
     */
    public String getProvinceName() {
        return provinceName;
    }

    /**
     * @param provinceName the provinceName to set
     */
    public void setProvinceName(String provinceName) {
        this.provinceName = provinceName;
    }

    /**
     * @return the provinceId
     */
    public Integer getProvinceId() {
        return provinceId;
    }

    /**
     * @param provinceId the provinceId to set
     */
    public void setProvinceId(Integer provinceId) {
        this.provinceId = provinceId;
    }

    /**
     * @return the islandId
     */
    public Integer getIslandId() {
        return islandId;
    }

    /**
     * @param islandId the islandId to set
     */
    public void setIslandId(Integer islandId) {
        this.islandId = islandId;
    }
     
    
}
