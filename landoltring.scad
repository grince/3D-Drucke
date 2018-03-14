// rocket_d=80;                                // 3cm wide;
// rocket_r = rocket_d / 2;
// rocket_h = 10;                            // 10cm tall
// cylinder(d=rocket_d, h=rocket_h);

//height_c = 10;
//linear_extrude(height=height_c)
//circle( r = 80, $fn=300);




module landoltring(height, outer_radius) {
    difference() {
        cylinder(h = height, r = outer_radius, $fn=300);
        translate([0,0,-1])
            cylinder(h = height + 2, r = ((outer_radius*3)/5), $fn=300);
            translate([(((outer_radius*3)/5)-10),-(outer_radius/5),0])
            cube([(((outer_radius*5)/3)*2),((outer_radius/5)*2),height]);
        }
   }
    
    
    landoltring(5,40);
