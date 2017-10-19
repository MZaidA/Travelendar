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
public class PublicTransportation {
    private int publicId;
    private String publicName;
    private String publicType;
    
    /**
     * @return the publicName
     */
    public String getPublicName() {
        return publicName;
    }

    /**
     * @param publicName the publicName to set
     */
    public void setPublicName(String publicName) {
        this.publicName = publicName;
    }

    /**
     * @return the publicType
     */
    public String getPublicType() {
        return publicType;
    }

    /**
     * @param publicType the publicType to set
     */
    public void setPublicType(String publicType) {
        this.publicType = publicType;
    }

    /**
     * @return the publicId
     */
    public int getPublicId() {
        return publicId;
    }

    /**
     * @param publicId the publicId to set
     */
    public void setPublicId(int publicId) {
        this.publicId = publicId;
    }
    
    
}
