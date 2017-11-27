<%-- 
    Document   : editScheduledTravelingTableForm
    Created on : Nov 2, 2017, 8:09:00 PM
    Author     : GL 553 VD380 i7
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../Assets/css/manageStyle.css"/>
        <link rel="stylesheet" href="../Assets/datetimepick/dist/jquery-ui.css"/> <!--http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css-->
        <link rel="stylesheet" href="../Assets/datetimepick/dist/jquery-ui-timepicker-addon.css"/> <!-- link untuk memanggil timepicker -->
        <script type="text/javascript" src="../Assets/datetimepick/jquery/jquery-1.11.1.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="wrapper">
            <li><strong>Admin</strong>TRAVELENDAR</li> 	
        </div>
        <%@include file = "../navbarManage.jsp"%>
        <div id="mainPanel">
            <h1>UPDATE SCHEDULED TRAVELING</h1>
            <div class="form">
	    	<form action="/action_page.php">
                    <label for="LocationA">Location A</label>	
                    <select class="minimal" id="Locationa" name="Locationa">
                        <option value="rumah">Rumah</option>
                        <option value="kantor_dprd">Kantor DPRD</option>
                        <option value="bandara_banka">Bandara Banka</option>
                        <option value="bandara_halim">Bandara Halim Perdanakusuma</option>
                        <option value="jakarta">Jakarta</option>
                        <option value="tangerang">Tangerang</option>
                    </select>
                    <label for="LocationB">Location B</label>	
                    <select class="minimal" id="Locationb" name="Locationb">
                        <option value="rumah">Rumah</option>
                        <option value="kantor_dprd">Kantor DPRD</option>
                        <option value="bandara_banka">Bandara Banka</option>
                        <option value="bandara_halim">Bandara Halim Perdanakusuma</option>
                        <option value="jakarta">Jakarta</option>
                        <option value="tangerang">Tangerang</option>
                    </select>
                    <label for="fname">Transportaion Mode</label>
                    <select class="minimal">
                        <option>Bus</option>
                        <option>Train</option>
                        <option>Ship</option>
                        <option>Plane</option>
                    </select>
                    <label for="fname">Departure Time</label>
                    <input type="text" id="dateTime1" name="departureTime" placeholder="departureTime...">
                    <label for="fname">Arrival Time</label>
                    <input type="text" id="dateTime2" name="arrivalTime" placeholder="arrivalTime...">
                    <input type="submit">
                </form>
            </div>
        </div>
        <script type="text/javascript" src="../Assets/datetimepick/jquery/ui/1.11.0/jquery-ui.min.js"></script> <!-- link untuk memanggil timepicker -->
        <script type="text/javascript" src="../Assets/datetimepick/dist/jquery-ui-timepicker-addon.js"></script> <!-- link untuk memanggil timepicker -->
        <script type="text/javascript" src="../Assets/datetimepick/dist/i18n/jquery-ui-timepicker-addon-i18n.min.js"></script> <!-- link untuk memanggil timepicker -->
        <script type="text/javascript" src="../Assets/datetimepick/dist/jquery-ui-sliderAccess.js"></script> <!-- link untuk memanggil timepicker -->
        <script>
        var myControl=  {
                create: function(tp_inst, obj, unit, val, min, max, step){
                        $('<input class="ui-timepicker-input" value="'+val+'" style="width:50%">')
                                .appendTo(obj)
                                .spinner({
                                        min: min,
                                        max: max,
                                        step: step,
                                        change: function(e,ui){ // key events
                                                        // don't call if api was used and not key press
                                                        if(e.originalEvent !== undefined)
                                                                tp_inst._onTimeChange();
                                                        tp_inst._onSelectHandler();
                                                },
                                        spin: function(e,ui){ // spin events
                                                        tp_inst.control.value(tp_inst, obj, unit, ui.value);
                                                        tp_inst._onTimeChange();
                                                        tp_inst._onSelectHandler();
                                                }
                                });
                        return obj;
                },
                options: function(tp_inst, obj, unit, opts, val){
                        if(typeof(opts) == 'string' && val !== undefined)
                                return obj.find('.ui-timepicker-input').spinner(opts, val);
                        return obj.find('.ui-timepicker-input').spinner(opts);
                },
                value: function(tp_inst, obj, unit, val){
                        if(val !== undefined)
                                return obj.find('.ui-timepicker-input').spinner('value', val);
                        return obj.find('.ui-timepicker-input').spinner('value');
                }
        };

        $('#dateTime1').timepicker({
                controlType: myControl
        });
        $('#dateTime2').timepicker({
                controlType: myControl
        });
        </script>
    </body>
</html>
