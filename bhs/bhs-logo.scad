include <phoenix.scad>;

phoenix(1100, 20);

module socle(h) {
    difference(){
        difference() {
            $fn=100;
            cylinder(h=h, r=335,center=true); 
            cylinder(h=h+10, r=320,center=true); 
        }
        translate([15,-340,0])cube(size=[54,50,50], center=true);
        translate([10,200,0])cube(size=[800,400,50], center=true);
        
    }
    difference() {
            $fn=100;
            cylinder(h=h, r=163,center=true); 
            cylinder(h=h+10, r=153,center=true);
       translate([0,100,0])cube(size=[400,200,50], center=true);
        
 
        }
    difference() {
            $fn=100;
            cylinder(h=h, r=194,center=true); 
            cylinder(h=h+10, r=182,center=true); 
            translate([0,-100,0])cube(size=[400,200,50], center=true);
            translate([-100,225,0])cube(size=[200,100,50], center=true);

        }

}

translate([10,203,10])difference() {
        $fn=100;
        cylinder(h=20, r=14,center=true); 
        cylinder(h=30, r=6,center=true); 
    }

translate([0,0,6])socle(15);    
