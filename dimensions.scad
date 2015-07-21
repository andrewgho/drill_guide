// dimensions.scad - configurable dimensions for 3/4" dowel drill guides
// Andrew Ho (andrew@zeuscat.com)
//
// This file contains configurable dimensions for a jig designed to
// center and guide an 11/64" drill bit to drill a coaxial hole for a
// 1/4" shank wood screw into the end of a 3/4" hardwood dowel, and a
// 1/8" drill bit to drill a sideways hole for a #8 wood screw into the
// side of the dowel.

guide_height = 3/4;      // Height of drill guides
shaft_height = 1;        // Just how far the dowel enters into the shaft
inner_diameter = 3/4;    // Diameter of dowel that will enter the shaft
hull_thickness = 1/8;    // Size of thinnest wall

// Interpolated values
total_height = guide_height + shaft_height;
double_hull_thickness = hull_thickness * 2;
outer_diameter = inner_diameter + double_hull_thickness;

// Draw cylinder with 1° segments in preview mode
module cylinder360(height, diameter) {
  cylinder(h = height, d = diameter, $fn = 360);
}
