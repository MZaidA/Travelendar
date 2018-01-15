<%-- 
    Document   : unsSuggest.jsp
    Created on : Oct 30, 2017, 11:25:23 PM
    Author     : syamcode
--%>

<%@page import="java.util.Date"%>
<%@page import="Model.Event"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="DAO.SuggestionDAO" %>
<%@page import="Model.UnscheduledTravelingTable"%>

<%
    String eventLoc = request.getParameter("loc");
    String arrTime = request.getParameter("arrTime");
    String firstLoc = request.getParameter("firstId");
    SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy hh:mm");
    java.util.Date arrivalTime = dateFormat.parse(arrTime);
    int fid = 0;
    long fend = 0;
    if(!eventLoc.equals("0") & !arrTime.equals("")){
        List<UnscheduledTravelingTable> uSuggestions = null;
        if(firstLoc.equals("")) {
            Event lastEvent= SuggestionDAO.getLastEvent(arrTime);
            if(lastEvent!=null) {
                fid = lastEvent.getLocationId();
                fend = lastEvent.getEndTime().getTime();
            }
        } 
        else {
            fid = Integer.parseInt(firstLoc);
            fend = Integer.MAX_VALUE;
        }
        if(fid!=0) {
         long diff = arrivalTime.getTime()-fend;
         System.out.println("DIFF: " + diff);
         int id = Integer.parseInt(eventLoc);
         uSuggestions = SuggestionDAO.suggestUnscheduled(fid, id, diff/60000);
         for(UnscheduledTravelingTable item : uSuggestions) {
             out.print("<option value='" + item.getUnscheduledTravelingId() 
                     +"'>"+ item.getUnscheduledTransportationType() + " (Waktu tempuh " + item.getTravelingTime()+" menit)</option>");
         }
        }
        if(uSuggestions==null || uSuggestions.isEmpty()){
            if(fid==0) {
                out.print("<option value='0'>Lokasi Awal tidak ditemukan</option>");
            }
            else {
                out.print("<option value='0'>Suggestion tidak ditemukan</option>");
            }
        }
    }
    else {
        out.print("<option value='0'>Masukkan Lokasi Event, dan Arrival Time terlebih dahulu</option>");
    }
    
%>