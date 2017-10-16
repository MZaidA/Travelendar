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
        Location home = new Location("Rumah");
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        
        Event item1 = new Event("Apel Pagi");
        Location location1 = new Location("Kantor DPRD");
        Date arrivalTime1 = dateFormat.parse("2017-07-28 06:45:00");
        Date endTime1 = dateFormat.parse("2017-09-20 08:30:00");
        item1.setLocation(location1);
        item1.setEndTime(endTime1);
        item1.setArrivalTime(arrivalTime1);
        eventList.addEvent(item1);
        
        Event item2 = new Event("Perjalanan Dinas 1");
        Location location2 = new Location("Bandara Depati");
        Date arrivalTime2 = dateFormat.parse("2017-07-28 10:00:00");
        Date endTime2 = dateFormat.parse("2017-07-28 13:45:00");
        item2.setLocation(location2);
        item2.setEndTime(endTime2);
        item2.setArrivalTime(arrivalTime2);
        eventList.addEvent(item2);
        
        Event item3 = new Event("Perjalanan Dinas 2");
        Location location3 = new Location("Bandara Soekarno Hatta");
        Date arrivalTime3 = dateFormat.parse("2017-07-28 15:05:00");
        Date endTime3 = dateFormat.parse("2017-07-28 15:35:00");
        item3.setLocation(location3);
        item3.setEndTime(endTime3);
        item3.setArrivalTime(arrivalTime3);
        eventList.addEvent(item3);
        
        Event item4 = new Event("Tugas Dinas");
        Location location4 = new Location("Kantor DPRD");
        Date arrivalTime4 = dateFormat.parse("2017-07-28 16:10:00");
        Date endTime4 = dateFormat.parse("2017-07-28 16:30:00");
        item4.setLocation(location4);
        item4.setEndTime(endTime4);
        item4.setArrivalTime(arrivalTime4);
        eventList.addEvent(item4);
        
        Event item5 = new Event("Istirahat");
        Location location5 = new Location("Istana Ratu Hotel");
        Date arrivalTime5 = dateFormat.parse("2017-07-28 16:32:00");
        Date endTime5 = dateFormat.parse("2017-07-28 16:45:00");
        item3.setLocation(location5);
        item3.setEndTime(endTime5);
        item3.setArrivalTime(arrivalTime5);
        eventList.addEvent(item5);
        
        Event item6 = new Event("Menjenguk Anak");
        Location location6 = new Location("Kosan dekat UMN");
        Date arrivalTime6 = dateFormat.parse("2017-07-28 17:45:00");
        Date endTime6 = dateFormat.parse("2017-07-29 06:00:00");
        item3.setLocation(location6);
        item3.setEndTime(endTime6);
        item3.setArrivalTime(arrivalTime6);
        eventList.addEvent(item6);
        
        Event item7 = new Event("Istirahat");
        Location location7 = new Location("Istana Ratu Hotel");
        Date arrivalTime7 = dateFormat.parse("2017-07-29 07:00:00");
        Date endTime7 = dateFormat.parse("2017-07-29 07:45:00");
        item3.setLocation(location7);
        item3.setEndTime(endTime7);
        item3.setArrivalTime(arrivalTime7);
        eventList.addEvent(item7);
        
        Event item8 = new Event("Tugas Dinas");
        Location location8 = new Location("Kantor DPRD Jakarta");
        Date arrivalTime8 = dateFormat.parse("2017-07-29 07:47:00");
        Date endTime8 = dateFormat.parse("2017-07-29 10:30:00");
        item3.setLocation(location8);
        item3.setEndTime(endTime8);
        item3.setArrivalTime(arrivalTime8);
        eventList.addEvent(item8);
        
        Event item9 = new Event("Pulang ke Bangka 1");
        Location location9 = new Location("Bandara Soekarno Hatta");
        Date arrivalTime9 = dateFormat.parse("2017-07-29 11:15:00");
        Date endTime9 = dateFormat.parse("2017-07-29 11:50:00");
        item3.setLocation(location9);
        item3.setEndTime(endTime9);
        item3.setArrivalTime(arrivalTime9);
        eventList.addEvent(item9);
        
        Event item10 = new Event("Pulang ke Bangka 2");
        Location location10 = new Location("Bandara Depati Amir");
        Date arrivalTime10 = dateFormat.parse("2017-07-29 13:00:00");
        Date endTime10 = dateFormat.parse("2017-07-29 13:30:00");
        item3.setLocation(location10);
        item3.setEndTime(endTime10);
        item3.setArrivalTime(arrivalTime10);
        eventList.addEvent(item10);
        
        Event item11 = new Event("Laporan Tugas Dinas");
        Location location11 = new Location("Kantor DPRD Bangka");
        Date arrivalTime11 = dateFormat.parse("2017-07-29 15:00:00");
        Date endTime11 = dateFormat.parse("2017-07-29 15:30:00");
        item3.setLocation(location11);
        item3.setEndTime(endTime11);
        item3.setArrivalTime(arrivalTime11);
        eventList.addEvent(item11);
        
        Event item12 = new Event("Pulang");
        Location location12 = new Location("Rumah");
        Date arrivalTime12 = dateFormat.parse("2017-07-29 16:15:00");
        Date endTime12 = dateFormat.parse("2017-07-29 18:30:00"); //Acara selesai. EndTime tidak diinputkan
        item3.setLocation(location12);
        item3.setEndTime(endTime12);
        item3.setArrivalTime(arrivalTime12);
        eventList.addEvent(item12);
        
        eventList.setHome(home);
        
        Hisyam.setEventList(eventList);
        
        TransportationMode jalanKaki = new TransportationMode("Jalan Kaki");
        TransportationMode sepeda = new TransportationMode("Sepeda");
        TransportationMode motor = new TransportationMode("Motor");
        TransportationMode mobil = new TransportationMode("Mobil");
        TransportationMode angkot = new TransportationMode("Angkot");
        TransportationMode ojek = new TransportationMode("Ojek");
        TransportationMode taksi = new TransportationMode("Taksi");
        TransportationMode bus = new TransportationMode("Bus");
        TransportationMode kereta = new TransportationMode("Kereta");
        TransportationMode kapal = new TransportationMode("Kapal");
        TransportationMode pesawat = new TransportationMode("Pesawat");
        
        TravelingTime travelingTime = new TravelingTime();
        
        TravelingTimeItem travelingTimeItem1 = new TravelingTimeItem();
        travelingTimeItem1.setTravelingTimeItemCode("A0001");
        travelingTimeItem1.setEmbarkation(home);
        travelingTimeItem1.setDestination(location1); //Kantor DPRD Bangka
        travelingTimeItem1.setTransportationMode(jalanKaki);
        travelingTimeItem1.setTravelTime(788); //Hitungan menit
        
        travelingTime.addTravelingTimes(travelingTimeItem1);
        
        TravelingTimeItem travelingTimeItem2 = new TravelingTimeItem();
        travelingTimeItem2.setTravelingTimeItemCode("A0002");
        travelingTimeItem2.setEmbarkation(home);
        travelingTimeItem2.setDestination(location1); //Kantor DPRD Bangka
        travelingTimeItem2.setTransportationMode(sepeda);
        travelingTimeItem2.setTravelTime(263); //Hitungan menit
        
        travelingTime.addTravelingTimes(travelingTimeItem2);
        
        TravelingTimeItem travelingTimeItem3 = new TravelingTimeItem();
        travelingTimeItem3.setTravelingTimeItemCode("A0003");
        travelingTimeItem3.setEmbarkation(home);
        travelingTimeItem3.setDestination(location1); //Kantor DPRD Bangka
        travelingTimeItem3.setTransportationMode(motor);
        travelingTimeItem3.setTravelTime(66); //Hitungan menit
        
        travelingTime.addTravelingTimes(travelingTimeItem3);
        
        TravelingTimeItem travelingTimeItem4 = new TravelingTimeItem();
        travelingTimeItem4.setTravelingTimeItemCode("A0004");
        travelingTimeItem4.setEmbarkation(home);
        travelingTimeItem4.setDestination(location1); //Kantor DPRD Bangka
        travelingTimeItem4.setTransportationMode(mobil);
        travelingTimeItem4.setTravelTime(79);//Hitungan menit
        
        travelingTime.addTravelingTimes(travelingTimeItem4);
        
        TravelingTimeItem travelingTimeItem5 = new TravelingTimeItem();
        travelingTimeItem5.setTravelingTimeItemCode("A0005");
        travelingTimeItem5.setEmbarkation(home);
        travelingTimeItem5.setDestination(location1); //Kantor DPRD Bangka
        travelingTimeItem5.setTransportationMode(angkot);
        travelingTimeItem5.setTravelTime(113); //Hitungan menit
        
        travelingTime.addTravelingTimes(travelingTimeItem5);
        
        TravelingTimeItem travelingTimeItem6 = new TravelingTimeItem();
        travelingTimeItem6.setTravelingTimeItemCode("A0006");
        travelingTimeItem6.setEmbarkation(home);
        travelingTimeItem6.setDestination(location1); //Kantor DPRD Bangka
        travelingTimeItem6.setTransportationMode(ojek);
        travelingTimeItem6.setTravelTime(66); //Hitungan menit
        
        travelingTime.addTravelingTimes(travelingTimeItem6);
        
        TravelingTimeItem travelingTimeItem7 = new TravelingTimeItem();
        travelingTimeItem7.setTravelingTimeItemCode("A0007");
        travelingTimeItem7.setEmbarkation(home);
        travelingTimeItem7.setDestination(location1); //Kantor DPRD Bangka
        travelingTimeItem7.setTransportationMode(taksi);
        travelingTimeItem7.setTravelTime(79); //Hitungan menit
        
        travelingTime.addTravelingTimes(travelingTimeItem7);
        
        TravelingTimeItem travelingTimeItem8 = new TravelingTimeItem();
        travelingTimeItem8.setTravelingTimeItemCode("A0008");
        travelingTimeItem8.setEmbarkation(home);
        travelingTimeItem8.setDestination(location1); //Kantor DPRD Bangka
        travelingTimeItem8.setTransportationMode(bus);
        travelingTimeItem8.setTravelTime(99); //Hitungan menit
        
        travelingTime.addTravelingTimes(travelingTimeItem8);
        
        TravelingTimeItem travelingTimeItem9 = new TravelingTimeItem();
        travelingTimeItem9.setTravelingTimeItemCode("A0009");
        travelingTimeItem9.setEmbarkation(home);
        travelingTimeItem9.setDestination(location1); //Kantor DPRD Bangka
        travelingTimeItem9.setTransportationMode(kereta);
        travelingTimeItem9.setTravelTime(41); //Hitungan menit
        
        travelingTime.addTravelingTimes(travelingTimeItem9);
        
        TravelingTimeItem travelingTimeItem10 = new TravelingTimeItem();
        travelingTimeItem10.setTravelingTimeItemCode("A0010");
        travelingTimeItem10.setEmbarkation(home);
        travelingTimeItem10.setDestination(location1); //Kantor DPRD Bangka
        travelingTimeItem10.setTransportationMode(kapal);
        travelingTimeItem10.setTravelTime(131); //Hitungan menit
        
        travelingTime.addTravelingTimes(travelingTimeItem10);
        
        TravelingTimeItem travelingTimeItem11 = new TravelingTimeItem();
        travelingTimeItem11.setTravelingTimeItemCode("A0011");
        travelingTimeItem11.setEmbarkation(home);
        travelingTimeItem11.setDestination(location1); //Kantor DPRD Bangka
        travelingTimeItem11.setTransportationMode(bus);
        travelingTimeItem11.setTravelTime(4); //Hitungan menit
        
        travelingTime.addTravelingTimes(travelingTimeItem11);
        
        
        TravelingTimeItem travelingTimeItem12 = new TravelingTimeItem();
        travelingTimeItem12.setTravelingTimeItemCode("B0001");
        travelingTimeItem12.setEmbarkation(location1); //Kantor DPRD Bangka
        travelingTimeItem12.setDestination(location2); //Bandara Depati Amir
        travelingTimeItem12.setTransportationMode(jalanKaki);
        travelingTimeItem12.setTravelTime(731); //Hitungan menit
        
        travelingTime.addTravelingTimes(travelingTimeItem12);
        
        TravelingTimeItem travelingTimeItem13 = new TravelingTimeItem();
        travelingTimeItem13.setTravelingTimeItemCode("B0002");
        travelingTimeItem13.setEmbarkation(location1); //Kantor DPRD Bangka
        travelingTimeItem13.setDestination(location2); //Bandara Depati Amir
        travelingTimeItem13.setTransportationMode(sepeda);
        travelingTimeItem13.setTravelTime(244); //Hitungan menit
        
        travelingTime.addTravelingTimes(travelingTimeItem13);
        
        TravelingTimeItem travelingTimeItem14 = new TravelingTimeItem();
        travelingTimeItem14.setTravelingTimeItemCode("B0003");
        travelingTimeItem14.setEmbarkation(location1); //Kantor DPRD Bangka
        travelingTimeItem14.setDestination(location2); //Bandara Depati Amir
        travelingTimeItem14.setTransportationMode(motor);
        travelingTimeItem14.setTravelTime(61); //Hitungan menit
        
        travelingTime.addTravelingTimes(travelingTimeItem14);
        
        TravelingTimeItem travelingTimeItem15 = new TravelingTimeItem();
        travelingTimeItem15.setTravelingTimeItemCode("B0004");
        travelingTimeItem15.setEmbarkation(location1); //Kantor DPRD Bangka
        travelingTimeItem15.setDestination(location2); //Bandara Depati Amir
        travelingTimeItem15.setTransportationMode(mobil);
        travelingTimeItem15.setTravelTime(73); //Hitungan menit
        
        travelingTime.addTravelingTimes(travelingTimeItem15);
        
        TravelingTimeItem travelingTimeItem16 = new TravelingTimeItem();
        travelingTimeItem16.setTravelingTimeItemCode("B0005");
        travelingTimeItem16.setEmbarkation(location1); //Kantor DPRD Bangka
        travelingTimeItem16.setDestination(location2); //Bandara Depati Amir
        travelingTimeItem16.setTransportationMode(angkot);
        travelingTimeItem16.setTravelTime(104); //Hitungan menit
        
        travelingTime.addTravelingTimes(travelingTimeItem16);
        
        TravelingTimeItem travelingTimeItem17 = new TravelingTimeItem();
        travelingTimeItem17.setTravelingTimeItemCode("B0006");
        travelingTimeItem17.setEmbarkation(location1); //Kantor DPRD Bangka
        travelingTimeItem17.setDestination(location2); //Bandara Depati Amir
        travelingTimeItem17.setTransportationMode(ojek);
        travelingTimeItem17.setTravelTime(61); //Hitungan menit
        
        travelingTime.addTravelingTimes(travelingTimeItem17);
        
        TravelingTimeItem travelingTimeItem18 = new TravelingTimeItem();
        travelingTimeItem18.setTravelingTimeItemCode("B0007");
        travelingTimeItem18.setEmbarkation(location1); //Kantor DPRD Bangka
        travelingTimeItem18.setDestination(location2); //Bandara Depati Amir
        travelingTimeItem18.setTransportationMode(taksi);
        travelingTimeItem18.setTravelTime(73); //Hitungan menit
        
        travelingTime.addTravelingTimes(travelingTimeItem18);
        
        TravelingTimeItem travelingTimeItem19 = new TravelingTimeItem();
        travelingTimeItem19.setTravelingTimeItemCode("B0008");
        travelingTimeItem19.setEmbarkation(location1); //Kantor DPRD Bangka
        travelingTimeItem19.setDestination(location2); //Bandara Depati Amir
        travelingTimeItem19.setTransportationMode(bus);
        travelingTimeItem19.setTravelTime(90); //Hitungan menit
        
        travelingTime.addTravelingTimes(travelingTimeItem19);
        
        TravelingTimeItem travelingTimeItem20 = new TravelingTimeItem();
        travelingTimeItem20.setTravelingTimeItemCode("B0009");
        travelingTimeItem20.setEmbarkation(location1); //Kantor DPRD Bangka
        travelingTimeItem20.setDestination(location2); //Bandara Depati Amir
        travelingTimeItem20.setTransportationMode(kereta);
        travelingTimeItem20.setTravelTime(38); //Hitungan menit
        
        travelingTime.addTravelingTimes(travelingTimeItem20);
        
        TravelingTimeItem travelingTimeItem21 = new TravelingTimeItem();
        travelingTimeItem21.setTravelingTimeItemCode("B0010");
        travelingTimeItem21.setEmbarkation(location1); //Kantor DPRD Bangka
        travelingTimeItem21.setDestination(location2); //Bandara Depati Amir
        travelingTimeItem21.setTransportationMode(kapal);
        travelingTimeItem21.setTravelTime(122); //Hitungan menit
        
        travelingTime.addTravelingTimes(travelingTimeItem21);
        
        TravelingTimeItem travelingTimeItem22 = new TravelingTimeItem();
        travelingTimeItem22.setTravelingTimeItemCode("B0011");
        travelingTimeItem22.setEmbarkation(location1); //Kantor DPRD Bangka
        travelingTimeItem22.setDestination(location2); //Bandara Depati Amir
        travelingTimeItem22.setTransportationMode(pesawat);
        travelingTimeItem22.setTravelTime(4); //Hitungan menit
        
        travelingTime.addTravelingTimes(travelingTimeItem22);
        
        
        TravelingTimeItem travelingTimeItem23 = new TravelingTimeItem();
        travelingTimeItem23.setTravelingTimeItemCode("C0001");
        travelingTimeItem23.setEmbarkation(location2); //Bandara Depati Amir
        travelingTimeItem23.setDestination(location3); //Bandara Soekarno Hatta
        travelingTimeItem23.setTransportationMode(jalanKaki);
        travelingTimeItem23.setTravelTime(4); //Hitungan menit
        
        travelingTime.addTravelingTimes(travelingTimeItem23);
        
        TravelingTimeItem travelingTimeItem24 = new TravelingTimeItem();
        travelingTimeItem24.setTravelingTimeItemCode("C0001");
        travelingTimeItem24.setEmbarkation(location2); //Bandara Depati Amir
        travelingTimeItem24.setDestination(location3); //Bandara Soekarno Hatta
        travelingTimeItem24.setTransportationMode(jalanKaki);
        travelingTimeItem24.setTravelTime(4); //Hitungan menit
        
        travelingTime.addTravelingTimes(travelingTimeItem23);
        
        Hisyam.getEventList().suggestTransportationModes(travelingTime);
        //travelingTime.printAllItem();
        // TODO code application logic here
        
        travelingTime.printAllItem();
        Hisyam.printEventList();
    }
    
}
