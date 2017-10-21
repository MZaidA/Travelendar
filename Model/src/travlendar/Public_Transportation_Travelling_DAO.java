/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import static DAO.EventDAO.getConnection;
import static DAO.LocationDAO.getConnection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.Date;

/**
 *
 * @author fauzy
 */
public class Public_Transportation_Travelling_DAO {

    /**
     * @param args the command line arguments
     */
    
        Connection con = null;
        public void connect(){
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost/namadatabase", "root", "");
            }catch(Exception ex){
                System.out.println(ex);
            }
        }
        
        public List<PublicTransportationTravelling> getAll(){ //Mengambil data dari database ke lokal.
            /*Method ini mengirimkan List yang elemennya objek PTransportation, 
            Sedangkan di file ini tidak menyediakan class PTransportation.*/
            List<PublicTransportationTravelling> daftarTravelingTransportPublik = new ArrayList<PublicTransportationTravelling>();
            try{
                Statement st = con.createStatement();
                String query = "SELECT * FROM Public_Transportation_Traveling";
                ResultSet rs = st.executeQuery(query); //isi rs berupa list?
                while(rs.next()){
                    PublicTransportationTravelling ptt = new PublicTransportationTravelling();
                    ptt.setArrivalSchedule(rs.getDate("ARRIVAL_SCHEDULE"));
                    ptt.setDepartureSchedule(rs.getDate("DEPARTURE_SCHEDULE"));
                    
                    daftarTravelingTransportPublik.add(ptt);
                }    
            }catch(Exception e){
                System.out.println(e);
            }
            return daftarTravelingTransportPublik;
        }
        
        public int save(PublicTransportationTravelling ptt) { //Mengirimkan data dari lokal ke database
        int status = 0;
        try {
            Statement st = con.createStatement();
            PreparedStatement ps = con.prepareStatement("INSERT INTO Public_Transportation_Traveling(arrival_schedule,departure_schedule) VALUES (?, ?, ?, ?, ?, ?)");
            ps.setDate(1, new Date(ptt.getArrivalSchedule().getTime()));
            ps.setDate(2, new Date(ptt.getDepartureSchedule().getTime()));
            status = ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }
     
        public int update(PublicTransportationTravelling ptt) {
            int status = 0;
        try {
            PreparedStatement ps = con.prepareStatement("UPDATE Public_Transportation_Traveling set LOCATION_ID=?, LOC_LOCATION_ID=?, PUBLIC_ID=?, ARRIVAL_SCHEDULE=?, DEPARTURE_SCHEDULE=? WHERE PUBLIC_TRAVELING_ID=?");
            ps.setInt(1, ptt.getLocation_id());
            ps.setInt(2, ptt.getLOC_location_id());
            ps.setInt(3, ptt.getPublic_id());
            ps.setDate(4, (Date) ptt.getArrivalSchedule());
            ps.setDate(5, (Date) ptt.getDepartureSchedule());
            ps.setInt(6, ptt.getPublic_traveling_id());
            status = ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
    public int delete(PublicTransportationTravelling ptt) {
        int status = 0;
        try {
            PreparedStatement ps = con.prepareStatement("DELETE FROM Public_Transportation_Travelling WHERE PUBLIC_TRAVELING_ID=?");
            ps.setInt(1, ptt.getPublic_traveling_id());
            status = ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
}
