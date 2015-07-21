# Makefile - create STL files from OpenSCAD source
# Andrew Ho (andrew@zeuscat.com)

OPENSCAD = /Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD
TARGETS = drill_guide.stl support_strut.stl

all: $(TARGETS)

drill_guide.stl: drill_guide.scad dimensions.scad Makefile
	$(OPENSCAD) -o drill_guide.stl drill_guide.scad

support_strut.stl: support_strut.scad dimensions.scad Makefile
	$(OPENSCAD) -o support_strut.stl support_strut.scad

clean:
	@rm -f $(TARGETS)
