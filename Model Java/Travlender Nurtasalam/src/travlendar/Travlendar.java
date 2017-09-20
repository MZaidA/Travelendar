/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendar;

import java.sql.Date;
import java.time.LocalDate;

/**
 *
 * @author USER
 */



public class Travlendar {
    
    public static void main(String[] args) {
        // TODO code application logic here
        
        agenda Agenda1 = new agenda ();
        User user1 = new User();
        transportasi Transportasi1 = new transportasi ();
        Lookup lookup1 = new Lookup();
        
        user1.setIdUser("2111");
        user1.setNamaUser("Ibu Fadhit");
        Agenda1.setKodeAgenda("qwqw111");
        Agenda1.setNamaAgenda("Ngantor");
        Agenda1.setLokasi("Cicaheum");
        Agenda1.setWaktuMulai(Date.valueOf("2017-10-02"));
        Agenda1.setWaktuSelesai(Date.valueOf("2017-10-02"));
        Transportasi1.setModaTransportasi("Motor");
        
        System.out.println("===================================");
        System.out.println("================***================");
        System.out.println("===================================");
        System.out.println("Id User        : " + user1.getIdUser());
        System.out.println("Nama User      : " + user1.getNamaUser());
        System.out.println("************************************");
        System.out.println("Kode Agenda    : " + Agenda1.getKodeAgenda());
        System.out.println("Nama Agenda    : " + Agenda1.getNamaAgenda());
        System.out.println("Lokasi         : " + Agenda1.getLokasi());
        System.out.println("Waktu Mulai    : " + Agenda1.getWaktuMulai());
        System.out.println("Waktu Selesai  : " + Agenda1.getWaktuSelesai());
        System.out.println("Kendaraan      : " + Transportasi1.getModaTransportasi());
        System.out.println();
        System.out.println();
        
        
        agenda Agenda2 = new agenda ();
        User user2 = new User();
        transportasi Transportasi2 = new transportasi ();
        Lookup lookup2 = new Lookup();
        
        user2.setIdUser("2111");
        user2.setNamaUser("Ibu Fadhit");
        Agenda2.setKodeAgenda("qwqw121");
        Agenda2.setNamaAgenda("Ngantor");
        Agenda2.setLokasi("Soreang");
        Agenda2.setWaktuMulai(Date.valueOf("2017-10-2"));
        Agenda2.setWaktuSelesai(Date.valueOf("2017-10-2"));
        Transportasi1.setModaTransportasi("Motor");
        
        System.out.println("===================================");
        System.out.println("================***================");
        System.out.println("===================================");
        System.out.println("Id User        : " + user2.getIdUser());
        System.out.println("Nama User      : " + user2.getNamaUser());
        System.out.println("************************************");
        System.out.println("Kode Agenda    : " + Agenda2.getKodeAgenda());
        System.out.println("Nama Agenda    : " + Agenda2.getNamaAgenda());
        System.out.println("Lokasi         : " + Agenda2.getLokasi());
        System.out.println("Waktu Mulai    : " + Agenda2.getWaktuMulai());
        System.out.println("Waktu Selesai  : " + Agenda2.getWaktuSelesai());
        System.out.println("Kendaraan      : " + Transportasi2.getModaTransportasi());
        System.out.println();
        System.out.println();
        
        
        agenda Agenda3 = new agenda ();
        User user3 = new User();
        transportasi Transportasi3 = new transportasi ();
        Lookup lookup3 = new Lookup();
        
        user3.setIdUser("2111");
        user3.setNamaUser("Ibu Fadhit");
        Agenda3.setKodeAgenda("qwqw139");
        Agenda3.setNamaAgenda("Ngantor");
        Agenda3.setLokasi("Cibiri");
        Agenda3.setWaktuMulai(Date.valueOf("2017-10-02"));
        Agenda3.setWaktuSelesai(Date.valueOf("2017-10-02"));
        Transportasi1.setModaTransportasi("Motor");
        
        System.out.println("===================================");
        System.out.println("================***================");
        System.out.println("===================================");
        System.out.println("Id User        : " + user2.getIdUser());
        System.out.println("Nama User      : " + user2.getNamaUser());
        System.out.println("************************************");
        System.out.println("Kode Agenda    : " + Agenda3.getKodeAgenda());
        System.out.println("Nama Agenda    : " + Agenda3.getNamaAgenda());
        System.out.println("Lokasi         : " + Agenda3.getLokasi());
        System.out.println("Waktu Mulai    : " + Agenda3.getWaktuMulai());
        System.out.println("Waktu Selesai  : " + Agenda3.getWaktuSelesai());
        System.out.println("Kendaraan      : " + Transportasi3.getModaTransportasi());
        System.out.println();
        System.out.println();
        
        
        /*Travlendar jadwal1= new Travlendar ();
        jadwal1.setIdUser("2112");
        jadwal1.setNamaUser("Ibu Fidi");
        jadwal1.setLokasiUser("Cipageran - Kota Cimahi");
        jadwal1.setKodeAgenda(1);
        jadwal1.setNamaAgenda("Mengantarkan Cireng Ke tiap Sekolah");
        //jadwal1.setLocation("SMPN 1 Cimahi");
        jadwal1.setWaktu("12 September 2017");
        jadwal1.setMulai("08.45 WIB");
        jadwal1.setSelesai("09.30 WIB");
        jadwal1.setKendaraan("Motor");
        jadwal1.setJarak(3);
        jadwal1.setWaktuTempuh("7 Menit");
        
        Travlendar jadwal2= new Travlendar ();
        jadwal2.setLocation("SMPN 2 Cimahi");
        jadwal2.setMulai("08.50 WIB");
        jadwal2.setSelesai("09.00 WIB");
        jadwal2.setJarak(2);
       
        Travlendar jadwal5= new Travlendar ();
        jadwal5.setLocation("SMPN 1 Cimahi");
        jadwal5.setMulai("09.07 WIB");
        jadwal5.setSelesai("09.12 WIB");
        jadwal5.setJarak(2);
        
        Travlendar jadwal3= new Travlendar ();
        jadwal3.setLocation("SMPN 3 Cimahi");
        jadwal3.setMulai("09.17 WIB");
        jadwal3.setSelesai("09.21 WIB");
        jadwal3.setJarak(3);
        
        Travlendar jadwal4= new Travlendar ();
        jadwal4.setLocation("SMPN 4 Cimahi");
        jadwal4.setMulai("09.28 WIB");
        jadwal4.setSelesai("09.30 WIB");
        jadwal4.setJarak(0);
        
        
        System.out.println("===================================");
        System.out.println("================***================");
        System.out.println("===================================");
        System.out.println("Id User        : " + jadwal1.IdUser);
        System.out.println("Nama User      : " + jadwal1.NamaUser);
        System.out.println("Lokasi User    : " + jadwal1.LokasiUser);
        System.out.println("************************************");
        System.out.println("Id Agenda      : " + jadwal1.KodeAgenda);
        System.out.println("Nama Agenda    : " + jadwal1.NamaAgenda);
        //System.out.println("Lokasi         : " + jadwal1.Location);
        System.out.println("Waktu          : " + jadwal1.Waktu);
        System.out.println("Mulai          : " + jadwal1.Mulai);
        System.out.println("Selesai        : " + jadwal1.Selesai);
        System.out.println("Kendaraan      : " + jadwal1.Kendaraan);
        System.out.println();
        System.out.println("Lokasi         : " + jadwal2.Location);
        System.out.println("Mulai          : " + jadwal2.Mulai);
        System.out.println("Selesai        : " + jadwal2.Selesai);
        System.out.println();
        System.out.println("Lokasi         : " + jadwal5.Location);
        System.out.println("Mulai          : " + jadwal5.Mulai);
        System.out.println("Selesai        : " + jadwal5.Selesai);
        System.out.println();
        System.out.println("Lokasi         : " + jadwal3.Location);
        System.out.println("Mulai          : " + jadwal3.Mulai);
        System.out.println("Selesai        : " + jadwal3.Selesai);
        System.out.println();
        System.out.println("Lokasi         : " + jadwal4.Location);
        System.out.println("Mulai          : " + jadwal4.Mulai);
        System.out.println("Selesai        : " + jadwal4.Selesai);
        System.out.println();
        System.out.println();*/
    }

    
    
}
