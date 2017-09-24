/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlender.nurtasalam;

/**
 *
 * @author USER
 */
public class TravlenderNurtasalam {

    /**
     * @param args the command line arguments
     */
    private String IdUser;
    private String NamaUser;
    private String Gender;
    private String Email;
    private String Password;
    private String LokasiUser;
    
    private Integer IdAgenda;
    private String NamaAgenda;
    private String Mulai;
    private String Selesai;
    private String Location;
    private String Waktu;
    private String WaktuTempuh;
    
    private Integer IdKendaraan;
    private String Kendaraan;
    private Integer Jarak;
    
    
    public TravlenderNurtasalam ()
    {
    }

    /**
     * @return the IdUser
     */
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
    public String getNamaUser() {
        return NamaUser;
    }

    /**
     * @param NamaUser the NamaUser to set
     */
    public void setNamaUser(String NamaUser) {
        this.NamaUser = NamaUser;
    }

    /**
     * @return the Gender
     */
    public String getGender() {
        return Gender;
    }

    /**
     * @param Gender the Gender to set
     */
    public void setGender(String Gender) {
        this.Gender = Gender;
    }

    /**
     * @return the Email
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

    /**
     * @return the LokasiUser
     */
    public String getLokasiUser() {
        return LokasiUser;
    }

    /**
     * @param LokasiUser the LokasiUser to set
     */
    public void setLokasiUser(String LokasiUser) {
        this.LokasiUser = LokasiUser;
    }

    /**
     * @return the IdAgenda
     */
    public Integer getIdAgenda() {
        return IdAgenda;
    }

    /**
     * @param IdAgenda the IdAgenda to set
     */
    public void setIdAgenda(Integer IdAgenda) {
        this.IdAgenda = IdAgenda;
    }

    /**
     * @return the NamaAgenda
     */
    public String getNamaAgenda() {
        return NamaAgenda;
    }

    /**
     * @param NamaAgenda the NamaAgenda to set
     */
    public void setNamaAgenda(String NamaAgenda) {
        this.NamaAgenda = NamaAgenda;
    }

    /**
     * @return the Mulai
     */
    public String getMulai() {
        return Mulai;
    }

    /**
     * @param Mulai the Mulai to set
     */
    public void setMulai(String Mulai) {
        this.Mulai = Mulai;
    }

    /**
     * @return the Selesai
     */
    public String getSelesai() {
        return Selesai;
    }

    /**
     * @param Selesai the Selesai to set
     */
    public void setSelesai(String Selesai) {
        this.Selesai = Selesai;
    }

    /**
     * @return the Location
     */
    public String getLocation() {
        return Location;
    }

    /**
     * @param Location the Location to set
     */
    public void setLocation(String Location) {
        this.Location = Location;
    }

    /**
     * @return the Waktu
     */
    public String getWaktu() {
        return Waktu;
    }

    /**
     * @param Waktu the Waktu to set
     */
    public void setWaktu(String Waktu) {
        this.Waktu = Waktu;
    }

    /**
     * @return the WaktuTempuh
     */
    public String getWaktuTempuh() {
        return WaktuTempuh;
    }

    /**
     * @param WaktuTempuh the WaktuTempuh to set
     */
    public void setWaktuTempuh(String WaktuTempuh) {
        this.WaktuTempuh = WaktuTempuh;
    }

    /**
     * @return the IdKendaraan
     */
    public Integer getIdKendaraan() {
        return IdKendaraan;
    }

    /**
     * @param IdKendaraan the IdKendaraan to set
     */
    public void setIdKendaraan(Integer IdKendaraan) {
        this.IdKendaraan = IdKendaraan;
    }

    /**
     * @return the Kendaraan
     */
    public String getKendaraan() {
        return Kendaraan;
    }

    /**
     * @param Kendaraan the Kendaraan to set
     */
    public void setKendaraan(String Kendaraan) {
        this.Kendaraan = Kendaraan;
    }

    /**
     * @return the Jarak
     */
    public Integer getJarak() {
        return Jarak;
    }

    /**
     * @param Jarak the Jarak to set
     */
    public void setJarak(Integer Jarak) {
        this.Jarak = Jarak;
    }
    
        public static void main(String[] args) {
        // TODO code application logic here
        TravlenderNurtasalam Agenda1 = new TravlenderNurtasalam ();
        Agenda1.setIdUser("2111");
        Agenda1.setNamaUser("Ibu Fadhit");
        Agenda1.setLokasiUser("Rumah");
        Agenda1.setIdAgenda(5);
        Agenda1.setNamaAgenda("Ngantor");
        Agenda1.setLocation("Cicaheum");
        Agenda1.setWaktu("12 September 2017");
        Agenda1.setMulai("07.00 WIB");
        Agenda1.setSelesai("08.00 WIB");
        Agenda1.setKendaraan("Motor");
        
        System.out.println("===================================");
        System.out.println("================***================");
        System.out.println("===================================");
        System.out.println("Id User        : " + Agenda1.IdUser);
        System.out.println("Nama User      : " + Agenda1.NamaUser);
        System.out.println("Lokasi User    : " + Agenda1.LokasiUser);
        System.out.println("************************************");
        System.out.println("Id Agenda      : " + Agenda1.IdAgenda);
        System.out.println("Nama Agenda    : " + Agenda1.NamaAgenda);
        System.out.println("Lokasi         : " + Agenda1.Location);
        System.out.println("Waktu          : " + Agenda1.Waktu);
        System.out.println("Mulai          : " + Agenda1.Mulai);
        System.out.println("Selesai        : " + Agenda1.Selesai);
        System.out.println("Kendaraan      : " + Agenda1.Kendaraan);
        System.out.println();
        System.out.println();
        
        
        TravlenderNurtasalam Agenda2 = new TravlenderNurtasalam ();
        Agenda2.setIdUser("2111");
        Agenda2.setNamaUser("Ibu Fadhit");
        Agenda2.setLokasiUser("Rumah");
        Agenda2.setIdAgenda(6);
        Agenda2.setNamaAgenda("Ngantor");
        Agenda2.setLocation("Cibiru");
        Agenda2.setWaktu("12 September 2017");
        Agenda2.setMulai("09.00 WIB");
        Agenda2.setSelesai("11.00 WIB");
        Agenda2.setKendaraan("Motor");
        
        System.out.println("===================================");
        System.out.println("================***================");
        System.out.println("===================================");
        System.out.println("Id User        : " + Agenda1.IdUser);
        System.out.println("Nama User      : " + Agenda1.NamaUser);
        System.out.println("Lokasi User    : " + Agenda1.LokasiUser);
        System.out.println("************************************");
        System.out.println("Id Agenda      : " + Agenda2.IdAgenda);
        System.out.println("Nama Agenda    : " + Agenda2.NamaAgenda);
        System.out.println("Lokasi         : " + Agenda2.Location);
        System.out.println("Waktu          : " + Agenda2.Waktu);
        System.out.println("Mulai          : " + Agenda2.Mulai);
        System.out.println("Selesai        : " + Agenda2.Selesai);
        System.out.println("Kendaraan      : " + Agenda2.Kendaraan);
        System.out.println();
        System.out.println();
        
        
        TravlenderNurtasalam Agenda3= new TravlenderNurtasalam ();
        Agenda3.setIdUser("2111");
        Agenda3.setNamaUser("Ibu Fadhit");
        Agenda3.setLokasiUser("Rumah");
        Agenda3.setIdAgenda(7);
        Agenda3.setNamaAgenda("Ngantor");
        Agenda3.setLocation("Soreang");
        Agenda3.setWaktu("12 September 2017");
        Agenda3.setMulai("13.00 WIB");
        Agenda3.setSelesai("15.00 WIB");
        Agenda3.setKendaraan("Motor");
        
        System.out.println("===================================");
        System.out.println("================***================");
        System.out.println("===================================");
        System.out.println("Id User        : " + Agenda1.IdUser);
        System.out.println("Nama User      : " + Agenda1.NamaUser);
        System.out.println("Lokasi User    : " + Agenda1.LokasiUser);
        System.out.println("************************************");
        System.out.println("Id Agenda      : " + Agenda3.IdAgenda);
        System.out.println("Nama Agenda    : " + Agenda3.NamaAgenda);
        System.out.println("Lokasi         : " + Agenda3.Location);
        System.out.println("Waktu          : " + Agenda3.Waktu);
        System.out.println("Mulai          : " + Agenda3.Mulai);
        System.out.println("Selesai        : " + Agenda3.Selesai);
        System.out.println("Kendaraan      : " + Agenda3.Kendaraan);
        System.out.println();
        System.out.println();
        
        
        TravlenderNurtasalam jadwal1= new TravlenderNurtasalam ();
        jadwal1.setIdUser("2112");
        jadwal1.setNamaUser("Ibu Fidi");
        jadwal1.setLokasiUser("Cipageran - Kota Cimahi");
        jadwal1.setIdAgenda(1);
        jadwal1.setNamaAgenda("Mengantarkan Cireng Ke tiap Sekolah");
        //jadwal1.setLocation("SMPN 1 Cimahi");
        jadwal1.setWaktu("12 September 2017");
        jadwal1.setMulai("08.45 WIB");
        jadwal1.setSelesai("09.30 WIB");
        jadwal1.setKendaraan("Motor");
        jadwal1.setJarak(3);
        jadwal1.setWaktuTempuh("7 Menit");
        
        TravlenderNurtasalam jadwal2= new TravlenderNurtasalam ();
        jadwal2.setLocation("SMPN 2 Cimahi");
        jadwal2.setMulai("08.50 WIB");
        jadwal2.setSelesai("09.00 WIB");
        jadwal2.setJarak(2);
       
        TravlenderNurtasalam jadwal5= new TravlenderNurtasalam ();
        jadwal5.setLocation("SMPN 1 Cimahi");
        jadwal5.setMulai("09.07 WIB");
        jadwal5.setSelesai("09.12 WIB");
        jadwal5.setJarak(2);
        
        TravlenderNurtasalam jadwal3= new TravlenderNurtasalam ();
        jadwal3.setLocation("SMPN 3 Cimahi");
        jadwal3.setMulai("09.17 WIB");
        jadwal3.setSelesai("09.21 WIB");
        jadwal3.setJarak(3);
        
        TravlenderNurtasalam jadwal4= new TravlenderNurtasalam ();
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
        System.out.println("Id Agenda      : " + jadwal1.IdAgenda);
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
        System.out.println();
    }
}
