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



public class Travlendar {
    
    public static void main(String[] args) throws ParseException {
        User User1 = new User("Bu Maryam");
        ArrEvent ListEvent = new ArrEvent();
        Location home = new Location("Rumah");
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        
        Location destination1 = new Location("Kantor DPRD Bangka"); //Destinasi akhir
        Location destination2 = new Location("Bandara Depati Amir");
        Location destination3 = new Location("Bandara Soekarno Hatta");
        Location destination4 = new Location("Kantor DPRD Jakarta");
        Location destination5 = new Location("Istana Ratu Hotel");
        Location destination6 = new Location("Kost Dekat UMN");
        
        Event item1 = new Event("Apel Pagi");
        Date startTime1 = dateFormat.parse("2017-07-28 06:45:00");
        Date endTime1 = dateFormat.parse("2017-07-28 08:30:00");
        item1.setLokasi(destination1);
        item1.setEndTime(endTime1);
        item1.setStartTime(startTime1);
        ListEvent.addAgendaItem(item1);//nambahin item1 ke list itinerary
        
        Event item2 = new Event("Perjalanan Dinas 1");
        
        java.util.Date startTime2 = dateFormat.parse("2017-07-28 10:00:00");
        java.util.Date endTime2 = dateFormat.parse("2017-07-28 13:45:00");
        item2.setLokasi(destination2);
        item2.setEndTime(endTime2);
        item2.setStartTime(startTime2);
        ListEvent.addAgendaItem(item2);
        
        Event item3 = new Event("Perjalanan Dinas 2");
        Date startTime3 = dateFormat.parse("2017-07-28 15:05:00");
        Date endTime3 = dateFormat.parse("2017-07-28 15:35:00");
        item3.setLokasi(destination3);
        item3.setEndTime(endTime3);
        item3.setStartTime(startTime3);
        ListEvent.addAgendaItem(item3);
        
        Event item4 = new Event("Tugas Dinas");
        Date startTime4 = dateFormat.parse("2017-07-28 16:10:00");
        Date endTime4 = dateFormat.parse("2017-07-28 16:30:00");
        item4.setLokasi(destination4);
        item4.setEndTime(endTime4);
        item4.setStartTime(startTime4);
        ListEvent.addAgendaItem(item4);
        
        Event item5 = new Event("Istirahat");
        Date startTime5 = dateFormat.parse("2017-07-28 16:32:00");
        Date endTime5 = dateFormat.parse("2017-07-28 16:45:00");
        item5.setLokasi(destination5);
        item5.setEndTime(endTime5);
        item5.setStartTime(startTime5);
        ListEvent.addAgendaItem(item5);
      
        Event item6 = new Event("Menjenguk Anak");
        Date startTime6 = dateFormat.parse("2017-07-28 17:452:00");
        Date endTime6 = dateFormat.parse("2017-07-29 06:00:00");
        item5.setLokasi(destination6);
        item5.setEndTime(endTime6);
        item5.setStartTime(startTime6);
        ListEvent.addAgendaItem(item6);
        
        Event item7 = new Event("Istirahat");
        Date startTime7 = dateFormat.parse("2017-07-29 07:00:00");
        Date endTime7 = dateFormat.parse("2017-07-29 07:45:00");
        item5.setLokasi(destination5);
        item5.setEndTime(endTime7);
        item5.setStartTime(startTime7);
        ListEvent.addAgendaItem(item7);
        
        Event item8 = new Event("Tugas Dinas");
        Date startTime8 = dateFormat.parse("2017-07-29 07:47:00");
        Date endTime8 = dateFormat.parse("2017-07-29 10:30:00");
        item5.setLokasi(destination1);
        item5.setEndTime(endTime8);
        item5.setStartTime(startTime8);
        ListEvent.addAgendaItem(item8);
        
        Event item9 = new Event("Pulang ke Bangka 1");
        Date startTime9 = dateFormat.parse("2017-07-29 11:15:00");
        Date endTime9 = dateFormat.parse("2017-07-29 11:50:00");
        item5.setLokasi(destination3);
        item5.setEndTime(endTime9);
        item5.setStartTime(startTime9);
        ListEvent.addAgendaItem(item9);
        
        Event item10 = new Event("Pulang ke Bangka 2");
        Date startTime10 = dateFormat.parse("2017-07-29 13:00:00");
        Date endTime10 = dateFormat.parse("2017-07-29 13:30:00");
        item5.setLokasi(destination2);
        item5.setEndTime(endTime10);
        item5.setStartTime(startTime10);
        ListEvent.addAgendaItem(item10);
        
        Event item11 = new Event("Laporan Tugas Dinas");
        Date startTime11 = dateFormat.parse("2017-07-29 16:32:00");
        Date endTime11 = dateFormat.parse("2017-07-29 16:45:00");
        item5.setLokasi(destination5);
        item5.setEndTime(endTime5);
        item5.setStartTime(startTime5);
        ListEvent.addAgendaItem(item5);
        
        ListEvent.setCurrentLoc(home);
        
        User1.setAgenda(ListEvent); //set Itinerary untuk menampung item itinerary
 
        ModeTransportasi jalanKaki = new ModeTransportasi("Jalan Kaki");
        ModeTransportasi sepeda = new ModeTransportasi("Sepeda");
        ModeTransportasi motor = new ModeTransportasi("Motor");
        ModeTransportasi mobil = new ModeTransportasi("Mobil");
        ModeTransportasi angkot = new ModeTransportasi("Angkot");
        ModeTransportasi ojek = new ModeTransportasi("Ojek");
        ModeTransportasi taksi = new ModeTransportasi("Taksi");
        ModeTransportasi bus = new ModeTransportasi("Bus");
        ModeTransportasi keretaApi = new ModeTransportasi("Kereta Api");
        ModeTransportasi kapal = new ModeTransportasi("Kapal");
        ModeTransportasi pesawat = new ModeTransportasi("Pesawat");
        
        Lookup travelingTime = new Lookup();
        
        LookupItem travelingTimeItem1 = new LookupItem();
        travelingTimeItem1.setTujuanAwal(home);
        travelingTimeItem1.setTujuanAkhir(destination1);
        travelingTimeItem1.setTransportationMode(jalanKaki);
        travelingTimeItem1.setWaktuTempuh(30);
        
        travelingTime.addLookupItem(travelingTimeItem1);
        
        LookupItem travelingTimeItem2 = new LookupItem();
        travelingTimeItem2.setTujuanAwal(home);
        travelingTimeItem2.setTujuanAkhir(destination1); 
        travelingTimeItem2.setTransportationMode(motor);
        travelingTimeItem2.setWaktuTempuh(15);
        
        travelingTime.addLookupItem(travelingTimeItem2);
        
        LookupItem travelingTimeItem3 = new LookupItem();
        travelingTimeItem3.setTujuanAwal(home); //Ciwaruga
        travelingTimeItem3.setTujuanAkhir(destination1); //Polban
        travelingTimeItem3.setTransportationMode(mobil);
        travelingTimeItem3.setWaktuTempuh(20);
        
        travelingTime.addLookupItem(travelingTimeItem3);
        
        LookupItem travelingTimeItem4 = new LookupItem();
        travelingTimeItem4.setTujuanAwal(destination1); //Polban
        travelingTimeItem4.setTujuanAkhir(destination2); //Sarijadi
        travelingTimeItem4.setTransportationMode(sepeda);
        travelingTimeItem4.setWaktuTempuh(31);
        
        travelingTime.addLookupItem(travelingTimeItem4);
        
        LookupItem travelingTimeItem5 = new LookupItem();
        travelingTimeItem5.setTujuanAwal(destination1); //Polban
        travelingTimeItem5.setTujuanAkhir(destination2); //Sarijadi
        travelingTimeItem5.setTransportationMode(motor);
        travelingTimeItem5.setWaktuTempuh(15);
        
        travelingTime.addLookupItem(travelingTimeItem5);
        
        LookupItem travelingTimeItem6 = new LookupItem();
        travelingTimeItem6.setTujuanAwal(destination1); //Polban
        travelingTimeItem6.setTujuanAkhir(destination2); //Sarijadi
        travelingTimeItem6.setTransportationMode(jalanKaki);
        travelingTimeItem6.setWaktuTempuh(45);
        
        travelingTime.addLookupItem(travelingTimeItem6);
        
        LookupItem travelingTimeItem7 = new LookupItem();
        travelingTimeItem7.setTujuanAwal(destination1); //Polban
        travelingTimeItem7.setTujuanAkhir(destination2); //Sarijadi
        travelingTimeItem7.setWaktuTempuh(30);
        
        travelingTime.addLookupItem(travelingTimeItem7);
        
        User1.getAgenda().suggestTransportationModes(travelingTime);
        //travelingTime.printAllItem();
        // TODO code application logic here
        
        User1.printAllUserAgenda();
    }
}
