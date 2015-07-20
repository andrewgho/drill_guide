// drill_guide.scad - 
// Andrew Ho (andrew@zeuscat.com)
//
// Center and guide an 11/16" drill bit to drill a coaxial hole onto the 
// end of a 3/4" hardwood dowel.
//
// https://www.shapeways.com/product/2CF7BEVJN/

total_height = 1 + (3/4);
shaft_height = 1;
inner_diameter = 3/4;
hull_thickness = 1/8;

// https://www.boltdepot.com/fastener-information/Wood-Screws/Wood-Screw-Pilot-Hole-Size.aspx
hole_diameter = 11/64;

module cylinder360(height, diameter) {
  cylinder(h = height, d = diameter, $fn = 360);
}

difference() {
  union() {
    cylinder360(shaft_height + hull_thickness, inner_diameter + (hull_thickness * 2));
    cylinder360(total_height, hole_diameter + (hull_thickness * 2));
  }
  union() {
    cylinder360(total_height, hole_diameter);
    cylinder360(shaft_height, inner_diameter);
  }
}
