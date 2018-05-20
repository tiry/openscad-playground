/*union(){
    difference(){
        translate([-11,0,0])import("Trident_Pendent.stl");
        translate([-0.5,-0.11,0])cube(1);
    }
    translate([-0.3,-0.3,0])cube(0.6);
    translate([0,0.3,0.3])rotate([0,90,0])cylinder(r=0.3, h=0.6, $fn=30, center=true);
}*/


union(){
    difference(){
        translate([-11,0,0])import("Trident_Pendent.stl");
        translate([-0.5,-0.11,0])cube(1);
    }
    difference(){
        union(){
            translate([-0.4,-0.3,0])cube([0.8,0.4,0.6]);
            translate([0,0.15,0.3])rotate([0,00,0])cylinder(r=0.4, h=0.6, $fn=30, center=true);
        }
        translate([0,0.15,0.3])rotate([0,00,0])cylinder(r=0.2, h=1, $fn=30, center=true);
    }

}