// dimensions.scad - configurable dimensions for 3/4" dowel drill guide
// Andrew Ho (andrew@zeuscat.com)
//
// This file contains configurable dimensions for a jig designed to
// center and guide an 11/16" drill bit to drill a coaxial hole for a
// 1/4" drill bit into the end of a 3/4" hardwood dowel.
//
// Hole diameter of 11/16" is for 1/4" wood screw in hardwood:
// https://www.boltdepot.com/fastener-information/Wood-Screws/Wood-Screw-Pilot-Hole-Size.aspx

total_height = 1 + (3/4);  // Height of dowel entry shaft plus drill guide
shaft_height = 1;          // Just how far the dowel enters into the shaft
inner_diameter = 3/4;      // Diameter of dowel that will enter the shaft
hole_diameter = 11/64;     // Diameter of drill bit
hull_thickness = 1/8;      // Size of thinnest wall

// Interpolated values
double_hull_thickness = hull_thickness * 2;
outer_diameter = inner_diameter + double_hull_thickness;

// Draw cylinder with 1° segments in preview mode
module cylinder360(height, diameter) {
  cylinder(h = height, d = diameter, $fn = 360);
}
