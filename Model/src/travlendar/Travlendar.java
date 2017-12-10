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
 * @author syamcode
 */
public class Travlendar {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws ParseException {
        Traveler Hisyam = new Traveler("Hisyam");
        EventList eventList = new EventList();
        Location home = new Location("Ciwaruga");
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        
        Event item1 = new Event("Olahraga Pagi");
        Location location1 = new Location("Polban");
        Date arrivalTime1 = dateFormat.parse("2017-09-20 05:00:00");
        Date endTime1 = dateFormat.parse("2017-09-20 06:00:00");
        item1.setLocation(location1);
        item1.setEndTime(endTime1);
        item1.setArrivalTime(arrivalTime1);
        eventList.addEvent(item1);
        
        Event item2 = new Event("Sarapan");
        Location location2 = new Location("Sarijadi");
        Date arrivalTime2 = dateFormat.parse("2017-09-20 06:30:00");
        Date endTime2 = dateFormat.parse("2017-09-20 07:30:00");
        item2.setLocation(location2);
        item2.setEndTime(endTime2);
        item2.setArrivalTime(arrivalTime2);
        eventList.addEvent(item2);
        
        Event item3 = new Event("Tidur");
        Location location3 = new Location("Sarijadi");
        Date arrivalTime3 = dateFormat.parse("2017-09-21 06:30:00");
        Date endTime3 = dateFormat.parse("2017-10-21 07:30:00");
        item3.setLocation(location3);
        item3.setEndTime(endTime3);
        item3.setArrivalTime(arrivalTime3);
        eventList.addEvent(item3);
        
        
        eventList.setHome(home);
        
        Hisyam.setEventList(eventList);
        
        TransportationMode motor = new TransportationMode("Motor");
        TransportationMode mobil = new TransportationMode("Mobil");
        TransportationMode sepeda = new TransportationMode("Sepeda");
        TransportationMode jalanKaki = new TransportationMode("Jalan Kaki");
        TransportationMode delman = new TransportationMode("Delman");
        
        TravelingTime travelingTime = new TravelingTime();
        
        TravelingTimeItem travelingTimeItem1 = new TravelingTimeItem();
        travelingTimeItem1.setTravelingTimeItemCode("A0001");
        travelingTimeItem1.setEmbarkation(home); //Ciwaruga
        travelingTimeItem1.setDestination(location1); //Polban
        travelingTimeItem1.setTransportationMode(jalanKaki);
        travelingTimeItem1.setTravelTime(30);
        
        travelingTime.addTravelingTimes(travelingTimeItem1);
        
        TravelingTimeItem travelingTimeItem2 = new TravelingTimeItem();
        travelingTimeItem2.setEmbarkation(home); //Ciwaruga
        travelingTimeItem2.setDestination(location1); //Polban
        travelingTimeItem2.setTransportationMode(motor);
        travelingTimeItem2.setTravelTime(15);
        
        travelingTime.addTravelingTimes(travelingTimeItem2);
        
        TravelingTimeItem travelingTimeItem3 = new TravelingTimeItem();
        travelingTimeItem3.setEmbarkation(home); //Ciwaruga
        travelingTimeItem3.setDestination(location1); //Polban
        travelingTimeItem3.setTransportationMode(mobil);
        travelingTimeItem3.setTravelTime(20);
        
        travelingTime.addTravelingTimes(travelingTimeItem3);
        
        TravelingTimeItem travelingTimeItem4 = new TravelingTimeItem();
        travelingTimeItem4.setEmbarkation(location1); //Polban
        travelingTimeItem4.setDestination(location2); //Sarijadi
        travelingTimeItem4.setTransportationMode(sepeda);
        travelingTimeItem4.setTravelTime(31);
        
        travelingTime.addTravelingTimes(travelingTimeItem4);
        
        TravelingTimeItem travelingTimeItem5 = new TravelingTimeItem();
        travelingTimeItem5.setEmbarkation(location1); //Polban
        travelingTimeItem5.setDestination(location2); //Sarijadi
        travelingTimeItem5.setTransportationMode(motor);
        travelingTimeItem5.setTravelTime(15);
        
        travelingTime.addTravelingTimes(travelingTimeItem5);
        
        TravelingTimeItem travelingTimeItem6 = new TravelingTimeItem();
        travelingTimeItem6.setEmbarkation(location1); //Polban
        travelingTimeItem6.setDestination(location2); //Sarijadi
        travelingTimeItem6.setTransportationMode(jalanKaki);
        travelingTimeItem6.setTravelTime(45);
        
        travelingTime.addTravelingTimes(travelingTimeItem6);
        
        TravelingTimeItem travelingTimeItem7 = new TravelingTimeItem();
        travelingTimeItem7.setEmbarkation(location1); //Polban
        travelingTimeItem7.setDestination(location2); //Sarijadi
        travelingTimeItem7.setTransportationMode(delman);
        travelingTimeItem7.setTravelTime(30);
        
        travelingTime.addTravelingTimes(travelingTimeItem7);
        
        Hisyam.getEventList().suggestTransportationModes(travelingTime);
        //travelingTime.printAllItem();
        // TODO code application logic here
        
        travelingTime.printAllItem();
        Hisyam.printEventList();
    }
    
}
