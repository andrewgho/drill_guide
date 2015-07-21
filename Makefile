# Makefile - create STL files from OpenSCAD source
# Andrew Ho (andrew@zeuscat.com)

OPENSCAD = /Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD
TARGETS = drill_guide_coaxial.stl drill_guide_side.stl support_strut.stl

all: $(TARGETS)

drill_guide_coaxial.stl: drill_guide_coaxial.scad dimensions.scad Makefile
	$(OPENSCAD) -o drill_guide_coaxial.stl drill_guide_coaxial.scad

drill_guide_side.stl: drill_guide_side.scad dimensions.scad Makefile
	$(OPENSCAD) -o drill_guide_side.stl drill_guide_side.scad

support_strut.stl: support_strut.scad dimensions.scad Makefile
	$(OPENSCAD) -o support_strut.stl support_strut.scad

clean:
	@rm -f $(TARGETS)
