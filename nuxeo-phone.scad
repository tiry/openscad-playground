
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

module nuxeo(){
    translate([-100,0,0]) n();
    translate([-050,0,0]) u();
    translate([ 000,0,0]) x();
    translate([ 050,0,0]) e();
    translate([ 100,0,0]) o();
}

module nuxeo_2D(){
  intersection() {
      nuxeo();
      square(300, center=true);
  }  
}

//for (a =[0:10:360]) {
//    translate([0,0,a/3])rotate(a)nuxeo();
//}

//linear_extrude(height = 100, center = true, convexity = 10, twist = 0, $fn = 10)
//nuxeo_2D();

//nuxeo();
//translate([-22,-15,-2.5])cube([20,5,5], center=true);
//translate([22,-15,-2.5])cube([20,5,5], center=true);
//translate([-75,0,-2.5])cube([20,5,5], center=true);
//translate([+75,0,-2.5])cube([20,5,5], center=true);

difference(){
    translate([100,-135,0])import("/home/tiry/Downloads/pixelcase.stl", convexity=3);
   translate([40,0,-5])rotate([0,180,28])scale([0.4,0.4,1])nuxeo();
}
