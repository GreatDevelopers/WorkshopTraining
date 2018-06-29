

//prism module
module prism(l, w, h){
       polyhedron(
               points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
               faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
               );
           }

color("Silver")
difference()
{
 //Main block   
 cube([70,60,40]);

  translate([-1,10,41])
  //V cutout
   union()
      { 
         rotate([-45,0,0])
         prism(72,29,29);
         
        translate([0,18,-23])
         cube([72,5,5]);
       }
    //Square Block cut out1
    translate([-1,-1,15])
    cube([72,11,10]);
    //Square Block cut out2
    translate([-1,50,15])
    cube([72,11,10]);
 
}
