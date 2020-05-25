 #disable cas when engines running- otherwise we are overflooded with error messages in the console
 #controlling SAS
 call_casdisable = func {

 if ( getprop("/rotors/main/rpm")> 80.0)

   
	 
	 {
	  
	  setprop("/controls/flight/fcs/switches/cas", 0);
	  setprop("/controls/flight/fcs/gains/sas/debug", 1);
	  setprop("/controls/flight/fcs/gains/sas/roll", 0.01);
	  setprop("/controls/flight/fcs/gains/sas/pitch", -0.01);
	  setprop("/controls/flight/fcs/gains/sas/yaw", 0.01);
	  
	  } else {

            setprop("/controls/flight/fcs/switches/cas", 1.0);
          setprop("/controls/flight/fcs/gains/sas/debug", 0);
	  setprop("/controls/flight/fcs/gains/sas/roll", 00);
	  setprop("/controls/flight/fcs/gains/sas/pitch", 0);
	  setprop("/controls/flight/fcs/gains/sas/yaw", 0);
           
          }
	  
 

settimer(call_casdisable, 0.1);   

}

 

init = func {

   settimer(call_casdisable, 0.1);

}



init();
	  


         

        