//Base
scale([1,1,1])
difference()
{
    minkowski()
    {
      cube([80,80,1]);
      translate([30,30,0])
        cylinder(1,30,30); translate([5,5,5])
            sphere(r=5);
      $fn=100;
    }
    translate([75,150,10.5])              //<-------
    {
    rotate([90,0,0])
    cylinder(40,3,3);
    }
    $fn=100;
}
//Column
scale([1,1,1])
difference()
{
    translate([75,90,0])
        cylinder(160,25,25);
        $fn=250;
    translate([75,113.5,0])             //<-------
        cylinder(175,3,3);
}
//Attach Point
scale([1,1,1])
translate([75,90,160])
{
    difference()
        {
        cylinder(15,25,25);
        translate([-10,-10,0])
            cylinder(15,5,5);
        translate([-10,10,0])
            cylinder(15,5,5);
        translate([10,-10,0])
            cylinder(15,5,5);
        translate([10,10,0])
            cylinder(15,5,5);
        translate([0,23.5,0])           //<-------
            cylinder(175,3,3);
        $fn=250;
        }
}