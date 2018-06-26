

rotate([90,0,0])

 difference()
 {
   color("Gainsboro")
   union()
  {  
   translate([0,0,87])  
   cylinder(5,18/2,18/2);
   
       //gear section
     
     
         cylinder(25,30/2,30/2);
  
     translate([0,0,25])
     cylinder(20,21/2,21/2);
   
   //tapered part
      translate([0,0,45])
      cylinder(42,27/2,21/2);
    
   //BSW
     
   
     translate([0,0,92])
     cylinder(25,25.4/2,25.4/2);
   
   //CD
     translate([0,0,117])
     cylinder(18,23.2/2,23.2/2);
   }
   color("DimGrey")
   cylinder(4,2.5,0);
  }
 