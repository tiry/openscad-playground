/* text("Alana", font = "Colourbars:style=Bold Italic", size="25",spacing=0.9);
 translate([0,15,0])text("Alana", font = "Mail Ray Stuff:style=Bold Italic", size="25",spacing=0.9);
  translate([0,45,0])text("Alana", font = "Sloe Gin Rickey:style=Bold Italic", size="25");
 translate([8,60,0])rotate([0,180,0])text("A", font = "Mail Ray Stuff:style=Bold Italic", size="25");
 translate([6,60,0])text("lana", font = "Sloe Gin Rickey:style=Bold Italic", size="25");
 */
 
 $fn=60;
 translate([0,0,0])linear_extrude(height=2, center=true)text("Alana", font = "Minya Nouvelle:style=Bold Italic", size="25",spacing=0.80);

translate([1,1,0])
difference(){
    cylinder(r=1.5,h=2, center=true, $fn=20);
    cylinder(r=0.7,h=3, center=true, $fn=20);
}