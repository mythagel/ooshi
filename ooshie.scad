$fn=48;



module ooshi() {
    apothem = 25 * cos((3.141592653/6)* 57.2958);
    difference() {
        union() {
            cylinder(r1=25/2, r2=23/2, h=2, $fn=6);
            
            translate([0, 0, 10.999]) cylinder(r1=7/2, r2=5/2, h=1);
            translate([0, 0, 1.999]) cylinder(d=7, h=10-1);
        }
        
        rotate([0,0,(360/12) * 1]) translate([-apothem/2,0,-0.5]) rotate([0,0,60]) cylinder(r=4, h=3, $fn=3);
        rotate([0,0,(360/12) * 9]) translate([-apothem/2,0,-0.5]) rotate([0,0,60]) cylinder(r=4, h=3, $fn=3);
        rotate([0,0,(360/12) * 5]) translate([-apothem/2,0,-0.5]) rotate([0,0,60]) cylinder(r=4, h=3, $fn=3);
    }
    
    rotate([0,0,(360/12) * 7]) translate([-apothem/2,0,0]) cylinder(r=3.5, h=2, $fn=3);
    rotate([0,0,(360/12) * 3]) translate([-apothem/2,0,0]) cylinder(r=3.5, h=2, $fn=3);
    rotate([0,0,(360/12) * 11]) translate([-apothem/2,0,0]) cylinder(r=3.5, h=2, $fn=3);
}

a = 25 * cos((3.141592653/6)* 57.2958);
ooshi();
translate([0,a*1,0]) ooshi();
translate([0,a*2,0]) ooshi();
translate([0,a*3,0]) ooshi();
translate([0,a*4,0]) ooshi();

translate([18.751,a*0.5,0]) ooshi();
translate([18.751,a*1.5,0]) ooshi();
translate([18.751,a*2.5,0]) ooshi();
translate([18.751,a*3.5,0]) ooshi();
translate([18.751,a*4.5,0]) ooshi();