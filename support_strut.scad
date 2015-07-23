// support_strut.scad - support strut for 3/4" dowel drill guide
// Andrew Ho (andrew@zeuscat.com)
//
// This file contains a saddle-shaped support strut allowing a 3/4" dowel
// to be clamped along with the drill guide in drill_guide.scad.

include <dimensions.scad>;

// Prevent edge rendering artifacts in OpenSCAD preview mode
extra = 1/64;

difference() {
  // Squared off bottom, rounded top, drill guide extension
  union() {
    translate([-outer_diameter / 2, 0, 0])
      cube([outer_diameter, outer_diameter / 2, shaft_height]);
    cylinder360(shaft_height, outer_diameter);
  }

  // Shaft for dowel, cut off top
  union() {
    translate([0, 0, -extra])
      cylinder360(shaft_height + (extra * 2), inner_diameter);
    translate([-outer_diameter / 2, -outer_diameter / 2, -extra])
      cube([outer_diameter, outer_diameter / 2, shaft_height + (extra * 2)]);
  }
}
