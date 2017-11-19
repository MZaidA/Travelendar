/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author adita
 */
public class Event {
    private int id;
    private String startName;
    private String endName;
    private float latStart;
    private float lngStart;
    private float latEnd;
    private float lngEnd;
    private float distance;
    private boolean avoidTolls;

    public boolean isAvoidTolls() {
        return avoidTolls;
    }

    public void setAvoidTolls(boolean avoidTolls) {
        this.avoidTolls = avoidTolls;
    }

    public float getDistance() {
        return distance;
    }

    public void setDistance(float distance) {
        this.distance = distance;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public String getStartName() {
        return startName;
    }

    public void setStartName(String startName) {
        this.startName = startName;
    }

    public String getEndName() {
        return endName;
    }

    public void setEndName(String endName) {
        this.endName = endName;
    }

    public float getLatStart() {
        return latStart;
    }

    public void setLatStart(float latStart) {
        this.latStart = latStart;
    }

    public float getLngStart() {
        return lngStart;
    }

    public void setLngStart(float lngStart) {
        this.lngStart = lngStart;
    }

    public float getLatEnd() {
        return latEnd;
    }

    public void setLatEnd(float latEnd) {
        this.latEnd = latEnd;
    }

    public float getLngEnd() {
        return lngEnd;
    }

    public void setLngEnd(float lngEnd) {
        this.lngEnd = lngEnd;
    }
}
