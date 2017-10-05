/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendar;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author USER
 */
public class User {
    private String IdUser;
    private String NamaUser;
    private String Email;
    private String Password;
    ArrEvent arrayAgenda;
    /**
     * @param a
     * @return the IdUser
     */
    
    public User(String userName){
        NamaUser = userName;
    }
    
    public String getNamaUser(){
        return NamaUser;
    }
    
    public void setNamaUser(String userName){
        NamaUser = userName;
    }
    
    public ArrEvent getAgenda(){
        return arrayAgenda;
    }
    
    public void setAgenda(ArrEvent a){
        arrayAgenda = a;
    }
    
    public String getIdUser() {
        return IdUser;
    }

    /**
     * @param IdUser the IdUser to set
     */
    public void setIdUser(String IdUser) {
        this.IdUser = IdUser;
    }

    /**
     * @return the NamaUser
     */
   
    public String getEmail() {
        return Email;
    }

    /**
     * @param Email the Email to set
     */
    public void setEmail(String Email) {
        this.Email = Email;
    }

    /**
     * @return the Password
     */
    public String getPassword() {
        return Password;
    }

    /**
     * @param Password the Password to set
     */
    public void setPassword(String Password) {
        this.Password = Password;
    }
    
    public void printAllUserAgenda() {
        arrayAgenda.printAllItem();
    }
    /**
     * @return the LokasiUser
     */
 
}
