//Threading
// hRadius : radius of the stock cylinder
// hLength : length of the stock cylinder
// hTwist  : amount of twist (in degrees)
// hN      : number of sectors
// hGap    : size of clearance gap for sliding surfaces
module helicoid(hRadius,hLength,hTwist,hN,hGap)
{
 hSlices=10*hLength;
 linear_extrude(height=hLength,twist = hTwist,center=true,slices=hSlices)
 projection(cut=true)
 {
  for(i=[1:hN])
  {
   rotate(a=[0,0,(360*i)/hN])
    translate([-hGap,-hGap/2,-1])
     cube([hRadius+hGap,hGap,2]);    
  }
 }
}

//Gear
//n_teeth: No. of tooth
//d_gear: Diameter of Gear
//h_gear: Height of Gear
//w_teeth: Wtdth of teeth
//l_teeth: Height of teeth


module Gear( n_teeth,d_gear,h_gear,w_teeth,l_teeth ) {
    union()
  {
    cylinder(d=d_gear,h=h_gear,$fn=100);
     for(i=[0:n_teeth-1])
      {
        rotate([0,0,i*(360/n_teeth)]) 
        translate([d_gear/2,0,0]) 
       hull(){ 
            translate([l_teeth,0,0]) 
           cylinder(d=0.5,h=h_gear,$fn=100);
            translate([-0.1,-w_teeth/2,0]) 
           cube([0.1,w_teeth,h_gear]);
            }
        } 
    }
}


rotate([90,0,0])

 difference()
 {
   color("Gainsboro")
   union()
  {  
   translate([0,0,87])  
   cylinder(5,18/2,18/2);
   
       //gear section
     Gear(13,24,25,3,3);
     
      translate([0,0,25])
     cylinder(20,21/2,21/2);
   
   //tapered part
      translate([0,0,45])
      cylinder(42,27/2,21/2);
    
   //BSW
     translate([0,0,92])
     cylinder(25,23.4/2,23.4/2);
      translate([0,0,105])
      helicoid(25.4/2,25,2*360,4,10);
   
   //CD
     translate([0,0,117])
     cylinder(18,23.2/2,23.2/2);
   }
   color("DimGrey")
   cylinder(4,2.5,0);
  }
 
