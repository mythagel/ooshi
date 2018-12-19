$fn=48;



module ooshi() {
    difference() {
        union() {
            difference() {
                translate([2, 2, 0]) minkowski() {
                    cube([25-(2*2), 25-(2*2), 1]);
                    sphere(r=2);
                }
                translate([0,0,-4]) cube([25, 25, 4]);
            }
            
            translate([25/2, 25/2, 10.999]) cylinder(r1=7/2, r2=5/2, h=1);
            translate([25/2, 25/2, 1.999]) cylinder(d=7, h=10-1);
            
            //
            translate([-3, 25/2, 0]) cylinder(r=5, h=2);
            translate([25/2, 25+3, 0]) cylinder(r=5, h=2);
        }

        translate([25-3, 25/2, 0]) cylinder(r=5.25, h=1.5);
        translate([25/2, 3, 0]) cylinder(r=5.25, h=1.5);
    }
}

ooshi();
translate([25,0,0]) ooshi();