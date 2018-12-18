$fn=24;

n = 5;
step = 25;

z = 0;

//cube([step*n, step, 2]);
union() {
for(x = [0 : step : step*n-1])
    translate([x+step/2, step/2, 1.999]) cylinder(d=7, h=10);

minkowski() {
difference()
{
    cube([step*n, step, 2]);

    d = (step*n) *1.5;
    translate([step*n/2, (d/2) + 5, -0.5]) cylinder($fn=6, h=3, d=d);
    translate([step*n/2, (-d/2) + step - 5, -0.5]) cylinder($fn=6, h=3, d=d);
}

cylinder(r=3, h=2);
}
}
//translate([step/2,step/4,1.999]) cube([step*(n-1), step/2, 2]);
//for(x = [0 : step : step*n-1])
//    translate([x+step/2, step/2, 1.999]) cylinder(d=20, h=2);