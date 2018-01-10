
module n(){

    difference(){
        cube([40,40,10], center=true);
        translate([0,-10,0]) cube([20,40,20], center=true);
        translate([21,21,0]) rotate(45) cube([20,20,20], center=true);
    }
}

module u(){
    rotate(180) n();
}

module x(){
    difference(){
        cube([40,40,10], center=true);
        translate([0,21,0]) rotate(45) cube([20,20,20], center=true);
        translate([0,-21,0]) rotate(45) cube([20,20,20], center=true);
        translate([21,0,0]) rotate(45) cube([20,20,20], center=true);
        translate([-21,0,0]) rotate(45) cube([20,20,20], center=true);
    }
}

module e(){
    difference(){
        cube([40,40,10], center=true);
        translate([10,7.5,0]) cube([40,5,20], center=true);
        translate([10,-7.5,0]) cube([40,5,20], center=true);
    }
}

module o(){
    difference(){
        cube([40,40,10], center=true);
        cube([20,20,20], center=true);
        translate([21,21,0]) rotate(45) cube([20,20,20], center=true);
        translate([-21,-21,0]) rotate(45) cube([20,20,20], center=true);

    }   
}

translate([000,0,0]) n();
translate([050,0,0]) u();
translate([100,0,0]) x();
translate([150,0,0]) e();
translate([200,0,0]) o();
