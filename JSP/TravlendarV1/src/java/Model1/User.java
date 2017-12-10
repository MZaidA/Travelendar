/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model1;

/**
 *
 * @author Salam שלום
 */
public class User {
    private String username;
    private String password;
    private String home;
    private String workplace;
    private int maxWalking;

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the home
     */
    public String getHome() {
        return home;
    }

    /**
     * @param home the home to set
     */
    public void setHome(String home) {
        this.home = home;
    }

    /**
     * @return the workplace
     */
    public String getWorkplace() {
        return workplace;
    }

    /**
     * @param workplace the workplace to set
     */
    public void setWorkplace(String workplace) {
        this.workplace = workplace;
    }

    /**
     * @return the maxWalking
     */
    public int getMaxWalking() {
        return maxWalking;
    }

    /**
     * @param maxWalking the maxWalking to set
     */
    public void setMaxWalking(int maxWalking) {
        this.maxWalking = maxWalking;
    }
}
