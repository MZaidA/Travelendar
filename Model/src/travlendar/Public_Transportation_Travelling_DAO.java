/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author fauzy
 */
public class Public_Transportation_Travelling_DAO {

    /**
     * @param args the command line arguments
     */
    
    public class PTransportationTravelling{
        
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
            String query = "INSERT INTO public_transportation_traveling(arrival_schedule, departure_schedule) VALUES (?, ?)";
            ResultSet rs = st.executeQuery(query);
            Date tDate = rs.getDate();
            rs.getDate(1, ptt.getArrivalSchedule());
            rs.setString(2, ptt.getDepartureSchedule());
            status = rs.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }
        
    }
    
}
