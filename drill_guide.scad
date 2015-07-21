// drill_guide.scad - main portion of 3/4" dowel drill guide
// Andrew Ho (andrew@zeuscat.com)
//
// This file contains the main drill guide portion of a jig designed to
// center and guide an 11/16" drill bit to drill a coaxial hole for a
// 1/4" drill bit into the end of a 3/4" hardwood dowel.
//
// Shapeways part link:
// http://www.shapeways.com/product/2CF7BEVJN/3-4-quot-dowel-drill-guide

include <dimensions.scad>;

difference() {
  // Squared off bottom, rounded top, drill guide extension
  union() {
    translate([-outer_diameter / 2, 0, 0])
      cube([outer_diameter, outer_diameter / 2, shaft_height + hull_thickness]);
    cylinder360(shaft_height + hull_thickness, outer_diameter);
    cylinder360(total_height, hole_diameter + double_hull_thickness);
  }

  // Drill through hole, shaft for dowel
  union() {
    cylinder360(total_height, hole_diameter);
    cylinder360(shaft_height, inner_diameter);
  }
}
