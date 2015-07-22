// drill_guide_side.scad - 3/4" dowel side hole drill guide
// Andrew Ho (andrew@zeuscat.com)
//
// Center and guide an 1/8" drill bit to drill a hole for a #8 wood screw
// into the side of a 3/4" hardwood dowel.

include <dimensions.scad>;

// Hole diameter of 1/8" is for #8 wood screw in hardwood:
// http://www.wlfuller.com/html/wood_screw_chart.html
hole_diameter = 1/8;

difference() {
  // Squared off bottom and far side, rounded top, drill guide extension
  union() {
    translate([-outer_diameter / 2, 0, 0])
      cube([outer_diameter, outer_diameter / 2, shaft_height]);
    translate([-outer_diameter / 2, -outer_diameter / 2, 0])
      cube([outer_diameter / 2, outer_diameter, shaft_height]);
    cylinder360(shaft_height, outer_diameter);
    translate([0, 0, shaft_height / 2])
    rotate([0, 90, 0])
      cylinder360((inner_diameter / 2) + guide_height,
                  hole_diameter + double_hull_thickness);
  }

  // Lop off area for easier printing, drill through hole, shaft for dowel
  union() {
    rotate([0, 90, 0])
    translate([-outer_diameter,
               (-outer_diameter / 2) - ((hole_diameter / 2) + hull_thickness),
               0])
      difference() {
        translate([-hull_thickness, 0, 0])
          cube([outer_diameter + (2 * hull_thickness),
                outer_diameter,
                shaft_height]);
        translate([outer_diameter / 2, outer_diameter, 0])
          cylinder360(shaft_height, outer_diameter);
      }
    translate([0, 0, shaft_height / 2])
    rotate([0, 90, 0])
      cylinder360((inner_diameter / 2) + guide_height, hole_diameter);
    cylinder360(shaft_height, inner_diameter);
  }
}
