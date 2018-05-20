

module hexaPlate(r=100,h=10) {
 union(){
    difference(){
        cylinder(h=h, r=r, center=true, $fn=6);
        for(i=[0:5]) {
        rotate([0,0,60*i])translate([r-r/12,0,0])rotate([0,0,45])cylinder(h=2*h, r=r/6,    center=true, $fn=4);
        }
    }
    for(i=[0:5]) {
        rotate([0,0,60*i])translate([r-(r/4)/cos(30),0,0])cylinder(h=h, r=r/4,    center=true, $fn=80);
    }
 }
}

module hexaRing(r=100,h=10,w=15) {
    difference(){
        hexaPlate(r=r,h=h);
        hexaPlate(r=r-w,h=h+10);
    }
}


union(){
    hexaRing(r=100,h=10,w=20);
    hexaRing(r=60,h=10,w=20);
    translate([70,0,0])cube(size=[30,20,10], center=true);
}

