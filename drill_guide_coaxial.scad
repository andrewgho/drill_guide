// drill_guide_coaxial.scad - 3/4" dowel coaxial hole drill guide
// Andrew Ho (andrew@zeuscat.com)
//
// Center and guide an 11/64" drill bit to drill a coaxial hole for a
// 1/4" shank wood screw into the end of a 3/4" hardwood dowel.
//
// Shapeways part link:
// http://www.shapeways.com/product/2CF7BEVJN/3-4-quot-dowel-drill-guide

include <dimensions.scad>;

// Hole diameter of 11/64" is for 1/4" shank wood screw in hardwood:
// http://www.wlfuller.com/html/wood_screw_chart.html
hole_diameter = 11/64;

// Prevent edge rendering artifacts in OpenSCAD preview mode
extra = 1/64;

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
    translate([0, 0, -extra])
      cylinder360(total_height + (extra * 2), hole_diameter);
    translate([0, 0, -extra])
    cylinder360(shaft_height + extra, inner_diameter);
  }
}
